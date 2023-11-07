import 'package:fluent_ui/fluent_ui.dart';
import 'package:sky_printing_admin/utils/services/hive/hive.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late IO.Socket socket;
  final TextEditingController _controller = TextEditingController();
  final msgList = <String>[];
  final MainBoxMixin mainBoxMixin = MainBoxMixin();

  @override
  void initState() {
    super.initState();
    socket = IO.io(
      'http://localhost:3000',
      IO.OptionBuilder()
          .setAuth({
            "token": mainBoxMixin.getData(MainBoxKeys.token),
          })
          .setTransports(['websocket'])
          .disableAutoConnect()
          .enableForceNew()
          .setPath('/socket')
          .build(),
    );
    print('STATUS\n${socket.connected}');
  }

  @override
  void dispose() {
    socket.disconnect();
    socket.dispose();
    super.dispose();
  }

  void joinRoom() {
    const String room = 'room1';
    socket.emit('join', room);
  }

  void connect() {
    print('connecting...');
    if (!socket.connected) {
      socket.connect();
    }
    socket.onConnect((_) {
      print("Connection established");
    });
    print('STATUS\n${socket.connected}');
  }

  void disconnect() {
    socket.disconnect();
  }

  void sendMsg(String msg) {
    socket.emit('message', {
      'room': 'room1',
      'message': msg,
    });
    socket.on('message', (data) {
      setState(() {
        // check if previous message is same as current message
        if (msgList.isNotEmpty) {
          if (msgList.last != data['message']) {
            msgList.add(data['message']);
          }
        } else {
          msgList.add(data['message']);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: const PageHeader(
        title: Text('Order'),
      ),
      children: [
        Center(
          child: Text(msgList.toString()),
        ),
        Center(
          child: FilledButton(onPressed: joinRoom, child: const Text('Join')),
        ),
        Center(
          child: FilledButton(onPressed: connect, child: const Text('Connect')),
        ),
        Center(
          child: TextFormBox(
            controller: _controller,
          ),
        ),
        Center(
          child: FilledButton(
              child: const Text('Send'), onPressed: () => sendMsg(_controller.text)),
        ),
        Center(
          child: FilledButton(onPressed: disconnect, child: const Text('Disconnect')),
        ),
      ],
    );
  }
}
