# Sky Printing

### Concepts

This concept we've design early.

![Alt text](https://raw.githubusercontent.com/Zenta-Code/printilan/main/images/base-concepts.png "Base Concepts")

### Build

To build all apps and packages, run the following command:

```
git clone https://github.com/Zenta-Code/printilan.git
cd my-turborepo
pnpm build
cd apps/mobile
flutter build apk
```

### Develop

To develop all apps and packages, run the following command:

```
git clone https://github.com/Zenta-Code/printilan.git
cd my-turborepo
pnpm i
cd apps/mobile
flutter pub get
flutter run $device
new terminal
pnpm dev
```
