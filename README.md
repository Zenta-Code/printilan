# Sky Printing
> Sky Printing is a cutting-edge mobile app that introduces an automatic printing system with features like printing, binding, and photo printing. This mobile app can simplifying employee tasks and it enhances store efficiency without the need for extra time and effort. Additionally, it provides remote accessibility with ensuring customer convenience in managing their printing needs effortlessly.

## Concepts
This concept we've design early :

![Alt text](https://raw.githubusercontent.com/Zenta-Code/sky_printing/dc5499dfc3426b2e39b4501d9a05bda69157d479/images/base-concepts.svg "Base Concepts")

## Features
- Printing : Easily print documents both color and non-color (black and white).
- Binding : Seamlessly bind materials.
- Photo Printing : Conveniently print photos with various size.
- History : Track past printing activities.
- EProfile : Manage personal information.
- Wallet (Payment) : Handle transactions effortlessly.

## Tech
Sky Printing uses a number of open source projects to work properly :
- [Dart](https://dart.dev/get-dart/)
Dart is a versatile, client-optimized programming language, developed by Google, known for building cross-platform mobile, web, and desktop applications.
- [TypeScript](https://www.npmjs.com/package/typescript) 
TypeScript is a superset of JavaScript, offering static typing and enhanced tooling for building scalable and maintainable web applications.
- [C++](https://code.visualstudio.com/docs/languages/cpp) 
C++ is a powerful, high-performance programming language widely used for system/application development, game development, and performance-critical applications.
- [CMake](https://cmake.org/cmake/help/latest/guide/tutorial/Installing%20and%20Testing.html) 
CMake is a cross-platform build system generator, facilitating the management of the build process for software projects across various platforms and environments.
- [Swift](https://www.swift.org/getting-started/) 
Swift is a fast and modern programming language developed by Apple, designed for building iOS, macOS, watchOS, and tvOS applications.
- [JavaScript](https://code.visualstudio.com/docs/languages/javascript) 
JavaScript is a dynamic scripting language widely used for web development, enabling interactive and dynamic content creation within web browsers.

## Requirement

## User Interface
### Splash Screen
![alt text](?raw=true)
### Dashboard
![alt text](?raw=true)
### History
![alt text](?raw=true)
### Wallet
![alt text](?raw=true)
### EProfile
![alt text](?raw=true)

## Structure
📦apps
 ┣ 📂api
 ┃ ┣ 📂dist
 ┃ ┃ ┣ 📂controller
 ┃ ┃ ┃ ┣ 📜bundle.d.ts
 ┃ ┃ ┃ ┣ 📜bundle.d.ts.map
 ┃ ┃ ┃ ┣ 📜bundle.js
 ┃ ┃ ┃ ┣ 📜document.d.ts
 ┃ ┃ ┃ ┣ 📜document.d.ts.map
 ┃ ┃ ┃ ┣ 📜document.js
 ┃ ┃ ┃ ┣ 📜order.d.ts
 ┃ ┃ ┃ ┣ 📜order.d.ts.map
 ┃ ┃ ┃ ┣ 📜order.js
 ┃ ┃ ┃ ┣ 📜print.d.ts
 ┃ ┃ ┃ ┣ 📜print.d.ts.map
 ┃ ┃ ┃ ┣ 📜print.js
 ┃ ┃ ┃ ┣ 📜store.d.ts
 ┃ ┃ ┃ ┣ 📜store.d.ts.map
 ┃ ┃ ┃ ┣ 📜store.js
 ┃ ┃ ┃ ┣ 📜user.d.ts
 ┃ ┃ ┃ ┣ 📜user.d.ts.map
 ┃ ┃ ┃ ┗ 📜user.js
 ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┣ 📜sanitzer.d.ts
 ┃ ┃ ┃ ┣ 📜sanitzer.d.ts.map
 ┃ ┃ ┃ ┗ 📜sanitzer.js
 ┃ ┃ ┣ 📂middleware
 ┃ ┃ ┃ ┣ 📜auth.d.ts
 ┃ ┃ ┃ ┣ 📜auth.d.ts.map
 ┃ ┃ ┃ ┗ 📜auth.js
 ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┣ 📜bundle.d.ts
 ┃ ┃ ┃ ┣ 📜bundle.d.ts.map
 ┃ ┃ ┃ ┣ 📜bundle.js
 ┃ ┃ ┃ ┣ 📜document.d.ts
 ┃ ┃ ┃ ┣ 📜document.d.ts.map
 ┃ ┃ ┃ ┣ 📜document.js
 ┃ ┃ ┃ ┣ 📜order.d.ts
 ┃ ┃ ┃ ┣ 📜order.d.ts.map
 ┃ ┃ ┃ ┣ 📜order.js
 ┃ ┃ ┃ ┣ 📜print.d.ts
 ┃ ┃ ┃ ┣ 📜print.d.ts.map
 ┃ ┃ ┃ ┣ 📜print.js
 ┃ ┃ ┃ ┣ 📜store.d.ts
 ┃ ┃ ┃ ┣ 📜store.d.ts.map
 ┃ ┃ ┃ ┣ 📜store.js
 ┃ ┃ ┃ ┣ 📜user.d.ts
 ┃ ┃ ┃ ┣ 📜user.d.ts.map
 ┃ ┃ ┃ ┗ 📜user.js
 ┃ ┃ ┣ 📂seeders
 ┃ ┃ ┃ ┣ 📜bundle.d.ts
 ┃ ┃ ┃ ┣ 📜bundle.d.ts.map
 ┃ ┃ ┃ ┣ 📜bundle.js
 ┃ ┃ ┃ ┣ 📜print.d.ts
 ┃ ┃ ┃ ┣ 📜print.d.ts.map
 ┃ ┃ ┃ ┣ 📜print.js
 ┃ ┃ ┃ ┣ 📜seeder.d.ts
 ┃ ┃ ┃ ┣ 📜seeder.d.ts.map
 ┃ ┃ ┃ ┣ 📜seeder.js
 ┃ ┃ ┃ ┣ 📜store.d.ts
 ┃ ┃ ┃ ┣ 📜store.d.ts.map
 ┃ ┃ ┃ ┣ 📜store.js
 ┃ ┃ ┃ ┣ 📜user.d.ts
 ┃ ┃ ┃ ┣ 📜user.d.ts.map
 ┃ ┃ ┃ ┗ 📜user.js
 ┃ ┃ ┣ 📂types
 ┃ ┃ ┃ ┣ 📜bundle.d.ts
 ┃ ┃ ┃ ┣ 📜bundle.d.ts.map
 ┃ ┃ ┃ ┣ 📜bundle.js
 ┃ ┃ ┃ ┣ 📜document.d.ts
 ┃ ┃ ┃ ┣ 📜document.d.ts.map
 ┃ ┃ ┃ ┣ 📜document.js
 ┃ ┃ ┃ ┣ 📜order.d.ts
 ┃ ┃ ┃ ┣ 📜order.d.ts.map
 ┃ ┃ ┃ ┣ 📜order.js
 ┃ ┃ ┃ ┣ 📜print.d.ts
 ┃ ┃ ┃ ┣ 📜print.d.ts.map
 ┃ ┃ ┃ ┣ 📜print.js
 ┃ ┃ ┃ ┣ 📜socket.d.ts
 ┃ ┃ ┃ ┣ 📜socket.d.ts.map
 ┃ ┃ ┃ ┣ 📜socket.js
 ┃ ┃ ┃ ┣ 📜store.d.ts
 ┃ ┃ ┃ ┣ 📜store.d.ts.map
 ┃ ┃ ┃ ┣ 📜store.js
 ┃ ┃ ┃ ┣ 📜user.d.ts
 ┃ ┃ ┃ ┣ 📜user.d.ts.map
 ┃ ┃ ┃ ┗ 📜user.js
 ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┣ 📜index.d.ts.map
 ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┣ 📜server.d.ts
 ┃ ┃ ┣ 📜server.d.ts.map
 ┃ ┃ ┣ 📜server.js
 ┃ ┃ ┣ 📜socket.d.ts
 ┃ ┃ ┣ 📜socket.d.ts.map
 ┃ ┃ ┗ 📜socket.js
 ┃ ┣ 📂node_modules
 ┃ ┃ ┣ 📂.bin
 ┃ ┃ ┃ ┣ 📜acorn
 ┃ ┃ ┃ ┣ 📜acorn.CMD
 ┃ ┃ ┃ ┣ 📜acorn.ps1
 ┃ ┃ ┃ ┣ 📜conc
 ┃ ┃ ┃ ┣ 📜conc.CMD
 ┃ ┃ ┃ ┣ 📜conc.ps1
 ┃ ┃ ┃ ┣ 📜concurrently
 ┃ ┃ ┃ ┣ 📜concurrently.CMD
 ┃ ┃ ┃ ┣ 📜concurrently.ps1
 ┃ ┃ ┃ ┣ 📜esbuild
 ┃ ┃ ┃ ┣ 📜esbuild.CMD
 ┃ ┃ ┃ ┣ 📜esbuild.ps1
 ┃ ┃ ┃ ┣ 📜eslint
 ┃ ┃ ┃ ┣ 📜eslint.CMD
 ┃ ┃ ┃ ┣ 📜eslint.ps1
 ┃ ┃ ┃ ┣ 📜nodemon
 ┃ ┃ ┃ ┣ 📜nodemon.CMD
 ┃ ┃ ┃ ┣ 📜nodemon.ps1
 ┃ ┃ ┃ ┣ 📜tsc
 ┃ ┃ ┃ ┣ 📜tsc.CMD
 ┃ ┃ ┃ ┣ 📜tsc.ps1
 ┃ ┃ ┃ ┣ 📜tsserver
 ┃ ┃ ┃ ┣ 📜tsserver.CMD
 ┃ ┃ ┃ ┗ 📜tsserver.ps1
 ┃ ┃ ┣ 📂@prisma
 ┃ ┃ ┃ ┗ 📂client
 ┃ ┃ ┃ ┃ ┣ 📂generator-build
 ┃ ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📂runtime
 ┃ ┃ ┃ ┃ ┃ ┣ 📜binary.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜binary.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜edge-esm.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜edge.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index-browser.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index-browser.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜library.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜library.js
 ┃ ┃ ┃ ┃ ┣ 📂scripts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜colors.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-deno-edge.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-edge.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-index-browser.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-index.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜get-packed-client.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜postinstall.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜postinstall.js
 ┃ ┃ ┃ ┃ ┣ 📜edge.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜edge.js
 ┃ ┃ ┃ ┃ ┣ 📜extension.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜extension.js
 ┃ ┃ ┃ ┃ ┣ 📜index-browser.js
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂@types
 ┃ ┃ ┃ ┣ 📂bcrypt
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂body-parser
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂cors
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂express
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂express-list-endpoints
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂jsonwebtoken
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂morgan
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂node
 ┃ ┃ ┃ ┃ ┣ 📂assert
 ┃ ┃ ┃ ┃ ┃ ┗ 📜strict.d.ts
 ┃ ┃ ┃ ┃ ┣ 📂dns
 ┃ ┃ ┃ ┃ ┃ ┗ 📜promises.d.ts
 ┃ ┃ ┃ ┃ ┣ 📂fs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜promises.d.ts
 ┃ ┃ ┃ ┃ ┣ 📂stream
 ┃ ┃ ┃ ┃ ┃ ┗ 📜promises.d.ts
 ┃ ┃ ┃ ┃ ┣ 📂timers
 ┃ ┃ ┃ ┃ ┃ ┗ 📜promises.d.ts
 ┃ ┃ ┃ ┃ ┣ 📂ts3.6
 ┃ ┃ ┃ ┃ ┃ ┣ 📜assert.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜base.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📂util
 ┃ ┃ ┃ ┃ ┃ ┗ 📜types.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜assert.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜async_hooks.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜base.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜buffer.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜child_process.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜cluster.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜console.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜constants.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜crypto.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜dgram.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜diagnostic_channel.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜dns.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜domain.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜events.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜fs.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜globals.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜globals.global.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜http.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜http2.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜https.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜inspector.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜module.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜net.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜os.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┣ 📜path.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜perf_hooks.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜process.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜punycode.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜querystring.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜readline.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┃ ┣ 📜repl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜stream.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜string_decoder.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜timers.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜tls.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜trace_events.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜tty.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜url.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜util.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜v8.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜vm.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜wasi.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜worker_threads.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜zlib.d.ts
 ┃ ┃ ┃ ┗ 📂supertest
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂bcrypt
 ┃ ┃ ┃ ┣ 📂.github
 ┃ ┃ ┃ ┃ ┗ 📂workflows
 ┃ ┃ ┃ ┃ ┃ ┗ 📜ci.yaml
 ┃ ┃ ┃ ┣ 📂examples
 ┃ ┃ ┃ ┃ ┣ 📜async_compare.js
 ┃ ┃ ┃ ┃ ┗ 📜forever_gen_salt.js
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┗ 📂binding
 ┃ ┃ ┃ ┃ ┃ ┗ 📂napi-v3
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜bcrypt_lib.node
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜node-pre-gyp
 ┃ ┃ ┃ ┃ ┃ ┣ 📜node-pre-gyp.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜node-pre-gyp.ps1
 ┃ ┃ ┃ ┣ 📂src
 ┃ ┃ ┃ ┃ ┣ 📜bcrypt.cc
 ┃ ┃ ┃ ┃ ┣ 📜bcrypt_node.cc
 ┃ ┃ ┃ ┃ ┣ 📜blowfish.cc
 ┃ ┃ ┃ ┃ ┗ 📜node_blf.h
 ┃ ┃ ┃ ┣ 📂test
 ┃ ┃ ┃ ┃ ┣ 📜async.test.js
 ┃ ┃ ┃ ┃ ┣ 📜implementation.test.js
 ┃ ┃ ┃ ┃ ┣ 📜promise.test.js
 ┃ ┃ ┃ ┃ ┣ 📜repetitions.test.js
 ┃ ┃ ┃ ┃ ┗ 📜sync.test.js
 ┃ ┃ ┃ ┣ 📜.editorconfig
 ┃ ┃ ┃ ┣ 📜.travis.yml
 ┃ ┃ ┃ ┣ 📜appveyor.yml
 ┃ ┃ ┃ ┣ 📜bcrypt.js
 ┃ ┃ ┃ ┣ 📜binding.gyp
 ┃ ┃ ┃ ┣ 📜CHANGELOG.md
 ┃ ┃ ┃ ┣ 📜ISSUE_TEMPLATE.md
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜Makefile
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜promises.js
 ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┣ 📜SECURITY.md
 ┃ ┃ ┃ ┗ 📜test-docker.sh
 ┃ ┃ ┣ 📂body-parser
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📂types
 ┃ ┃ ┃ ┃ ┃ ┣ 📜json.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜raw.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜text.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜urlencoded.js
 ┃ ┃ ┃ ┃ ┗ 📜read.js
 ┃ ┃ ┃ ┣ 📜HISTORY.md
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┗ 📜SECURITY.md
 ┃ ┃ ┣ 📂concurrently
 ┃ ┃ ┃ ┣ 📂dist
 ┃ ┃ ┃ ┃ ┣ 📂bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜concurrently.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜concurrently.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜epilogue.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜epilogue.js
 ┃ ┃ ┃ ┃ ┗ 📂src
 ┃ ┃ ┃ ┃ ┃ ┣ 📂command-parser
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜command-parser.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜command-parser.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜expand-arguments.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜expand-arguments.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜expand-npm-shortcut.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜expand-npm-shortcut.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜expand-npm-wildcard.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜expand-npm-wildcard.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜strip-quotes.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜strip-quotes.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂flow-control
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜flow-controller.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜flow-controller.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜input-handler.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜input-handler.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kill-on-signal.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kill-on-signal.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kill-others.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kill-others.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-error.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-error.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-exit.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-exit.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-output.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-output.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-timings.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜log-timings.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜restart-process.d.ts
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜restart-process.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜command.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜command.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜completion-listener.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜completion-listener.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜concurrently.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜concurrently.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜defaults.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜defaults.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜get-spawn-opts.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜get-spawn-opts.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜logger.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜logger.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜output-writer.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜output-writer.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefix-color-selector.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜prefix-color-selector.js
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜conc
 ┃ ┃ ┃ ┃ ┃ ┣ 📜conc.CMD
 ┃ ┃ ┃ ┃ ┃ ┣ 📜conc.ps1
 ┃ ┃ ┃ ┃ ┃ ┣ 📜concurrently
 ┃ ┃ ┃ ┃ ┃ ┣ 📜concurrently.CMD
 ┃ ┃ ┃ ┃ ┃ ┣ 📜concurrently.ps1
 ┃ ┃ ┃ ┃ ┃ ┣ 📜tree-kill
 ┃ ┃ ┃ ┃ ┃ ┣ 📜tree-kill.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜tree-kill.ps1
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┣ 📜index.mjs
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂cors
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┣ 📜CONTRIBUTING.md
 ┃ ┃ ┃ ┣ 📜HISTORY.md
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂dotenv
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📜cli-options.js
 ┃ ┃ ┃ ┃ ┣ 📜env-options.js
 ┃ ┃ ┃ ┃ ┣ 📜main.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜main.js
 ┃ ┃ ┃ ┣ 📜CHANGELOG.md
 ┃ ┃ ┃ ┣ 📜config.d.ts
 ┃ ┃ ┃ ┣ 📜config.js
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜README-es.md
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂esbuild
 ┃ ┃ ┃ ┣ 📂bin
 ┃ ┃ ┃ ┃ ┗ 📜esbuild
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📜main.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜main.js
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜esbuild
 ┃ ┃ ┃ ┃ ┃ ┣ 📜esbuild.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜esbuild.ps1
 ┃ ┃ ┃ ┣ 📜install.js
 ┃ ┃ ┃ ┣ 📜LICENSE.md
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂esbuild-register
 ┃ ┃ ┃ ┣ 📂dist
 ┃ ┃ ┃ ┃ ┣ 📜loader.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜loader.js
 ┃ ┃ ┃ ┃ ┣ 📜node.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜node.js
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜esbuild
 ┃ ┃ ┃ ┃ ┃ ┣ 📜esbuild.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜esbuild.ps1
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜loader.js
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┗ 📜register.js
 ┃ ┃ ┣ 📂eslint
 ┃ ┃ ┃ ┣ 📂bin
 ┃ ┃ ┃ ┃ ┗ 📜eslint.js
 ┃ ┃ ┃ ┣ 📂conf
 ┃ ┃ ┃ ┃ ┣ 📜category-list.json
 ┃ ┃ ┃ ┃ ┣ 📜config-schema.js
 ┃ ┃ ┃ ┃ ┣ 📜default-cli-options.js
 ┃ ┃ ┃ ┃ ┣ 📜eslint-all.js
 ┃ ┃ ┃ ┃ ┣ 📜eslint-recommended.js
 ┃ ┃ ┃ ┃ ┗ 📜replacements.json
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📂cli-engine
 ┃ ┃ ┃ ┃ ┃ ┣ 📂formatters
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜checkstyle.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜codeframe.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compact.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜html.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜jslint-xml.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜json-with-metadata.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜json.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜junit.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜stylish.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜table.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜tap.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜unix.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜visualstudio.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜cli-engine.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜file-enumerator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜hash.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜lint-result-cache.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜load-rules.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜xml-escape.js
 ┃ ┃ ┃ ┃ ┣ 📂config
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-config.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜flat-config-array.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜flat-config-schema.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜rule-validator.js
 ┃ ┃ ┃ ┃ ┣ 📂eslint
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eslint.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📂init
 ┃ ┃ ┃ ┃ ┃ ┣ 📜autoconfig.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜config-file.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜config-initializer.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜config-rule.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜npm-utils.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜source-code-utils.js
 ┃ ┃ ┃ ┃ ┣ 📂linter
 ┃ ┃ ┃ ┃ ┃ ┣ 📂code-path-analysis
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜code-path-analyzer.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜code-path-segment.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜code-path-state.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜code-path.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜debug-helpers.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜fork-context.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜id-generator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜apply-disable-directives.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜config-comment-parser.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜interpolate.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜linter.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜node-event-generator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜report-translator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜rule-fixer.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜rules.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜safe-emitter.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜source-code-fixer.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜timing.js
 ┃ ┃ ┃ ┃ ┣ 📂rule-tester
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜rule-tester.js
 ┃ ┃ ┃ ┃ ┣ 📂rules
 ┃ ┃ ┃ ┃ ┃ ┣ 📂utils
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂patterns
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜letters.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂unicode
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜is-combining-character.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜is-emoji-modifier.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜is-regional-indicator-symbol.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜is-surrogate-pair.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ast-utils.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜fix-tracker.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜keywords.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜lazy-loading-rule-map.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜accessor-pairs.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜array-bracket-newline.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜array-bracket-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜array-callback-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜array-element-newline.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜arrow-body-style.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜arrow-parens.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜arrow-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜block-scoped-var.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜block-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜brace-style.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜callback-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜camelcase.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜capitalized-comments.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜class-methods-use-this.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜comma-dangle.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜comma-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜comma-style.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜complexity.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜computed-property-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜consistent-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜consistent-this.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜constructor-super.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜curly.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-case-last.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-case.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜default-param-last.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜dot-location.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜dot-notation.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eol-last.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eqeqeq.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜for-direction.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜func-call-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜func-name-matching.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜func-names.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜func-style.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜function-call-argument-newline.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜function-paren-newline.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜generator-star-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜getter-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜global-require.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜grouped-accessor-pairs.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜guard-for-in.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜handle-callback-err.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜id-blacklist.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜id-denylist.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜id-length.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜id-match.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜implicit-arrow-linebreak.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜indent-legacy.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜indent.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜init-declarations.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜jsx-quotes.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜key-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜keyword-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜line-comment-position.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜linebreak-style.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜lines-around-comment.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜lines-around-directive.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜lines-between-class-members.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-classes-per-file.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-depth.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-len.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-lines-per-function.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-lines.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-nested-callbacks.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-params.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-statements-per-line.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜max-statements.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜multiline-comment-style.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜multiline-ternary.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜new-cap.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜new-parens.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜newline-after-var.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜newline-before-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜newline-per-chained-call.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-alert.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-array-constructor.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-async-promise-executor.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-await-in-loop.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-bitwise.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-buffer-constructor.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-caller.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-case-declarations.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-catch-shadow.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-class-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-compare-neg-zero.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-cond-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-confusing-arrow.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-console.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-const-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-constant-condition.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-constructor-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-continue.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-control-regex.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-debugger.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-delete-var.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-div-regex.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-dupe-args.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-dupe-class-members.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-dupe-else-if.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-dupe-keys.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-duplicate-case.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-duplicate-imports.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-else-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-empty-character-class.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-empty-function.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-empty-pattern.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-empty.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-eq-null.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-eval.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-ex-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-extend-native.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-extra-bind.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-extra-boolean-cast.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-extra-label.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-extra-parens.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-extra-semi.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-fallthrough.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-floating-decimal.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-func-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-global-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-implicit-coercion.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-implicit-globals.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-implied-eval.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-import-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-inline-comments.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-inner-declarations.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-invalid-regexp.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-invalid-this.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-irregular-whitespace.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-iterator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-label-var.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-labels.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-lone-blocks.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-lonely-if.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-loop-func.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-loss-of-precision.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-magic-numbers.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-misleading-character-class.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-mixed-operators.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-mixed-requires.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-mixed-spaces-and-tabs.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-multi-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-multi-spaces.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-multi-str.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-multiple-empty-lines.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-native-reassign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-negated-condition.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-negated-in-lhs.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-nested-ternary.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-new-func.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-new-object.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-new-require.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-new-symbol.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-new-wrappers.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-new.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-nonoctal-decimal-escape.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-obj-calls.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-octal-escape.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-octal.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-param-reassign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-path-concat.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-plusplus.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-process-env.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-process-exit.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-promise-executor-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-proto.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-prototype-builtins.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-redeclare.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-regex-spaces.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-restricted-exports.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-restricted-globals.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-restricted-imports.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-restricted-modules.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-restricted-properties.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-restricted-syntax.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-return-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-return-await.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-script-url.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-self-assign.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-self-compare.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-sequences.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-setter-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-shadow-restricted-names.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-shadow.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-spaced-func.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-sparse-arrays.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-sync.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-tabs.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-template-curly-in-string.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-ternary.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-this-before-super.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-throw-literal.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-trailing-spaces.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-undef-init.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-undef.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-undefined.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-underscore-dangle.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unexpected-multiline.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unmodified-loop-condition.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unneeded-ternary.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unreachable-loop.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unreachable.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unsafe-finally.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unsafe-negation.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unsafe-optional-chaining.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unused-expressions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unused-labels.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-unused-vars.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-use-before-define.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-backreference.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-call.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-catch.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-computed-key.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-concat.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-constructor.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-escape.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-rename.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-useless-return.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-var.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-void.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-warning-comments.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-whitespace-before-property.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜no-with.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜nonblock-statement-body-position.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜object-curly-newline.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜object-curly-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜object-property-newline.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜object-shorthand.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜one-var-declaration-per-line.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜one-var.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜operator-assignment.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜operator-linebreak.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜padded-blocks.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜padding-line-between-statements.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-arrow-callback.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-const.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-destructuring.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-exponentiation-operator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-named-capture-group.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-numeric-literals.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-object-spread.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-promise-reject-errors.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-reflect.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-regex-literals.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-rest-params.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-spread.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜prefer-template.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜quote-props.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜quotes.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜radix.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜require-atomic-updates.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜require-await.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜require-jsdoc.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜require-unicode-regexp.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜require-yield.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜rest-spread-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semi-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semi-style.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semi.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜sort-imports.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜sort-keys.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜sort-vars.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜space-before-blocks.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜space-before-function-paren.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜space-in-parens.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜space-infix-ops.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜space-unary-ops.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜spaced-comment.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜strict.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜switch-colon-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜symbol-description.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜template-curly-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜template-tag-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜unicode-bom.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜use-isnan.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜valid-jsdoc.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜valid-typeof.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜vars-on-top.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜wrap-iife.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜wrap-regex.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜yield-star-spacing.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜yoda.js
 ┃ ┃ ┃ ┃ ┣ 📂shared
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ajv.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ast-utils.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜config-validator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜deprecation-warnings.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜logging.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜relative-module-resolver.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜runtime-info.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜string-utils.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜traverser.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜types.js
 ┃ ┃ ┃ ┃ ┣ 📂source-code
 ┃ ┃ ┃ ┃ ┃ ┣ 📂token-store
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜backward-token-comment-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜backward-token-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cursors.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜decorative-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜filter-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜forward-token-comment-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜forward-token-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜limit-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜padded-token-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜skip-cursor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜utils.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜source-code.js
 ┃ ┃ ┃ ┃ ┣ 📜api.js
 ┃ ┃ ┃ ┃ ┣ 📜cli.js
 ┃ ┃ ┃ ┃ ┗ 📜options.js
 ┃ ┃ ┃ ┣ 📂messages
 ┃ ┃ ┃ ┃ ┣ 📜all-files-ignored.js
 ┃ ┃ ┃ ┃ ┣ 📜extend-config-missing.js
 ┃ ┃ ┃ ┃ ┣ 📜failed-to-read-json.js
 ┃ ┃ ┃ ┃ ┣ 📜file-not-found.js
 ┃ ┃ ┃ ┃ ┣ 📜no-config-found.js
 ┃ ┃ ┃ ┃ ┣ 📜plugin-conflict.js
 ┃ ┃ ┃ ┃ ┣ 📜plugin-invalid.js
 ┃ ┃ ┃ ┃ ┣ 📜plugin-missing.js
 ┃ ┃ ┃ ┃ ┣ 📜print-config-with-directory-path.js
 ┃ ┃ ┃ ┃ ┗ 📜whitespace-found.js
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eslint
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eslint.CMD
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eslint.ps1
 ┃ ┃ ┃ ┃ ┃ ┣ 📜js-yaml
 ┃ ┃ ┃ ┃ ┃ ┣ 📜js-yaml.CMD
 ┃ ┃ ┃ ┃ ┃ ┣ 📜js-yaml.ps1
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semver
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semver.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜semver.ps1
 ┃ ┃ ┃ ┣ 📜CHANGELOG.md
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂eslint-config-custom-server
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eslint
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eslint.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜eslint.ps1
 ┃ ┃ ┃ ┣ 📜CHANGELOG.md
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┗ 📜package.json
 ┃ ┃ ┣ 📂express
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📂middleware
 ┃ ┃ ┃ ┃ ┃ ┣ 📜init.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜query.js
 ┃ ┃ ┃ ┃ ┣ 📂router
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜layer.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜route.js
 ┃ ┃ ┃ ┃ ┣ 📜application.js
 ┃ ┃ ┃ ┃ ┣ 📜express.js
 ┃ ┃ ┃ ┃ ┣ 📜request.js
 ┃ ┃ ┃ ┃ ┣ 📜response.js
 ┃ ┃ ┃ ┃ ┣ 📜utils.js
 ┃ ┃ ┃ ┃ ┗ 📜view.js
 ┃ ┃ ┃ ┣ 📜History.md
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜Readme.md
 ┃ ┃ ┣ 📂express-list-endpoints
 ┃ ┃ ┃ ┣ 📂.github
 ┃ ┃ ┃ ┃ ┗ 📂workflows
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ci.yml
 ┃ ┃ ┃ ┃ ┃ ┣ 📜codeql-analysis.yml
 ┃ ┃ ┃ ┃ ┃ ┗ 📜version.yml
 ┃ ┃ ┃ ┣ 📂src
 ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┣ 📜CHANGELOG.md
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂express-route-grouping
 ┃ ┃ ┃ ┣ 📂dist
 ┃ ┃ ┃ ┃ ┣ 📜express-route-grouping.cjs.development.js
 ┃ ┃ ┃ ┃ ┣ 📜express-route-grouping.cjs.development.js.map
 ┃ ┃ ┃ ┃ ┣ 📜express-route-grouping.cjs.production.min.js
 ┃ ┃ ┃ ┃ ┣ 📜express-route-grouping.cjs.production.min.js.map
 ┃ ┃ ┃ ┃ ┣ 📜express-route-grouping.esm.js
 ┃ ┃ ┃ ┃ ┣ 📜express-route-grouping.esm.js.map
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📜resources.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜types.d.ts
 ┃ ┃ ┃ ┣ 📂src
 ┃ ┃ ┃ ┃ ┣ 📜index.ts
 ┃ ┃ ┃ ┃ ┣ 📜resources.ts
 ┃ ┃ ┃ ┃ ┗ 📜types.ts
 ┃ ┃ ┃ ┣ 📜CHANGELOG.md
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂http
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂jsonwebtoken
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📜asymmetricKeyDetailsSupported.js
 ┃ ┃ ┃ ┃ ┣ 📜JsonWebTokenError.js
 ┃ ┃ ┃ ┃ ┣ 📜NotBeforeError.js
 ┃ ┃ ┃ ┃ ┣ 📜psSupported.js
 ┃ ┃ ┃ ┃ ┣ 📜rsaPssKeyDetailsSupported.js
 ┃ ┃ ┃ ┃ ┣ 📜timespan.js
 ┃ ┃ ┃ ┃ ┣ 📜TokenExpiredError.js
 ┃ ┃ ┃ ┃ ┗ 📜validateAsymmetricKey.js
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semver
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semver.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜semver.ps1
 ┃ ┃ ┃ ┣ 📜decode.js
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┣ 📜sign.js
 ┃ ┃ ┃ ┗ 📜verify.js
 ┃ ┃ ┣ 📂logger
 ┃ ┃ ┃ ┣ 📜logger.js
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂mongoose
 ┃ ┃ ┃ ┣ 📂dist
 ┃ ┃ ┃ ┃ ┗ 📜browser.umd.js
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📂cast
 ┃ ┃ ┃ ┃ ┃ ┣ 📜bigint.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜boolean.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜date.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜decimal128.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜number.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜objectid.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜string.js
 ┃ ┃ ┃ ┃ ┣ 📂cursor
 ┃ ┃ ┃ ┃ ┃ ┣ 📜AggregationCursor.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ChangeStream.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜QueryCursor.js
 ┃ ┃ ┃ ┃ ┣ 📂drivers
 ┃ ┃ ┃ ┃ ┃ ┣ 📂browser
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜binary.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜decimal128.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜objectid.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂node-mongodb-native
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜collection.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜connection.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜SPEC.md
 ┃ ┃ ┃ ┃ ┣ 📂error
 ┃ ┃ ┃ ┃ ┃ ┣ 📜browserMissingSchema.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜bulkWriteError.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜cast.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜createCollectionsError.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜divergentArray.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜eachAsyncMultiError.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜invalidSchemaOption.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜messages.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜missingSchema.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜mongooseError.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜notFound.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜objectExpected.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜objectParameter.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜overwriteModel.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜parallelSave.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜parallelValidate.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜serverSelection.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜setOptionError.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜strict.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜strictPopulate.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜syncIndexes.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜validation.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜validator.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜version.js
 ┃ ┃ ┃ ┃ ┣ 📂helpers
 ┃ ┃ ┃ ┃ ┃ ┣ 📂aggregate
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜prepareDiscriminatorPipeline.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜stringifyFunctionOperators.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂cursor
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜eachAsync.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂discriminator
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜areDiscriminatorValuesEqual.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜checkEmbeddedDiscriminatorKeyProjection.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getConstructor.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getDiscriminatorByValue.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getSchemaDiscriminatorByValue.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜mergeDiscriminatorSchema.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂document
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyDefaults.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cleanModifiedSubpaths.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getDeepestSubdocumentForPath.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getEmbeddedDiscriminatorPath.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜handleSpreadDoc.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂error
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜combinePathErrors.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂indexes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applySchemaCollation.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜decorateDiscriminatorIndexOptions.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getRelatedIndexes.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isDefaultIdIndex.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isIndexEqual.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜isTextIndex.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyDefaultsToPOJO.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyHooks.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyMethods.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyStaticHooks.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyStatics.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜castBulkWrite.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜discriminator.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜pushNestedArrayPaths.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂path
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜parentPaths.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜setDottedPath.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂populate
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜assignRawDocsToIdStructure.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜assignVals.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜createPopulateQueryFilter.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getModelsMapForPopulate.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getSchemaTypes.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getVirtual.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜leanPopulateMap.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookupLocalFields.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜markArraySubdocsPopulated.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜modelNamesFromRefPath.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜removeDeselectedForeignField.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SkipPopulateValue.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜validateRef.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂projection
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyProjection.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜hasIncludedChildren.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isDefiningProjection.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isExclusive.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isInclusive.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isPathExcluded.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isPathSelectedInclusive.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isSubpath.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜parseProjection.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂query
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyGlobalOption.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyQueryMiddleware.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cast$expr.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜castFilterPath.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜castUpdate.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜completeMany.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getEmbeddedDiscriminatorPath.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜handleImmutable.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜handleReadPreferenceAliases.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜hasDollarKeys.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isOperator.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜sanitizeFilter.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜sanitizeProjection.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜selectPopulatedFields.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜trusted.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜validOps.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂schema
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜addAutoId.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyBuiltinPlugins.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyPlugins.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyWriteConcern.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cleanPositionalOperators.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getIndexes.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getKeysInSchemaOrder.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getPath.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜getSubdocumentStrictValue.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜handleIdOption.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜handleTimestampOption.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜idGetter.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂schematype
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜handleImmutable.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂timestamps
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜setDocumentTimestamps.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜setupTimestamps.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂topology
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜allServersUnknown.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isAtlas.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜isSSLError.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂update
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyTimestampsToChildren.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyTimestampsToUpdate.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜castArrayFilters.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜modifiedPaths.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜moveImmutableProperties.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜removeUnusedArrayFilters.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜updatedPathsByArrayFilter.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜arrayDepth.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜clone.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜common.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜each.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜firstKey.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜get.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜getConstructorName.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜getDefaultBulkwriteResult.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜getFunctionName.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜immediate.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜isAsyncFunction.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜isBsonType.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜isMongooseObject.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜isObject.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜isPOJO.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜isPromise.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜isSimpleValidator.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜once.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜parallelLimit.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜pluralize.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜printJestWarning.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜processConnectionOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜promiseOrCallback.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜setDefaultsOnInsert.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜specialProperties.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜symbols.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜timers.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜updateValidators.js
 ┃ ┃ ┃ ┃ ┣ 📂options
 ┃ ┃ ┃ ┃ ┃ ┣ 📜PopulateOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜propertyOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜saveOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaArrayOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaBufferOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaDateOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaDocumentArrayOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaMapOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaNumberOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaObjectIdOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaStringOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaSubdocumentOptions.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SchemaTypeOptions.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜VirtualOptions.js
 ┃ ┃ ┃ ┃ ┣ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜removeSubdocs.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜saveSubdocs.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜sharding.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜trackTransaction.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜validateBeforeSave.js
 ┃ ┃ ┃ ┃ ┣ 📂schema
 ┃ ┃ ┃ ┃ ┃ ┣ 📂operators
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bitwise.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜exists.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜geospatial.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜helpers.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜text.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜type.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜array.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜bigint.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜boolean.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜buffer.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜date.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜decimal128.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜documentarray.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜DocumentArrayElement.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜map.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜mixed.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜number.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜objectid.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜string.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜SubdocumentPath.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜symbols.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜uuid.js
 ┃ ┃ ┃ ┃ ┣ 📂types
 ┃ ┃ ┃ ┃ ┃ ┣ 📂array
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂methods
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜isMongooseArray.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📂DocumentArray
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂methods
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜isMongooseDocumentArray.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜ArraySubdocument.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜buffer.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜decimal128.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜map.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜objectid.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜subdocument.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜uuid.js
 ┃ ┃ ┃ ┃ ┣ 📜aggregate.js
 ┃ ┃ ┃ ┃ ┣ 📜browser.js
 ┃ ┃ ┃ ┃ ┣ 📜browserDocument.js
 ┃ ┃ ┃ ┃ ┣ 📜cast.js
 ┃ ┃ ┃ ┃ ┣ 📜collection.js
 ┃ ┃ ┃ ┃ ┣ 📜connection.js
 ┃ ┃ ┃ ┃ ┣ 📜connectionstate.js
 ┃ ┃ ┃ ┃ ┣ 📜document.js
 ┃ ┃ ┃ ┃ ┣ 📜document_provider.js
 ┃ ┃ ┃ ┃ ┣ 📜driver.js
 ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📜internal.js
 ┃ ┃ ┃ ┃ ┣ 📜model.js
 ┃ ┃ ┃ ┃ ┣ 📜options.js
 ┃ ┃ ┃ ┃ ┣ 📜query.js
 ┃ ┃ ┃ ┃ ┣ 📜queryhelpers.js
 ┃ ┃ ┃ ┃ ┣ 📜schema.js
 ┃ ┃ ┃ ┃ ┣ 📜schematype.js
 ┃ ┃ ┃ ┃ ┣ 📜statemachine.js
 ┃ ┃ ┃ ┃ ┣ 📜utils.js
 ┃ ┃ ┃ ┃ ┣ 📜validoptions.js
 ┃ ┃ ┃ ┃ ┗ 📜virtualtype.js
 ┃ ┃ ┃ ┣ 📂scripts
 ┃ ┃ ┃ ┃ ┣ 📜build-browser.js
 ┃ ┃ ┃ ┃ ┣ 📜create-tarball.js
 ┃ ┃ ┃ ┃ ┣ 📜generateSearch.js
 ┃ ┃ ┃ ┃ ┣ 📜loadSponsorData.js
 ┃ ┃ ┃ ┃ ┗ 📜tsc-diagnostics-check.js
 ┃ ┃ ┃ ┣ 📂tools
 ┃ ┃ ┃ ┃ ┣ 📜auth.js
 ┃ ┃ ┃ ┃ ┣ 📜repl.js
 ┃ ┃ ┃ ┃ ┗ 📜sharded.js
 ┃ ┃ ┃ ┣ 📂types
 ┃ ┃ ┃ ┃ ┣ 📜aggregate.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜augmentations.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜callback.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜collection.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜connection.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜cursor.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜document.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜error.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜expressions.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜helpers.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜indexes.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜inferschematype.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜middlewares.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜models.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜mongooseoptions.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜pipelinestage.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜populate.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜query.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜schemaoptions.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜schematypes.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜session.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜types.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜utility.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜validation.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜virtuals.d.ts
 ┃ ┃ ┃ ┣ 📜.eslintrc.js
 ┃ ┃ ┃ ┣ 📜.markdownlint-cli2.cjs
 ┃ ┃ ┃ ┣ 📜.mocharc.yml
 ┃ ┃ ┃ ┣ 📜browser.js
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┣ 📜lgtm.yml
 ┃ ┃ ┃ ┣ 📜LICENSE.md
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┣ 📜SECURITY.md
 ┃ ┃ ┃ ┗ 📜tsconfig.json
 ┃ ┃ ┣ 📂morgan
 ┃ ┃ ┃ ┣ 📜HISTORY.md
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂nodemon
 ┃ ┃ ┃ ┣ 📂bin
 ┃ ┃ ┃ ┃ ┣ 📜nodemon.js
 ┃ ┃ ┃ ┃ ┗ 📜windows-kill.exe
 ┃ ┃ ┃ ┣ 📂doc
 ┃ ┃ ┃ ┃ ┗ 📂cli
 ┃ ┃ ┃ ┃ ┃ ┣ 📜authors.txt
 ┃ ┃ ┃ ┃ ┃ ┣ 📜config.txt
 ┃ ┃ ┃ ┃ ┃ ┣ 📜help.txt
 ┃ ┃ ┃ ┃ ┃ ┣ 📜logo.txt
 ┃ ┃ ┃ ┃ ┃ ┣ 📜options.txt
 ┃ ┃ ┃ ┃ ┃ ┣ 📜topics.txt
 ┃ ┃ ┃ ┃ ┃ ┣ 📜usage.txt
 ┃ ┃ ┃ ┃ ┃ ┗ 📜whoami.txt
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📂cli
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜parse.js
 ┃ ┃ ┃ ┃ ┣ 📂config
 ┃ ┃ ┃ ┃ ┃ ┣ 📜command.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜defaults.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜exec.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜load.js
 ┃ ┃ ┃ ┃ ┣ 📂help
 ┃ ┃ ┃ ┃ ┃ ┗ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📂monitor
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜match.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜run.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜signals.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜watch.js
 ┃ ┃ ┃ ┃ ┣ 📂rules
 ┃ ┃ ┃ ┃ ┃ ┣ 📜add.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜parse.js
 ┃ ┃ ┃ ┃ ┣ 📂utils
 ┃ ┃ ┃ ┃ ┃ ┣ 📜bus.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜clone.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜colour.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜log.js
 ┃ ┃ ┃ ┃ ┃ ┗ 📜merge.js
 ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📜nodemon.js
 ┃ ┃ ┃ ┃ ┣ 📜spawn.js
 ┃ ┃ ┃ ┃ ┗ 📜version.js
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜nodemon
 ┃ ┃ ┃ ┃ ┃ ┣ 📜nodemon.CMD
 ┃ ┃ ┃ ┃ ┃ ┣ 📜nodemon.ps1
 ┃ ┃ ┃ ┃ ┃ ┣ 📜nodetouch
 ┃ ┃ ┃ ┃ ┃ ┣ 📜nodetouch.CMD
 ┃ ┃ ┃ ┃ ┃ ┣ 📜nodetouch.ps1
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semver
 ┃ ┃ ┃ ┃ ┃ ┣ 📜semver.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜semver.ps1
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂socket.io
 ┃ ┃ ┃ ┣ 📂client-dist
 ┃ ┃ ┃ ┃ ┣ 📜socket.io.esm.min.js
 ┃ ┃ ┃ ┃ ┣ 📜socket.io.esm.min.js.map
 ┃ ┃ ┃ ┃ ┣ 📜socket.io.js
 ┃ ┃ ┃ ┃ ┣ 📜socket.io.js.map
 ┃ ┃ ┃ ┃ ┣ 📜socket.io.min.js
 ┃ ┃ ┃ ┃ ┣ 📜socket.io.min.js.map
 ┃ ┃ ┃ ┃ ┣ 📜socket.io.msgpack.min.js
 ┃ ┃ ┃ ┃ ┗ 📜socket.io.msgpack.min.js.map
 ┃ ┃ ┃ ┣ 📂dist
 ┃ ┃ ┃ ┃ ┣ 📜broadcast-operator.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜broadcast-operator.js
 ┃ ┃ ┃ ┃ ┣ 📜client.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜client.js
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📜namespace.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜namespace.js
 ┃ ┃ ┃ ┃ ┣ 📜parent-namespace.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜parent-namespace.js
 ┃ ┃ ┃ ┃ ┣ 📜socket.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜socket.js
 ┃ ┃ ┃ ┃ ┣ 📜typed-events.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜typed-events.js
 ┃ ┃ ┃ ┃ ┣ 📜uws.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜uws.js
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜Readme.md
 ┃ ┃ ┃ ┗ 📜wrapper.mjs
 ┃ ┃ ┣ 📂supertest
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📜agent.js
 ┃ ┃ ┃ ┃ ┗ 📜test.js
 ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂tsconfig
 ┃ ┃ ┃ ┣ 📂dist
 ┃ ┃ ┃ ┃ ┣ 📜tsconfig.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜tsconfig.js
 ┃ ┃ ┃ ┃ ┣ 📜tsconfig.js.map
 ┃ ┃ ┃ ┃ ┣ 📜tsconfig.spec.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜tsconfig.spec.js
 ┃ ┃ ┃ ┃ ┗ 📜tsconfig.spec.js.map
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┣ 📂typescript
 ┃ ┃ ┃ ┣ 📂bin
 ┃ ┃ ┃ ┃ ┣ 📜tsc
 ┃ ┃ ┃ ┃ ┗ 📜tsserver
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📂cs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂de
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂es
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂fr
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂it
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂ja
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂ko
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂pl
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂pt-br
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂ru
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂tr
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂zh-cn
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📂zh-tw
 ┃ ┃ ┃ ┃ ┃ ┗ 📜diagnosticMessages.generated.json
 ┃ ┃ ┃ ┃ ┣ 📜cancellationToken.js
 ┃ ┃ ┃ ┃ ┣ 📜dynamicImportCompat.js
 ┃ ┃ ┃ ┃ ┣ 📜lib.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.dom.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.dom.iterable.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.collection.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.core.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.generator.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.iterable.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.promise.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.proxy.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.reflect.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.symbol.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2015.symbol.wellknown.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2016.array.include.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2016.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2016.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2017.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2017.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2017.intl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2017.object.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2017.sharedmemory.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2017.string.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2017.typedarrays.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2018.asyncgenerator.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2018.asynciterable.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2018.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2018.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2018.intl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2018.promise.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2018.regexp.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2019.array.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2019.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2019.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2019.intl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2019.object.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2019.string.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2019.symbol.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.bigint.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.date.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.intl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.number.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.promise.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.sharedmemory.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.string.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2020.symbol.wellknown.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2021.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2021.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2021.intl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2021.promise.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2021.string.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2021.weakref.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.array.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.error.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.intl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.object.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.sharedmemory.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es2022.string.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es5.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.es6.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.esnext.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.esnext.full.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.esnext.intl.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.esnext.promise.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.esnext.string.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.esnext.weakref.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.scripthost.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.webworker.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.webworker.importscripts.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜lib.webworker.iterable.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜protocol.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┃ ┣ 📜tsc.js
 ┃ ┃ ┃ ┃ ┣ 📜tsserver.js
 ┃ ┃ ┃ ┃ ┣ 📜tsserverlibrary.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜tsserverlibrary.js
 ┃ ┃ ┃ ┃ ┣ 📜typescript.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜typescript.js
 ┃ ┃ ┃ ┃ ┣ 📜typescriptServices.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜typescriptServices.js
 ┃ ┃ ┃ ┃ ┣ 📜typesMap.json
 ┃ ┃ ┃ ┃ ┣ 📜typingsInstaller.js
 ┃ ┃ ┃ ┃ ┗ 📜watchGuard.js
 ┃ ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┃ ┃ ┗ 📂.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜tsc
 ┃ ┃ ┃ ┃ ┃ ┣ 📜tsc.CMD
 ┃ ┃ ┃ ┃ ┃ ┣ 📜tsc.ps1
 ┃ ┃ ┃ ┃ ┃ ┣ 📜tsserver
 ┃ ┃ ┃ ┃ ┃ ┣ 📜tsserver.CMD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜tsserver.ps1
 ┃ ┃ ┃ ┣ 📜LICENSE.txt
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┣ 📜README.md
 ┃ ┃ ┃ ┣ 📜SECURITY.md
 ┃ ┃ ┃ ┗ 📜ThirdPartyNoticeText.txt
 ┃ ┃ ┗ 📂zod
 ┃ ┃ ┃ ┣ 📂lib
 ┃ ┃ ┃ ┃ ┣ 📂benchmarks
 ┃ ┃ ┃ ┃ ┃ ┣ 📜discriminatedUnion.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜discriminatedUnion.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜object.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜object.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜primitives.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜primitives.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜realworld.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜realworld.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜string.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜string.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜union.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜union.js
 ┃ ┃ ┃ ┃ ┣ 📂helpers
 ┃ ┃ ┃ ┃ ┃ ┣ 📜enumUtil.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜enumUtil.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜errorUtil.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜errorUtil.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜parseUtil.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜parseUtil.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜partialUtil.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜partialUtil.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜typeAliases.d.ts
 ┃ ┃ ┃ ┃ ┃ ┣ 📜typeAliases.js
 ┃ ┃ ┃ ┃ ┃ ┣ 📜util.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜util.js
 ┃ ┃ ┃ ┃ ┣ 📂locales
 ┃ ┃ ┃ ┃ ┃ ┣ 📜en.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜en.js
 ┃ ┃ ┃ ┃ ┣ 📂__tests__
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Mocker.d.ts
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Mocker.js
 ┃ ┃ ┃ ┃ ┣ 📜errors.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜errors.js
 ┃ ┃ ┃ ┃ ┣ 📜external.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜external.js
 ┃ ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜index.js
 ┃ ┃ ┃ ┃ ┣ 📜index.mjs
 ┃ ┃ ┃ ┃ ┣ 📜index.umd.js
 ┃ ┃ ┃ ┃ ┣ 📜types.d.ts
 ┃ ┃ ┃ ┃ ┣ 📜types.js
 ┃ ┃ ┃ ┃ ┣ 📜ZodError.d.ts
 ┃ ┃ ┃ ┃ ┗ 📜ZodError.js
 ┃ ┃ ┃ ┣ 📜index.d.ts
 ┃ ┃ ┃ ┣ 📜LICENSE
 ┃ ┃ ┃ ┣ 📜package.json
 ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┣ 📂src
 ┃ ┃ ┣ 📂controller
 ┃ ┃ ┃ ┣ 📜bundle.ts
 ┃ ┃ ┃ ┣ 📜document.ts
 ┃ ┃ ┃ ┣ 📜order.ts
 ┃ ┃ ┃ ┣ 📜print.ts
 ┃ ┃ ┃ ┣ 📜store.ts
 ┃ ┃ ┃ ┗ 📜user.ts
 ┃ ┃ ┣ 📂middleware
 ┃ ┃ ┃ ┗ 📜auth.ts
 ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┣ 📜bundle.ts
 ┃ ┃ ┃ ┣ 📜document.ts
 ┃ ┃ ┃ ┣ 📜order.ts
 ┃ ┃ ┃ ┣ 📜print.ts
 ┃ ┃ ┃ ┣ 📜store.ts
 ┃ ┃ ┃ ┗ 📜user.ts
 ┃ ┃ ┣ 📂seeders
 ┃ ┃ ┃ ┣ 📜bundle.ts
 ┃ ┃ ┃ ┣ 📜print.ts
 ┃ ┃ ┃ ┣ 📜seeder.ts
 ┃ ┃ ┃ ┣ 📜store.ts
 ┃ ┃ ┃ ┗ 📜user.ts
 ┃ ┃ ┣ 📂types
 ┃ ┃ ┃ ┣ 📜bundle.ts
 ┃ ┃ ┃ ┣ 📜document.ts
 ┃ ┃ ┃ ┣ 📜order.ts
 ┃ ┃ ┃ ┣ 📜print.ts
 ┃ ┃ ┃ ┣ 📜socket.ts
 ┃ ┃ ┃ ┣ 📜store.ts
 ┃ ┃ ┃ ┗ 📜user.ts
 ┃ ┃ ┣ 📂utils
 ┃ ┃ ┃ ┗ 📜sanitzer.ts
 ┃ ┃ ┣ 📜index.ts
 ┃ ┃ ┣ 📜server.ts
 ┃ ┃ ┣ 📜socket.ts
 ┃ ┃ ┗ 📜storage.ts
 ┃ ┣ 📜.env
 ┃ ┣ 📜.env.example
 ┃ ┣ 📜.gitignore
 ┃ ┣ 📜package.json
 ┃ ┣ 📜readme.md
 ┃ ┗ 📜tsconfig.json
 ┣ 📂desktop
 ┃ ┣ 📂.dart_tool
 ┃ ┃ ┣ 📂flutter_build
 ┃ ┃ ┃ ┗ 📜dart_plugin_registrant.dart
 ┃ ┃ ┣ 📜package_config.json
 ┃ ┃ ┣ 📜package_config_subset
 ┃ ┃ ┗ 📜version
 ┃ ┣ 📂assets
 ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┗ 📂Poppins
 ┃ ┃ ┃ ┃ ┣ 📜Bold.ttf
 ┃ ┃ ┃ ┃ ┣ 📜Medium.ttf
 ┃ ┃ ┃ ┃ ┣ 📜Regular.ttf
 ┃ ┃ ┃ ┃ ┗ 📜SemiBold.ttf
 ┃ ┃ ┣ 📂images
 ┃ ┃ ┃ ┣ 📜greeting.png
 ┃ ┃ ┃ ┣ 📜greeting.svg
 ┃ ┃ ┃ ┣ 📜sign-in.svg
 ┃ ┃ ┃ ┗ 📜sky-printing.svg
 ┃ ┃ ┣ 📜2023-ProposalPUI.pdf
 ┃ ┃ ┗ 📜PDFtoPrinter.exe
 ┃ ┣ 📂build
 ┃ ┃ ┗ 📂3266947836e838bfa246bbfe0a444fbd
 ┃ ┃ ┃ ┣ 📜gen_dart_plugin_registrant.stamp
 ┃ ┃ ┃ ┣ 📜gen_localizations.stamp
 ┃ ┃ ┃ ┗ 📜_composite.stamp
 ┃ ┣ 📂lib
 ┃ ┃ ┣ 📂core
 ┃ ┃ ┃ ┣ 📂themes
 ┃ ┃ ┃ ┃ ┣ 📜theme_bloc.dart
 ┃ ┃ ┃ ┃ ┣ 📜theme_event.dart
 ┃ ┃ ┃ ┃ ┗ 📜theme_state.dart
 ┃ ┃ ┃ ┣ 📂widgets
 ┃ ┃ ┃ ┃ ┗ 📜window_button.dart
 ┃ ┃ ┃ ┣ 📜app_route.dart
 ┃ ┃ ┃ ┗ 📜core.dart
 ┃ ┃ ┣ 📂ui
 ┃ ┃ ┃ ┣ 📂dashboard
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜dashboard_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜dashboard_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜dashboard_state.dart
 ┃ ┃ ┃ ┃ ┗ 📜dashboard_page.dart
 ┃ ┃ ┃ ┣ 📂login
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜auth_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜auth_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜auth_state.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜cubit.dart
 ┃ ┃ ┃ ┃ ┣ 📜login.dart
 ┃ ┃ ┃ ┃ ┗ 📜login_page.dart
 ┃ ┃ ┃ ┣ 📂main
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜main_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜main_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜main_state.dart
 ┃ ┃ ┃ ┃ ┣ 📜main.dart
 ┃ ┃ ┃ ┃ ┗ 📜main_page.dart
 ┃ ┃ ┃ ┣ 📂order
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜order_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜order_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜order_state.dart
 ┃ ┃ ┃ ┃ ┗ 📜order_page.dart
 ┃ ┃ ┃ ┣ 📂printer
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜printer_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜printer_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜printer_state.dart
 ┃ ┃ ┃ ┃ ┗ 📜printer_page.dart
 ┃ ┃ ┃ ┣ 📂register
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜register_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜register_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜register_state.dart
 ┃ ┃ ┃ ┃ ┣ 📜register.dart
 ┃ ┃ ┃ ┃ ┗ 📜register_page.dart
 ┃ ┃ ┃ ┗ 📂settings
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜settings_cubit.dart
 ┃ ┃ ┃ ┃ ┣ 📜settings.dart
 ┃ ┃ ┃ ┃ ┗ 📜settings_page.dart
 ┃ ┃ ┣ 📜app.dart
 ┃ ┃ ┣ 📜dependencies_injection.dart
 ┃ ┃ ┗ 📜main.dart
 ┃ ┣ 📂linux
 ┃ ┃ ┣ 📂flutter
 ┃ ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┃ ┣ 📜generated_plugins.cmake
 ┃ ┃ ┃ ┣ 📜generated_plugin_registrant.cc
 ┃ ┃ ┃ ┗ 📜generated_plugin_registrant.h
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┣ 📜main.cc
 ┃ ┃ ┣ 📜my_application.cc
 ┃ ┃ ┗ 📜my_application.h
 ┃ ┣ 📂macos
 ┃ ┃ ┣ 📂Flutter
 ┃ ┃ ┃ ┣ 📂ephemeral
 ┃ ┃ ┃ ┃ ┣ 📜Flutter-Generated.xcconfig
 ┃ ┃ ┃ ┃ ┗ 📜flutter_export_environment.sh
 ┃ ┃ ┃ ┣ 📜Flutter-Debug.xcconfig
 ┃ ┃ ┃ ┣ 📜Flutter-Release.xcconfig
 ┃ ┃ ┃ ┗ 📜GeneratedPluginRegistrant.swift
 ┃ ┃ ┣ 📂Runner
 ┃ ┃ ┃ ┣ 📂Assets.xcassets
 ┃ ┃ ┃ ┃ ┗ 📂AppIcon.appiconset
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_1024.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_128.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_16.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_256.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_32.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_512.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_64.png
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Contents.json
 ┃ ┃ ┃ ┣ 📂Base.lproj
 ┃ ┃ ┃ ┃ ┗ 📜MainMenu.xib
 ┃ ┃ ┃ ┣ 📂Configs
 ┃ ┃ ┃ ┃ ┣ 📜AppInfo.xcconfig
 ┃ ┃ ┃ ┃ ┣ 📜Debug.xcconfig
 ┃ ┃ ┃ ┃ ┣ 📜Release.xcconfig
 ┃ ┃ ┃ ┃ ┗ 📜Warnings.xcconfig
 ┃ ┃ ┃ ┣ 📜AppDelegate.swift
 ┃ ┃ ┃ ┣ 📜DebugProfile.entitlements
 ┃ ┃ ┃ ┣ 📜GoogleService-Info.plist
 ┃ ┃ ┃ ┣ 📜Info.plist
 ┃ ┃ ┃ ┣ 📜MainFlutterWindow.swift
 ┃ ┃ ┃ ┗ 📜Release.entitlements
 ┃ ┃ ┣ 📂Runner.xcodeproj
 ┃ ┃ ┃ ┣ 📂project.xcworkspace
 ┃ ┃ ┃ ┃ ┗ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┃ ┗ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┗ 📂xcschemes
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Runner.xcscheme
 ┃ ┃ ┃ ┗ 📜project.pbxproj
 ┃ ┃ ┣ 📂Runner.xcworkspace
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┗ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┗ 📜contents.xcworkspacedata
 ┃ ┃ ┣ 📂RunnerTests
 ┃ ┃ ┃ ┗ 📜RunnerTests.swift
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┗ 📜firebase_app_id_file.json
 ┃ ┣ 📂windows
 ┃ ┃ ┣ 📂flutter
 ┃ ┃ ┃ ┣ 📂ephemeral
 ┃ ┃ ┃ ┃ ┣ 📂.plugin_symlinks
 ┃ ┃ ┃ ┃ ┗ 📜generated_config.cmake
 ┃ ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┃ ┣ 📜generated_plugins.cmake
 ┃ ┃ ┃ ┣ 📜generated_plugin_registrant.cc
 ┃ ┃ ┃ ┗ 📜generated_plugin_registrant.h
 ┃ ┃ ┣ 📂runner
 ┃ ┃ ┃ ┣ 📂resources
 ┃ ┃ ┃ ┃ ┗ 📜app_icon.ico
 ┃ ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┃ ┣ 📜flutter_window.cpp
 ┃ ┃ ┃ ┣ 📜flutter_window.h
 ┃ ┃ ┃ ┣ 📜main.cpp
 ┃ ┃ ┃ ┣ 📜resource.h
 ┃ ┃ ┃ ┣ 📜runner.exe.manifest
 ┃ ┃ ┃ ┣ 📜Runner.rc
 ┃ ┃ ┃ ┣ 📜utils.cpp
 ┃ ┃ ┃ ┣ 📜utils.h
 ┃ ┃ ┃ ┣ 📜win32_window.cpp
 ┃ ┃ ┃ ┗ 📜win32_window.h
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┗ 📜CMakeLists.txt
 ┃ ┣ 📜.env.example.json
 ┃ ┣ 📜.env.json
 ┃ ┣ 📜.flutter-plugins
 ┃ ┣ 📜.flutter-plugins-dependencies
 ┃ ┣ 📜.gitignore
 ┃ ┣ 📜.metadata
 ┃ ┣ 📜analysis_options.yaml
 ┃ ┣ 📜pubspec.lock
 ┃ ┣ 📜pubspec.yaml
 ┃ ┗ 📜README.md
 ┗ 📂mobile
 ┃ ┣ 📂.dart_tool
 ┃ ┃ ┣ 📂flutter_build
 ┃ ┃ ┃ ┣ 📂1fd008e64ef61c0fcb79d90086751be5
 ┃ ┃ ┃ ┃ ┣ 📜.filecache
 ┃ ┃ ┃ ┃ ┣ 📜app.dill
 ┃ ┃ ┃ ┃ ┣ 📜debug_android_application.stamp
 ┃ ┃ ┃ ┃ ┣ 📜flutter_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_dart_plugin_registrant.stamp
 ┃ ┃ ┃ ┃ ┣ 📜gen_l10n_inputs_and_outputs.json
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.stamp
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.d
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.yaml
 ┃ ┃ ┃ ┃ ┗ 📜outputs.json
 ┃ ┃ ┃ ┣ 📂d775dc06196d54b60628ce06a1d8bc4c
 ┃ ┃ ┃ ┃ ┣ 📜.filecache
 ┃ ┃ ┃ ┃ ┣ 📜app.dill
 ┃ ┃ ┃ ┃ ┣ 📜debug_android_application.stamp
 ┃ ┃ ┃ ┃ ┣ 📜flutter_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_dart_plugin_registrant.stamp
 ┃ ┃ ┃ ┃ ┣ 📜gen_l10n_inputs_and_outputs.json
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.stamp
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.d
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.yaml
 ┃ ┃ ┃ ┃ ┗ 📜outputs.json
 ┃ ┃ ┃ ┣ 📂e36a3f6a03aef7e67a33ac8fde746dcc
 ┃ ┃ ┃ ┃ ┣ 📜.filecache
 ┃ ┃ ┃ ┃ ┣ 📜app.dill
 ┃ ┃ ┃ ┃ ┣ 📜debug_android_application.stamp
 ┃ ┃ ┃ ┃ ┣ 📜flutter_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_dart_plugin_registrant.stamp
 ┃ ┃ ┃ ┃ ┣ 📜gen_l10n_inputs_and_outputs.json
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.stamp
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.d
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.yaml
 ┃ ┃ ┃ ┃ ┗ 📜outputs.json
 ┃ ┃ ┃ ┣ 📂f4c9d36069cb0e8411eeb00eb8447608
 ┃ ┃ ┃ ┃ ┣ 📜.filecache
 ┃ ┃ ┃ ┃ ┣ 📜app.dill
 ┃ ┃ ┃ ┃ ┣ 📜debug_android_application.stamp
 ┃ ┃ ┃ ┃ ┣ 📜flutter_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_dart_plugin_registrant.stamp
 ┃ ┃ ┃ ┃ ┣ 📜gen_l10n_inputs_and_outputs.json
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.d
 ┃ ┃ ┃ ┃ ┣ 📜gen_localizations.stamp
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.d
 ┃ ┃ ┃ ┃ ┣ 📜kernel_snapshot.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.d
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.stamp
 ┃ ┃ ┃ ┃ ┣ 📜native_assets.yaml
 ┃ ┃ ┃ ┃ ┗ 📜outputs.json
 ┃ ┃ ┃ ┗ 📜dart_plugin_registrant.dart
 ┃ ┃ ┣ 📜package_config.json
 ┃ ┃ ┣ 📜package_config_subset
 ┃ ┃ ┗ 📜version
 ┃ ┣ 📂android
 ┃ ┃ ┣ 📂.gradle
 ┃ ┃ ┃ ┣ 📂8.1.1
 ┃ ┃ ┃ ┃ ┣ 📂checksums
 ┃ ┃ ┃ ┃ ┃ ┣ 📜checksums.lock
 ┃ ┃ ┃ ┃ ┃ ┣ 📜md5-checksums.bin
 ┃ ┃ ┃ ┃ ┃ ┗ 📜sha1-checksums.bin
 ┃ ┃ ┃ ┃ ┣ 📂dependencies-accessors
 ┃ ┃ ┃ ┃ ┃ ┣ 📜dependencies-accessors.lock
 ┃ ┃ ┃ ┃ ┃ ┗ 📜gc.properties
 ┃ ┃ ┃ ┃ ┣ 📂executionHistory
 ┃ ┃ ┃ ┃ ┃ ┣ 📜executionHistory.bin
 ┃ ┃ ┃ ┃ ┃ ┗ 📜executionHistory.lock
 ┃ ┃ ┃ ┃ ┣ 📂fileChanges
 ┃ ┃ ┃ ┃ ┃ ┗ 📜last-build.bin
 ┃ ┃ ┃ ┃ ┣ 📂fileHashes
 ┃ ┃ ┃ ┃ ┃ ┣ 📜fileHashes.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜fileHashes.lock
 ┃ ┃ ┃ ┃ ┃ ┗ 📜resourceHashesCache.bin
 ┃ ┃ ┃ ┃ ┣ 📂vcsMetadata
 ┃ ┃ ┃ ┃ ┗ 📜gc.properties
 ┃ ┃ ┃ ┣ 📂buildOutputCleanup
 ┃ ┃ ┃ ┃ ┣ 📜buildOutputCleanup.lock
 ┃ ┃ ┃ ┃ ┣ 📜cache.properties
 ┃ ┃ ┃ ┃ ┗ 📜outputFiles.bin
 ┃ ┃ ┃ ┣ 📂kotlin
 ┃ ┃ ┃ ┃ ┣ 📂errors
 ┃ ┃ ┃ ┃ ┗ 📂sessions
 ┃ ┃ ┃ ┣ 📂vcs-1
 ┃ ┃ ┃ ┃ ┗ 📜gc.properties
 ┃ ┃ ┃ ┗ 📜file-system.probe
 ┃ ┃ ┣ 📂app
 ┃ ┃ ┃ ┣ 📂src
 ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂main
 ┃ ┃ ┃ ┃ ┃ ┣ 📂java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜GeneratedPluginRegistrant.java
 ┃ ┃ ┃ ┃ ┃ ┣ 📂kotlin
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂dev
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂zenta
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂sky_printing
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MainActivity.kt
 ┃ ┃ ┃ ┃ ┃ ┣ 📂res
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂drawable
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜launch_background.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂drawable-v21
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜launch_background.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-hdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-mdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xhdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xxhdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xxxhdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜styles.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂values-night
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜styles.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┗ 📂profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┣ 📜build.gradle
 ┃ ┃ ┃ ┗ 📜google-services.json
 ┃ ┃ ┣ 📂build
 ┃ ┃ ┃ ┗ 📜.last_build_id
 ┃ ┃ ┣ 📂gradle
 ┃ ┃ ┃ ┗ 📂wrapper
 ┃ ┃ ┃ ┃ ┣ 📜gradle-wrapper.jar
 ┃ ┃ ┃ ┃ ┗ 📜gradle-wrapper.properties
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┣ 📜build.gradle
 ┃ ┃ ┣ 📜gradle.properties
 ┃ ┃ ┣ 📜gradlew
 ┃ ┃ ┣ 📜gradlew.bat
 ┃ ┃ ┣ 📜local.properties
 ┃ ┃ ┗ 📜settings.gradle
 ┃ ┣ 📂assets
 ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┗ 📂Poppins
 ┃ ┃ ┃ ┃ ┣ 📜Bold.ttf
 ┃ ┃ ┃ ┃ ┣ 📜Medium.ttf
 ┃ ┃ ┃ ┃ ┣ 📜Regular.ttf
 ┃ ┃ ┃ ┃ ┗ 📜SemiBold.ttf
 ┃ ┃ ┗ 📂images
 ┃ ┃ ┃ ┣ 📜greeting.png
 ┃ ┃ ┃ ┣ 📜greeting.svg
 ┃ ┃ ┃ ┗ 📜sign-in.svg
 ┃ ┣ 📂build
 ┃ ┃ ┣ 📂2b41a1d17147e02ff088d0e190690c52
 ┃ ┃ ┃ ┣ 📜gen_dart_plugin_registrant.stamp
 ┃ ┃ ┃ ┣ 📜gen_l10n_inputs_and_outputs.json
 ┃ ┃ ┃ ┣ 📜gen_localizations.d
 ┃ ┃ ┃ ┣ 📜gen_localizations.stamp
 ┃ ┃ ┃ ┗ 📜_composite.stamp
 ┃ ┃ ┣ 📂90ca1e7218fa5aaadb00bc947130527c
 ┃ ┃ ┃ ┣ 📜.filecache
 ┃ ┃ ┃ ┣ 📜gen_l10n_inputs_and_outputs.json
 ┃ ┃ ┃ ┣ 📜gen_localizations.d
 ┃ ┃ ┃ ┗ 📜outputs.json
 ┃ ┃ ┣ 📂app
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata_check
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂apk_ide_redirect_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜redirect.txt
 ┃ ┃ ┃ ┃ ┣ 📂app_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜app-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter_assets
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂assets
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂Poppins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Bold.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Medium.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Regular.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜SemiBold.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂images
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜greeting.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜greeting.svg
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜sign-in.svg
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MaterialIcons-Regular.otf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂shaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ink_sparkle.frag
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AssetManifest.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AssetManifest.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FontManifest.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isolate_snapshot_data
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kernel_blob.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜NOTICES.Z
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜vm_snapshot_data
 ┃ ┃ ┃ ┃ ┣ 📂compatible_screen_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂compile_and_runtime_not_namespaced_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compressed_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂assets
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter_assets
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂assets
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂Poppins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Bold.ttf.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Medium.ttf.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Regular.ttf.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜SemiBold.ttf.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂images
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜greeting.png.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜greeting.svg.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜sign-in.svg.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MaterialIcons-Regular.otf.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂shaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ink_sparkle.frag.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AssetManifest.bin.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AssetManifest.json.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FontManifest.json.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isolate_snapshot_data.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kernel_blob.bin.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜NOTICES.Z.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜vm_snapshot_data.jar
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_merge
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂desugar_graph
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂currentProject
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dirs_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dirs_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dirs_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dirs_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dirs_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dirs_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_c938d7b5b3b8a6e55f8b9e48bf8c66c16ff0780450ea28ff6718e49f0cc08513_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_c938d7b5b3b8a6e55f8b9e48bf8c66c16ff0780450ea28ff6718e49f0cc08513_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_c938d7b5b3b8a6e55f8b9e48bf8c66c16ff0780450ea28ff6718e49f0cc08513_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_c938d7b5b3b8a6e55f8b9e48bf8c66c16ff0780450ea28ff6718e49f0cc08513_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_c938d7b5b3b8a6e55f8b9e48bf8c66c16ff0780450ea28ff6718e49f0cc08513_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jar_c938d7b5b3b8a6e55f8b9e48bf8c66c16ff0780450ea28ff6718e49f0cc08513_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂externalLibs
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mixedScopes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂otherProjects
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_004fdfac1081e67cf092052924aefccc530b1e95013a07aca0baee6d8ae38bcf_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_004fdfac1081e67cf092052924aefccc530b1e95013a07aca0baee6d8ae38bcf_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_004fdfac1081e67cf092052924aefccc530b1e95013a07aca0baee6d8ae38bcf_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_004fdfac1081e67cf092052924aefccc530b1e95013a07aca0baee6d8ae38bcf_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_004fdfac1081e67cf092052924aefccc530b1e95013a07aca0baee6d8ae38bcf_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_004fdfac1081e67cf092052924aefccc530b1e95013a07aca0baee6d8ae38bcf_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_15a13e3638e44d26b7c378712d1a090de4bb2747b7f50b9454a7f2e944683a52_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_15a13e3638e44d26b7c378712d1a090de4bb2747b7f50b9454a7f2e944683a52_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_15a13e3638e44d26b7c378712d1a090de4bb2747b7f50b9454a7f2e944683a52_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_15a13e3638e44d26b7c378712d1a090de4bb2747b7f50b9454a7f2e944683a52_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_15a13e3638e44d26b7c378712d1a090de4bb2747b7f50b9454a7f2e944683a52_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_15a13e3638e44d26b7c378712d1a090de4bb2747b7f50b9454a7f2e944683a52_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_51326c0fd5d3911567fe7c5ba301d55523bdad5d41a5a28f8a7ab236e1e99f0c_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_51326c0fd5d3911567fe7c5ba301d55523bdad5d41a5a28f8a7ab236e1e99f0c_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_51326c0fd5d3911567fe7c5ba301d55523bdad5d41a5a28f8a7ab236e1e99f0c_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_51326c0fd5d3911567fe7c5ba301d55523bdad5d41a5a28f8a7ab236e1e99f0c_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_51326c0fd5d3911567fe7c5ba301d55523bdad5d41a5a28f8a7ab236e1e99f0c_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_51326c0fd5d3911567fe7c5ba301d55523bdad5d41a5a28f8a7ab236e1e99f0c_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_70da7ce74cb5153276f9ab60115581dc06d755f591b192b841024b883f603d55_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_70da7ce74cb5153276f9ab60115581dc06d755f591b192b841024b883f603d55_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_70da7ce74cb5153276f9ab60115581dc06d755f591b192b841024b883f603d55_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_70da7ce74cb5153276f9ab60115581dc06d755f591b192b841024b883f603d55_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_70da7ce74cb5153276f9ab60115581dc06d755f591b192b841024b883f603d55_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_70da7ce74cb5153276f9ab60115581dc06d755f591b192b841024b883f603d55_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_9c174a8647f5925b359e2dc96477d0c085ad46a84a20df99237d07a6d40b1049_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_9c174a8647f5925b359e2dc96477d0c085ad46a84a20df99237d07a6d40b1049_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_9c174a8647f5925b359e2dc96477d0c085ad46a84a20df99237d07a6d40b1049_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_9c174a8647f5925b359e2dc96477d0c085ad46a84a20df99237d07a6d40b1049_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_9c174a8647f5925b359e2dc96477d0c085ad46a84a20df99237d07a6d40b1049_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_9c174a8647f5925b359e2dc96477d0c085ad46a84a20df99237d07a6d40b1049_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_a735de5cbc61321040644fa78f2b8ec20fa7d63369dcaeef911bc9e722030e88_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_a735de5cbc61321040644fa78f2b8ec20fa7d63369dcaeef911bc9e722030e88_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_a735de5cbc61321040644fa78f2b8ec20fa7d63369dcaeef911bc9e722030e88_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_a735de5cbc61321040644fa78f2b8ec20fa7d63369dcaeef911bc9e722030e88_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_a735de5cbc61321040644fa78f2b8ec20fa7d63369dcaeef911bc9e722030e88_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_a735de5cbc61321040644fa78f2b8ec20fa7d63369dcaeef911bc9e722030e88_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b2dedaa88e4832f28b6fa1695a10d93f648f940437a2c43b1d3b58d38159fe23_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b2dedaa88e4832f28b6fa1695a10d93f648f940437a2c43b1d3b58d38159fe23_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b2dedaa88e4832f28b6fa1695a10d93f648f940437a2c43b1d3b58d38159fe23_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b2dedaa88e4832f28b6fa1695a10d93f648f940437a2c43b1d3b58d38159fe23_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b2dedaa88e4832f28b6fa1695a10d93f648f940437a2c43b1d3b58d38159fe23_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b2dedaa88e4832f28b6fa1695a10d93f648f940437a2c43b1d3b58d38159fe23_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b469272abad1abdbddc3829cb95d6e9abd9a8e853a5bc2fdc6b596bb7cf0f7cf_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b469272abad1abdbddc3829cb95d6e9abd9a8e853a5bc2fdc6b596bb7cf0f7cf_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b469272abad1abdbddc3829cb95d6e9abd9a8e853a5bc2fdc6b596bb7cf0f7cf_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b469272abad1abdbddc3829cb95d6e9abd9a8e853a5bc2fdc6b596bb7cf0f7cf_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b469272abad1abdbddc3829cb95d6e9abd9a8e853a5bc2fdc6b596bb7cf0f7cf_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b469272abad1abdbddc3829cb95d6e9abd9a8e853a5bc2fdc6b596bb7cf0f7cf_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b6dfcc8e93d7aae14396d12a13d81e673b485936389c0e1e128e865ed3c61a9b_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b6dfcc8e93d7aae14396d12a13d81e673b485936389c0e1e128e865ed3c61a9b_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b6dfcc8e93d7aae14396d12a13d81e673b485936389c0e1e128e865ed3c61a9b_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b6dfcc8e93d7aae14396d12a13d81e673b485936389c0e1e128e865ed3c61a9b_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b6dfcc8e93d7aae14396d12a13d81e673b485936389c0e1e128e865ed3c61a9b_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_b6dfcc8e93d7aae14396d12a13d81e673b485936389c0e1e128e865ed3c61a9b_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_cf0e5bf0926870594a46e06828bb1e492fa91cda1864aa17b3bf663d97d65620_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_cf0e5bf0926870594a46e06828bb1e492fa91cda1864aa17b3bf663d97d65620_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_cf0e5bf0926870594a46e06828bb1e492fa91cda1864aa17b3bf663d97d65620_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_cf0e5bf0926870594a46e06828bb1e492fa91cda1864aa17b3bf663d97d65620_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_cf0e5bf0926870594a46e06828bb1e492fa91cda1864aa17b3bf663d97d65620_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_cf0e5bf0926870594a46e06828bb1e492fa91cda1864aa17b3bf663d97d65620_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_ecc50f3181f06bd4d4c7df78f14e17d7a406bd274f0e3a01f5c006196fffefbf_bucket_0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_ecc50f3181f06bd4d4c7df78f14e17d7a406bd274f0e3a01f5c006196fffefbf_bucket_1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_ecc50f3181f06bd4d4c7df78f14e17d7a406bd274f0e3a01f5c006196fffefbf_bucket_2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_ecc50f3181f06bd4d4c7df78f14e17d7a406bd274f0e3a01f5c006196fffefbf_bucket_3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jar_ecc50f3181f06bd4d4c7df78f14e17d7a406bd274f0e3a01f5c006196fffefbf_bucket_4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jar_ecc50f3181f06bd4d4c7df78f14e17d7a406bd274f0e3a01f5c006196fffefbf_bucket_5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜graph.bin
 ┃ ┃ ┃ ┃ ┣ 📂dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeExtDexDebug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes2.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeLibDexDebug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂10
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂11
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂12
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂13
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂14
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂15
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂6
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂7
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂8
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂9
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂mergeProjectDexDebug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂1
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂10
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂11
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂12
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂13
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂14
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂15
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂3
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂5
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂6
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂7
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂8
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂9
 ┃ ┃ ┃ ┃ ┣ 📂dex_archive_input_jar_hashes
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜out
 ┃ ┃ ┃ ┃ ┣ 📂dex_number_of_buckets_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜out
 ┃ ┃ ┃ ┃ ┣ 📂duplicate_classes_check
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂external_file_lib_dex_archives
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂external_libs_dex_archive
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂external_libs_dex_archive_with_artifact_transforms
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂flutter_assets
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂assets
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂Poppins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Bold.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Medium.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Regular.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜SemiBold.ttf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂images
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜greeting.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜greeting.svg
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜sign-in.svg
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂fonts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MaterialIcons-Regular.otf
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂shaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ink_sparkle.frag
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AssetManifest.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AssetManifest.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FontManifest.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isolate_snapshot_data
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kernel_blob.bin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜NOTICES.Z
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜vm_snapshot_data
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜.last_build_id
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜flutter_build.d
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜libs.jar
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-af
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-af.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-am
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-am.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ar.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-as
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-as.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-az
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-az.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-b+sr+Latn
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-b+sr+Latn.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-be
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-be.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-bg
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-bg.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-bn
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-bn.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-bs
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-bs.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ca
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ca.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-cs
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-cs.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-da
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-da.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-de
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-de.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-el
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-el.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-en-rAU
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-en-rAU.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-en-rCA
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-en-rCA.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-en-rGB
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-en-rGB.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-en-rIN
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-en-rIN.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-en-rXC
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-en-rXC.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-es
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-es.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-es-rUS
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-es-rUS.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-et
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-et.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-eu
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-eu.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-fa
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-fa.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-fi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-fi.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-fr
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-fr.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-fr-rCA
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-fr-rCA.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-gl
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-gl.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-gu
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-gu.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-h720dp-v13
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-h720dp-v13.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-hdpi-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-hdpi-v4.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-hi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-hi.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-hr
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-hr.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-hu
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-hu.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-hy
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-hy.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-in
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-in.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-is
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-is.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-it
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-it.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-iw
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-iw.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ja
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ja.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ka
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ka.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-kk
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-kk.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-km
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-km.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-kn
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-kn.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ko
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ko.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ky
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ky.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-land
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-land.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-large-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-large-v4.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ldltr-v21
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ldltr-v21.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-lo
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-lo.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-lt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-lt.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-lv
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-lv.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-mk
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-mk.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ml.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-mn
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-mn.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-mr
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-mr.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ms
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ms.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-my
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-my.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-nb
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-nb.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ne
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ne.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-night-v8
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-night-v8.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-nl
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-nl.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-or
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-or.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-pa
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-pa.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-pl
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-pl.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-port
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-port.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-pt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-pt.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-pt-rBR
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-pt-rBR.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-pt-rPT
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-pt-rPT.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ro
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ro.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ru
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ru.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-si
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-si.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-sk
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-sk.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-sl
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-sl.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-sq
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-sq.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-sr
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-sr.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-sv
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-sv.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-sw
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-sw.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-sw600dp-v13
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-sw600dp-v13.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ta
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ta.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-te
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-te.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-th
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-th.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-tl
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-tl.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-tr
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-tr.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-uk
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-uk.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-ur
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-ur.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-uz
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-uz.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v16
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v16.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v17
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v17.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v18
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v18.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v21
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v21.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v22
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v22.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v23
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v23.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v24
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v24.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v25
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v25.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v26
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v26.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-v28
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-v28.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-vi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-vi.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-watch-v20
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-watch-v20.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-watch-v21
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-watch-v21.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-xlarge-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-xlarge-v4.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-zh-rCN
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-zh-rCN.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-zh-rHK
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-zh-rHK.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values-zh-rTW
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-zh-rTW.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂values-zu
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-zu.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂values-night-v8
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-night-v8.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜+bhS0BiqNdvnETJGhg_OqcQrecQ=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜+rKoXhYfWgr7rPG4nkquKe+IG_g=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜0adYcvtIcvapWZxjYC7PyOyrDoE=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜0KQAdflIADzv1Idyaog+b5pjBR4=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜0Q5Ai99VSrpifWZakoKIIwHb55c=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜0YYNNVitwBQLOycTYLqVHDrFI_s=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜0Z6rxUTiRHk2M95LjY4EhdpTCS0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜1Ay+2_k87KvOQQ30AEnk2+wDCxo=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜35ECXvs5z8USSOFmLQTmm5B2QmI=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜3Q1eNF+owfxY+1tjvu_3eN3qk7c=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜4mZqw6bpzQiJuNmumHScEhG0fDA=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜4tj+0Q54adyHFxnabL7mfuum9u0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜4VGndlb8goZmiHKyWtCFJRGZO5U=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜54RdoawUj16JLATdBf9kxH3Y7ds=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜61mj+K6eprhSdEW4uzMP_xgC_8k=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜67gq0LKsNneyPtzfKbhFRyumfNY=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜7iaD1XFZp+KVaWH9iL2uVaEK8jI=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜8kVTGTVSV2EoTnTVS_FVI01biDg=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜9SXd9e5uIQ2e6LRoEjJysXFGBXY=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜9TTm8UHFhAre5Ypb8Eq9o6Uldys=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜9vicQCvdjrqwEW68qxyWHHkwG5E=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AdxfZdd1qjjELPlDiPW4m1_yAHg=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜aKIHGKFX+IYkvEQeroddd2hTTdE=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AzIfFJJZ0leS6uldMaLqpG2FF3g=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bAzgYTdZ4Q3H32NDT4dxkcq0QbY=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BhamiPcsgs0H_o1LHHG4XG0AWUo=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BiR0eqEYKEsIc6YGIY8450G9pVw=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BKJHYCEzPKB5BTYyayG0JIZC1X0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜byoSQgd+cP070RaGhy9NDLEMSJ8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜c4rrZz0110MvDY6A9PNyD86Exk0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cWOUkAoaeHWyTvG1UZlap43UQp8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cWUJ4G7eEZ_eV_v9V_TmiCkQNUo=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜d6XQECpjya3X7NR7yFpqI3Ndn0Q=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DhuqmPUg1oZwu7dF+UQOjem8Jzc=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DOTBq3gieb+ub3EPxoM1xHsrKaM=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜dqLHa4kP2ZVLROnWsVTlieB6Vzo=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜E1t+SnwuytvFqd54Xp0WsbNqf1g=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜eRDAISNkd2nZMdEK+OIC6rbDdb8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜eYbwwohMmF7t_jjEad0JxCU5Ti4=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FK4XvvK48AZadV4kqBbLqfVbQfQ=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FOInQE242Yy9dXJN3RsfvxBLIWU=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜fYwd8WwTu5_iPasli2oFFomE27s=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜gHWMMbmGn0H_3PNmb2Z8DbJylM0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GjD27Ap6yq6VTITHGHfeZiUNR4I=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜HdAM1RF586yOnJhBmvm1C+aDD2Q=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ITTYBJGSOMM1bq2919Ki3KJw3S4=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜JeB0TkPy5hbQar_yTbmkd3GNct8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜jJ5E0Zn7ZMXKAd7wjA1bNScAtFA=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜jJ_SJ_3bIRZWTBp4T_ulF0brAsM=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜JvPp7sJXfWuT2aAtMM1ORDELFR0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜kih2fOK7baryIJyak0qHE_7JZ1k=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜L29gJivaNHZoXRC1zq5CbNvZlwY=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LoV5eFJU91pjkSqNxt4PsbR_Fz4=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜M4KBMmrKA2le5wN2e9ewATzJMSU=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜mKWB2sRwIpYXU11J5GMsPnX9s_4=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MOO+6wcTZMM12sR1IUy2OYWH3g0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜mTQtRe3rKs94NrIfqyzXVBGv0nY=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MzMgLBC3+4JFE1pqLhavdJyLsto=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜nfdjnSt0BLXiCQvn4KgE+YaHqpE=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜NNY7OxaIv2qLDVH8w6Lrbgb0BMk=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜nPS3S34QxNtfLC0Iy37a9+83rh4=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜nUH3H9HsRao2gh4PyBd3upSg2B0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜nyH+BF3SmU89MquYX1p4kb44WJ0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜oFp47e5ePyNZPHdrDDX1m5prbtU=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜pEPr_dK+oO14Suy2hGCCxnJSJWs=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PkkLLxpteWbOQ3nfebV6ewBa2RA=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PLvLsUn0zlbTGkxuWyp2y2FNh6s=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Pzj9A9zUhqJIzxXi+dqYJ1Whzpg=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜QDMF72bNgMSZLePGZko4JleuPd0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RwOIfjoe5IcqlAJSW25BGJt_Yy0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RWqtWs+a_k+wNdAc19ZJ07ymlg8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜s3em9z9xtd8+jGCfWWjMtXCWNq8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜sswlLQ9+NK2hQbpH4Q29hhSJEh8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Su8r9h_EoiHtxUMG++ijLy1Bbc8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜syZnM34J9_307O46PMsekKLhMWQ=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜t+rD4yb_+Fx1Vy9T6E3R7bjn3SM=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜t341xDnFs10MB1ma+rKWwTaFYe0=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Tf43o1kJ1kGZmnmK+hAjiTq1JuU=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TrKJ7kLOeB10VpD_agEa9hzJC7s=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜UK_GkjKo8QRsBylPE0AieT1JKMA=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜UUApvqW8ZOMc4keBBb6pLl+n+FA=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜V3Rl3Y4oqQT8zgjcVhwDcnpInGY=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Vm1rggqmLuiV7kg69Rjs_UraQ3c=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜vPKZOHwOdvDyQJ1Z4FxxmUSlLHQ=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜VryDXV2IUmj9ehITEOKQc0h8YYY=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜vSxEp0GU86yrreJ9l8US7rmP4Mk=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜W6rQ1It0mgqW6ikHkEtq2YcAKSI=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜WJT7jMBwkPCQenWXSQGChO+GaDw=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜wZD08BcKwKxxw5doQAmS3L8eTSI=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜x6QWWFBd5OWDmkxFF4afuhUhhSM=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜xGwZ9fw0KJQzqlGFdjmFF_ZU6MI=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜XLKWP5wd0qfp0qrM6YhiXHzy078=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜XVPUOG4bpZ8dNfHzs2zIO6xn1+8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜yrw1XtbER0YesV+8G_m3msOzzCo=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ZC_6vkzRx0IQ+BXrg2zzp3d6SNc=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ZlSlRrIILvz_nJ8M0jPBMuVnXJ4=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ZV8nNHir3xFh8VVH75HMh6NN7VA=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ZZFiCzlVLGBIZFxAhRvNLJmxm6I=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜_L2MgSmA6DAjhSvlmYblQkdodDo=
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜_QPmEoF1j7lVngl4DP4NUM+LUa8=
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜androidResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜javaResources0
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜dex-renamer-state.txt
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜GeneratedPluginRegistrant.class
 ┃ ┃ ┃ ┃ ┣ 📂java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dev
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂zenta
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂sky_printing
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂META-INF
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜app_debug.kotlin_module
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜base.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂merged_native_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lib
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂arm64-v8a
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜libc++_shared.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜libflutter.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜libVkLayer_khronos_validation.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂x86
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜libflutter.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂x86_64
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜libflutter.so
 ┃ ┃ ┃ ┃ ┣ 📂merged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜drawable-v21_launch_background.xml.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜mipmap-hdpi_ic_launcher.png.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜mipmap-mdpi_ic_launcher.png.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜mipmap-xhdpi_ic_launcher.png.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜mipmap-xxhdpi_ic_launcher.png.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜mipmap-xxxhdpi_ic_launcher.png.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-af_values-af.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-am_values-am.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ar_values-ar.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-as_values-as.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-az_values-az.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-b+sr+Latn_values-b+sr+Latn.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-be_values-be.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-bg_values-bg.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-bn_values-bn.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-bs_values-bs.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ca_values-ca.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-cs_values-cs.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-da_values-da.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-de_values-de.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-el_values-el.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rAU_values-en-rAU.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rCA_values-en-rCA.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rGB_values-en-rGB.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rIN_values-en-rIN.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rXC_values-en-rXC.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-es-rUS_values-es-rUS.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-es_values-es.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-et_values-et.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-eu_values-eu.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fa_values-fa.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fi_values-fi.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fr-rCA_values-fr-rCA.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fr_values-fr.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-gl_values-gl.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-gu_values-gu.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-h720dp-v13_values-h720dp-v13.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hdpi-v4_values-hdpi-v4.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hi_values-hi.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hr_values-hr.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hu_values-hu.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hy_values-hy.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-in_values-in.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-is_values-is.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-it_values-it.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-iw_values-iw.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ja_values-ja.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ka_values-ka.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-kk_values-kk.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-km_values-km.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-kn_values-kn.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ko_values-ko.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ky_values-ky.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-land_values-land.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-large-v4_values-large-v4.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ldltr-v21_values-ldltr-v21.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-lo_values-lo.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-lt_values-lt.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-lv_values-lv.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-mk_values-mk.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ml_values-ml.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-mn_values-mn.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-mr_values-mr.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ms_values-ms.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-my_values-my.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-nb_values-nb.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ne_values-ne.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-night-v8_values-night-v8.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-nl_values-nl.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-or_values-or.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pa_values-pa.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pl_values-pl.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-port_values-port.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pt-rBR_values-pt-rBR.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pt-rPT_values-pt-rPT.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pt_values-pt.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ro_values-ro.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ru_values-ru.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-si_values-si.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sk_values-sk.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sl_values-sl.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sq_values-sq.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sr_values-sr.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sv_values-sv.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sw600dp-v13_values-sw600dp-v13.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sw_values-sw.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ta_values-ta.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-te_values-te.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-th_values-th.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-tl_values-tl.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-tr_values-tr.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-uk_values-uk.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ur_values-ur.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-uz_values-uz.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v16_values-v16.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v17_values-v17.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v18_values-v18.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v21_values-v21.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v22_values-v22.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v23_values-v23.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v24_values-v24.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v25_values-v25.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v26_values-v26.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v28_values-v28.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-vi_values-vi.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-watch-v20_values-watch-v20.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-watch-v21_values-watch-v21.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-xlarge-v4_values-xlarge-v4.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zh-rCN_values-zh-rCN.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zh-rHK_values-zh-rHK.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zh-rTW_values-zh-rTW.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zu_values-zu.arsc.flat
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values_values.arsc.flat
 ┃ ┃ ┃ ┃ ┣ 📂merged_res_blame_folder
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂multi-v2
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜debug.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-af.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-am.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ar.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-as.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-az.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-b+sr+Latn.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-be.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-bg.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-bn.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-bs.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ca.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-cs.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-da.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-de.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-el.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rAU.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rCA.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rGB.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rIN.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-en-rXC.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-es-rUS.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-es.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-et.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-eu.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fa.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fi.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fr-rCA.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-fr.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-gl.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-gu.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-h720dp-v13.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hdpi-v4.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hi.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hr.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hu.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-hy.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-in.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-is.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-it.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-iw.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ja.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ka.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-kk.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-km.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-kn.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ko.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ky.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-land.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-large-v4.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ldltr-v21.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-lo.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-lt.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-lv.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-mk.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ml.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-mn.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-mr.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ms.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-my.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-nb.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ne.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-night-v8.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-nl.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-or.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pa.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pl.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-port.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pt-rBR.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pt-rPT.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-pt.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ro.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ru.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-si.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sk.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sl.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sq.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sr.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sv.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sw.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-sw600dp-v13.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ta.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-te.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-th.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-tl.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-tr.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-uk.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-ur.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-uz.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v16.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v17.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v18.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v21.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v22.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v23.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v24.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v25.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v26.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-v28.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-vi.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-watch-v20.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-watch-v21.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-xlarge-v4.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zh-rCN.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zh-rHK.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zh-rTW.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜values-zu.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂single
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜debug.json
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂mixed_scope_dex_archive
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂packaged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂drawable-v21
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜launch_background.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-hdpi-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-mdpi-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xhdpi-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xxhdpi-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xxxhdpi-v4
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂values-night-v8
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values-night-v8.xml
 ┃ ┃ ┃ ┃ ┣ 📂processed_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜resources-debug.ap_
 ┃ ┃ ┃ ┃ ┣ 📂project_dex_archive
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dev
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂zenta
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂sky_printing
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MainActivity.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜GeneratedPluginRegistrant.dex
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ba2547f3935b2cf51ec1bc6bbcb4af5b9e1d963b89e1bcbea0ddbad9bbe8d2d6_0.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ba2547f3935b2cf51ec1bc6bbcb4af5b9e1d963b89e1bcbea0ddbad9bbe8d2d6_1.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ba2547f3935b2cf51ec1bc6bbcb4af5b9e1d963b89e1bcbea0ddbad9bbe8d2d6_2.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ba2547f3935b2cf51ec1bc6bbcb4af5b9e1d963b89e1bcbea0ddbad9bbe8d2d6_3.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ba2547f3935b2cf51ec1bc6bbcb4af5b9e1d963b89e1bcbea0ddbad9bbe8d2d6_4.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ba2547f3935b2cf51ec1bc6bbcb4af5b9e1d963b89e1bcbea0ddbad9bbe8d2d6_5.jar
 ┃ ┃ ┃ ┃ ┣ 📂runtime_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂signing_config_versions
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜signing-config-versions.json
 ┃ ┃ ┃ ┃ ┣ 📂source_set_path_map
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜file-map.txt
 ┃ ┃ ┃ ┃ ┣ 📂stripped_native_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lib
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂arm64-v8a
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜libc++_shared.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜libflutter.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜libVkLayer_khronos_validation.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂x86
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜libflutter.so
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂x86_64
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜libflutter.so
 ┃ ┃ ┃ ┃ ┣ 📂sub_project_dex_archive
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜0de3647b184f1ca5b9955555e972c68c58e8e1e47f5c45d495c6a6da20911b0e_1.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜1f9d32e0822925834e63bdc064aa14d505e4ea7879a278308163d9ff2081221b_0.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜1f9d32e0822925834e63bdc064aa14d505e4ea7879a278308163d9ff2081221b_2.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜21c25b792a9e9d37897f7f2d7b66f159872f092fc2af8fdd5a10231b045be95e_3.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜552460aae4e9db0d8823299f6e5a1681ae5ccc4ddd32ae26736abd8e43918653_3.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜719c06c18774099d091fb3f6e6f9bb56f24613585a2a9b9cd5f735cfd6af04f1_3.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜77267b45bc1d04bf72de4b203ccdea86fbb6b5c2a73c990a138abfd2b6123d4c_4.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜7c0b82e114429d767e3e3567204784f2067984e6ea2e9ce5b2645aafda1d35aa_0.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜87f91cc0be6cec0dfefdd15d8538db015ae2271c3c973dcf96fc99493be74148_3.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜9c2e0d2892489b75bfc99d6108d2ae4a723bca5fa74ddebbda895e52b33a4e52_1.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜9c2e0d2892489b75bfc99d6108d2ae4a723bca5fa74ddebbda895e52b33a4e52_5.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜a74926cbce42f516d71dfa60d9bc7559fbfef5af386479a539ce39907dbe6d97_5.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜dd25b6a031c254e2c0e3def1d559c9051856816cfe14c863717c56907e4ea657_1.jar
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜dd25b6a031c254e2c0e3def1d559c9051856816cfe14c863717c56907e4ea657_2.jar
 ┃ ┃ ┃ ┃ ┣ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┃ ┗ 📂validate_signing_config
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂kotlin
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugKotlin
 ┃ ┃ ┃ ┃ ┃ ┣ 📂cacheable
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂caches-jvm
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂inputs
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜source-to-output.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jvm
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂kotlin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜supertypes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lookups
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜counters.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜lookups.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜last-build.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📂classpath-snapshot
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜shrunk-classpath-snapshot.bin
 ┃ ┃ ┃ ┃ ┃ ┗ 📂local-state
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜build-history.bin
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂apk
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜app-debug.apk
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂flutter-apk
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app-debug.apk
 ┃ ┃ ┃ ┃ ┃ ┗ 📜app-debug.apk.sha1
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┣ 📂snapshot
 ┃ ┃ ┃ ┃ ┗ 📂kotlin
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┣ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┣ 📂compileTransaction
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂backup-dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂stash-dir
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┃ ┃ ┣ 📂kotlin-classes
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dev
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂zenta
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂sky_printing
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MainActivity.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂META-INF
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜app_debug.kotlin_module
 ┃ ┃ ┃ ┃ ┗ 📂packLibsflutterBuildDebug
 ┃ ┃ ┃ ┃ ┃ ┗ 📜MANIFEST.MF
 ┃ ┃ ┣ 📂file_picker
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂2268479b48d51adb68c1e46cdf37ab7c
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂mr
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂filepicker
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FileInfo$Builder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FileInfo.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerDelegate$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerDelegate$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerDelegate$3.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerDelegate$PermissionManager.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerDelegate.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerPlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerPlugin$LifeCycleObserver.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerPlugin$MethodResultWrapper$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerPlugin$MethodResultWrapper$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerPlugin$MethodResultWrapper$3.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerPlugin$MethodResultWrapper.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FilePickerPlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FileUtils.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-file_picker.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜file_picker-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂firebase_analytics
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂0e54167c83d365b5f0df6f94a4e317d4
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┗ 📂source
 ┃ ┃ ┃ ┃ ┃ ┗ 📂buildConfig
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂analytics
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BuildConfig.java
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂analytics
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BuildConfig.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Constants.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseAnalyticsPlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseAnalyticsPlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FlutterFirebaseAppRegistrar.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-firebase_analytics.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜firebase_analytics-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂firebase_core
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂d92b6fb73f8798dae65cbe9140fe3774
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┗ 📂source
 ┃ ┃ ┃ ┃ ┃ ┗ 📂buildConfig
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂core
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BuildConfig.java
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂core
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BuildConfig.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseCorePlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseCoreRegistrar.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebasePlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebasePluginRegistry.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseAppHostApi$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseAppHostApi$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseAppHostApi$3.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseAppHostApi.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseCoreHostApi$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseCoreHostApi$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseCoreHostApi$3.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseCoreHostApi.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FirebaseCoreHostApiCodec.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$FlutterError.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$PigeonFirebaseOptions$Builder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$PigeonFirebaseOptions.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$PigeonInitializeResponse$Builder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$PigeonInitializeResponse.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeneratedAndroidFirebaseCore$Result.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜GeneratedAndroidFirebaseCore.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-firebase_core.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜firebase_core-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂firebase_crashlytics
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂cdd77831ab0e47995e06112cb1f260f2
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┗ 📂source
 ┃ ┃ ┃ ┃ ┃ ┗ 📂buildConfig
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂crashlytics
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BuildConfig.java
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂values
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂google
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂crashlytics
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FlutterFirebaseCrashlyticsInternal.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂crashlytics
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BuildConfig.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Constants.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FirebaseCrashlyticsTestCrash.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterError.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseAppRegistrar.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseCrashlyticsPlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseCrashlyticsPlugin$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseCrashlyticsPlugin$3.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseCrashlyticsPlugin$4.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FlutterFirebaseCrashlyticsPlugin.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-firebase_crashlytics.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂values
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜values.xml
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜firebase_crashlytics-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂firebase_performance
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂99054384f44c6db8ffcaaa3c95ed02be
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┗ 📂source
 ┃ ┃ ┃ ┃ ┃ ┗ 📂buildConfig
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂performance
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BuildConfig.java
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂performance
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BuildConfig.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebaseAppRegistrar.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterFirebasePerformancePlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FlutterFirebasePerformancePlugin.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-firebase_performance.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜firebase_performance-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂flutter_plugin_android_lifecycle
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂2ba9e01c39debe2e3cfff5d163b8117d
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂embedding
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂engine
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lifecycle
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FlutterLifecycleAdapter.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter_plugin_android_lifecycle
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FlutterAndroidLifecyclePlugin.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜proguard.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-flutter_plugin_android_lifecycle.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜flutter_plugin_android_lifecycle-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂geocoding_android
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂099d4a4ec1ef2356ae2bedbafc6ea1d9
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂baseflow
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂geocoding
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂utils
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AddressLineParser.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AddressMapper.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜LocaleConverter.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Geocoding.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GeocodingPlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MethodCallHandlerImpl.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-geocoding_android.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜geocoding_android-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂google_maps_flutter_android
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂85b6cf89addc2705063aad8a270f0477
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂googlemaps
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CircleBuilder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CircleController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CircleOptionsSink.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CirclesController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Convert.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapBuilder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapController$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapController$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapFactory.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapInitializer$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapInitializer.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapListener.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapOptionsSink.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapsPlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapsPlugin$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapsPlugin$ProxyLifecycleProvider.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜GoogleMapsPlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LifecycleProvider.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MarkerBuilder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MarkerController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MarkerOptionsSink.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MarkersController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolygonBuilder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolygonController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolygonOptionsSink.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolygonsController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolylineBuilder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolylineController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolylineOptionsSink.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PolylinesController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TileOverlayBuilder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TileOverlayController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TileOverlaysController.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TileOverlaySink.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TileProviderController$Worker.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜TileProviderController.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-google_maps_flutter_android.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜google_maps_flutter_android-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂location
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂2d46312d910c5829833c36b739bbabab
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜drawable_navigation_empty_icon.xml.flat
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lyokone
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂location
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterLocation$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterLocation$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterLocation.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LocationPlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LocationPlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MethodCallHandlerImpl.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜StreamHandlerImpl.class
 ┃ ┃ ┃ ┃ ┣ 📂java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lyokone
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂location
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂META-INF
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜location_debug.kotlin_module
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-location.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂drawable
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation_empty_icon.xml
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂kotlin
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugKotlin
 ┃ ┃ ┃ ┃ ┃ ┣ 📂cacheable
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂caches-jvm
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂inputs
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-output.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜source-to-output.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂jvm
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂kotlin
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-attributes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜class-fq-name-to-source.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜constants.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜constants.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜constants.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜constants.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜constants.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜constants.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜constants.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜internal-name-to-source.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜java-sources-proto-map.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜java-sources-proto-map.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜java-sources-proto-map.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜java-sources-proto-map.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜java-sources-proto-map.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜java-sources-proto-map.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜java-sources-proto-map.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜package-parts.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜package-parts.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜package-parts.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜package-parts.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜package-parts.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜package-parts.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜package-parts.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜proto.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜source-to-classes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜subtypes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜supertypes.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜supertypes.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lookups
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜counters.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜file-to-id.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜id-to-file.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.keystream
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.keystream.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab.values.at
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜lookups.tab_i
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜lookups.tab_i.len
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜last-build.bin
 ┃ ┃ ┃ ┃ ┃ ┣ 📂classpath-snapshot
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜shrunk-classpath-snapshot.bin
 ┃ ┃ ┃ ┃ ┃ ┗ 📂local-state
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜build-history.bin
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜location-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┣ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┃ ┃ ┗ 📂kotlin-classes
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂lyokone
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂location
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BackgroundNotification.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterLocationService$Companion.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterLocationService$LocalBinder.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterLocationService.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FlutterLocationServiceKt.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜NotificationOptions.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂META-INF
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜location_debug.kotlin_module
 ┃ ┃ ┣ 📂path_provider_android
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂166ecff9d654165e269250b9bf316886
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂io
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂flutter
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂plugins
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂pathprovider
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Messages$FlutterError.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Messages$PathProviderApi.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Messages$StorageDirectory.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Messages.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PathProviderPlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PathProviderPlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜StorageDirectoryMapper.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-path_provider_android.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜path_provider_android-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📂sqflite
 ┃ ┃ ┃ ┣ 📂.transforms
 ┃ ┃ ┃ ┃ ┗ 📂646e24c775ae2589cb9bdf2d96798a09
 ┃ ┃ ┃ ┃ ┃ ┣ 📂transformed
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.dex
 ┃ ┃ ┃ ┃ ┃ ┗ 📜results.bin
 ┃ ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┃ ┣ 📂ap_generated_sources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┗ 📂res
 ┃ ┃ ┃ ┃ ┃ ┣ 📂pngs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📂resValues
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┣ 📂intermediates
 ┃ ┃ ┃ ┃ ┣ 📂aapt_friendly_merged_manifests
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂aapt
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜output-metadata.json
 ┃ ┃ ┃ ┃ ┣ 📂aar_libs_directory
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂libs
 ┃ ┃ ┃ ┃ ┣ 📂aar_main_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂aar_metadata
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜aar-metadata.properties
 ┃ ┃ ┃ ┃ ┣ 📂annotations_typedef_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜typedefs.txt
 ┃ ┃ ┃ ┃ ┣ 📂annotations_zip
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂annotation_processor_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜annotationProcessors.json
 ┃ ┃ ┃ ┃ ┣ 📂compiled_local_resources
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂compile_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_r_class_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.jar
 ┃ ┃ ┃ ┃ ┣ 📂compile_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R.txt
 ┃ ┃ ┃ ┃ ┣ 📂data_binding_layout_info_type_package
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂generated_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂incremental
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugResources
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂merged.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂stripped.dir
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜compile-file-map.properties
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂debug-mergeJavaRes
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂zip-cache
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merge-state
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugJniLibFolders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mergeDebugShaders
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📂packageDebugAssets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜merger.xml
 ┃ ┃ ┃ ┃ ┣ 📂javac
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂classes
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂tekartik
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂sqflite
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dev
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜Debug.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂operation
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BaseOperation.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BaseReadOperation.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BatchOperation$BatchOperationResult.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BatchOperation.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MethodCallOperation$Result.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MethodCallOperation.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Operation.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜OperationResult.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜OperationRunnable.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜QueuedOperation.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜SqlErrorInfo.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Constant.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Database$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Database.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DatabaseDelegate.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DatabaseTask.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DatabaseWorker.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DatabaseWorkerPool$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DatabaseWorkerPool.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DatabaseWorkerPoolImpl.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LocaleUtils.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LogLevel.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SingleDatabaseWorkerPoolImpl.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SqfliteCursor.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SqflitePlugin$1.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SqflitePlugin$2.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SqflitePlugin.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SqlCommand.class
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜Utils.class
 ┃ ┃ ┃ ┃ ┣ 📂library_and_local_jars_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂library_art_profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂library_assets
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂library_jni
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂jni
 ┃ ┃ ┃ ┃ ┣ 📂lint_publish_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂global
 ┃ ┃ ┃ ┃ ┣ 📂local_only_symbol_list
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜R-def.txt
 ┃ ┃ ┃ ┃ ┣ 📂manifest_merge_blame_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-blame-debug-report.txt
 ┃ ┃ ┃ ┃ ┣ 📂merged_consumer_proguard_file
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂merged_java_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜feature-sqflite.jar
 ┃ ┃ ┃ ┃ ┣ 📂merged_jni_libs
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂merged_manifest
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂merged_shaders
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂out
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜navigation.json
 ┃ ┃ ┃ ┃ ┣ 📂navigation_json_for_aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂packaged_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂public_res
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┣ 📂runtime_library_classes_jar
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜classes.jar
 ┃ ┃ ┃ ┃ ┗ 📂symbol_list_with_package_name
 ┃ ┃ ┃ ┃ ┃ ┗ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜package-aware-r.txt
 ┃ ┃ ┃ ┣ 📂outputs
 ┃ ┃ ┃ ┃ ┣ 📂aar
 ┃ ┃ ┃ ┃ ┃ ┗ 📜sqflite-debug.aar
 ┃ ┃ ┃ ┃ ┗ 📂logs
 ┃ ┃ ┃ ┃ ┃ ┗ 📜manifest-merger-debug-report.txt
 ┃ ┃ ┃ ┗ 📂tmp
 ┃ ┃ ┃ ┃ ┗ 📂compileDebugJavaWithJavac
 ┃ ┃ ┃ ┃ ┃ ┗ 📜previous-compilation-data.bin
 ┃ ┃ ┣ 📜.last_build_id
 ┃ ┃ ┣ 📜61ebfca94496893cf79d3453ae0a6715.cache.dill.track.dill
 ┃ ┃ ┣ 📜7aa3f180c4c976b317cc771e8cfe1ab5.cache.dill.track.dill
 ┃ ┃ ┣ 📜8c6669eb41a4e9bf94d4f462213e2374.cache.dill.track.dill
 ┃ ┃ ┗ 📜e3948fe83113bbde34ef72be0b5336e5.cache.dill.track.dill
 ┃ ┣ 📂ios
 ┃ ┃ ┣ 📂Flutter
 ┃ ┃ ┃ ┣ 📜AppFrameworkInfo.plist
 ┃ ┃ ┃ ┣ 📜Debug.xcconfig
 ┃ ┃ ┃ ┣ 📜flutter_export_environment.sh
 ┃ ┃ ┃ ┣ 📜Generated.xcconfig
 ┃ ┃ ┃ ┗ 📜Release.xcconfig
 ┃ ┃ ┣ 📂Runner
 ┃ ┃ ┃ ┣ 📂Assets.xcassets
 ┃ ┃ ┃ ┃ ┣ 📂AppIcon.appiconset
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Contents.json
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-1024x1024@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-20x20@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-20x20@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-20x20@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-29x29@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-29x29@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-29x29@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-40x40@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-40x40@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-40x40@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-60x60@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-60x60@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-76x76@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-76x76@2x.png
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Icon-App-83.5x83.5@2x.png
 ┃ ┃ ┃ ┃ ┗ 📂LaunchImage.imageset
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Contents.json
 ┃ ┃ ┃ ┃ ┃ ┣ 📜LaunchImage.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜LaunchImage@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜LaunchImage@3x.png
 ┃ ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂Base.lproj
 ┃ ┃ ┃ ┃ ┣ 📜LaunchScreen.storyboard
 ┃ ┃ ┃ ┃ ┗ 📜Main.storyboard
 ┃ ┃ ┃ ┣ 📜AppDelegate.swift
 ┃ ┃ ┃ ┣ 📜GeneratedPluginRegistrant.h
 ┃ ┃ ┃ ┣ 📜GeneratedPluginRegistrant.m
 ┃ ┃ ┃ ┣ 📜GoogleService-Info.plist
 ┃ ┃ ┃ ┣ 📜Info.plist
 ┃ ┃ ┃ ┗ 📜Runner-Bridging-Header.h
 ┃ ┃ ┣ 📂Runner.xcodeproj
 ┃ ┃ ┃ ┣ 📂project.xcworkspace
 ┃ ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┃ ┣ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┃ ┃ ┗ 📜WorkspaceSettings.xcsettings
 ┃ ┃ ┃ ┃ ┗ 📜contents.xcworkspacedata
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┗ 📂xcschemes
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Runner.xcscheme
 ┃ ┃ ┃ ┗ 📜project.pbxproj
 ┃ ┃ ┣ 📂Runner.xcworkspace
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┣ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┃ ┗ 📜WorkspaceSettings.xcsettings
 ┃ ┃ ┃ ┗ 📜contents.xcworkspacedata
 ┃ ┃ ┣ 📂RunnerTests
 ┃ ┃ ┃ ┗ 📜RunnerTests.swift
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┣ 📜firebase_app_id_file.json
 ┃ ┃ ┗ 📜Podfile
 ┃ ┣ 📂lib
 ┃ ┃ ┣ 📂core
 ┃ ┃ ┃ ┣ 📂localization
 ┃ ┃ ┃ ┣ 📂resources
 ┃ ┃ ┃ ┃ ┣ 📜images.dart
 ┃ ┃ ┃ ┃ ┗ 📜resources.dart
 ┃ ┃ ┃ ┣ 📂widgets
 ┃ ┃ ┃ ┃ ┣ 📜circle_image.dart
 ┃ ┃ ┃ ┃ ┣ 📜primary_button.dart
 ┃ ┃ ┃ ┃ ┣ 📜toast.dart
 ┃ ┃ ┃ ┃ ┗ 📜widgets.dart
 ┃ ┃ ┃ ┣ 📜app_route.dart
 ┃ ┃ ┃ ┣ 📜core.dart
 ┃ ┃ ┃ ┗ 📜core_mapper.dart
 ┃ ┃ ┣ 📂ui
 ┃ ┃ ┃ ┣ 📂dashboard
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜dashboard_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜dashboard_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜dashboard_state.dart
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜dashboard_page.dart
 ┃ ┃ ┃ ┣ 📂history
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜history_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜history_state.dart
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜history_page.dart
 ┃ ┃ ┃ ┣ 📂login
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜login_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜login_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜login_state.dart
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜login_page.dart
 ┃ ┃ ┃ ┣ 📂main
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜main_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜main_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜main_state.dart
 ┃ ┃ ┃ ┃ ┣ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜main_page.dart
 ┃ ┃ ┃ ┃ ┗ 📂widgets
 ┃ ┃ ┃ ┃ ┃ ┗ 📜bottom_nav_bar.dart
 ┃ ┃ ┃ ┣ 📂order
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜order_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜order_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜order_state.dart
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜order_page.dart
 ┃ ┃ ┃ ┣ 📂register
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜register_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📜register_cubit.freezed.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜register_state.dart
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜register_page.dart
 ┃ ┃ ┃ ┣ 📂settings
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┗ 📜settings_cubit.dart
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜settings_page.dart
 ┃ ┃ ┃ ┣ 📂splashscreen
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜splash_screen_page.dart
 ┃ ┃ ┃ ┗ 📂wallet
 ┃ ┃ ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┃ ┃ ┣ 📜wallet_cubit.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜wallet_state.dart
 ┃ ┃ ┃ ┃ ┗ 📂pages
 ┃ ┃ ┃ ┃ ┃ ┗ 📜wallet_page.dart
 ┃ ┃ ┣ 📜app.dart
 ┃ ┃ ┣ 📜dependencies_injection.dart
 ┃ ┃ ┗ 📜main.dart
 ┃ ┣ 📂test
 ┃ ┃ ┗ 📜widget_test.dart
 ┃ ┣ 📜.env.example.json
 ┃ ┣ 📜.env.json
 ┃ ┣ 📜.flutter-plugins
 ┃ ┣ 📜.flutter-plugins-dependencies
 ┃ ┣ 📜.gitignore
 ┃ ┣ 📜.metadata
 ┃ ┣ 📜analysis_options.yaml
 ┃ ┣ 📜pubspec.lock
 ┃ ┣ 📜pubspec.yaml
 ┃ ┗ 📜README.md

## Installation
To build all apps and packages, run the following command :
```
git clone https://github.com/Zenta-Code/printilan.git
cd my-turborepo
pnpm build
cd apps/mobile
flutter build apk
```
## Plugins
Sky Printing is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.
| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| GitHub | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |

## Development
To develop all apps and packages, read readme.md in each folder.
#### API

[API](https://github.com/Zenta-Code/sky_printing/blob/main/apps/desktop/README.md)

#### Desktop

[Desktop](https://github.com/Zenta-Code/sky_printing/blob/main/apps/desktop/README.md)

#### Mobile

[Mobile](https://github.com/Zenta-Code/sky_printing/blob/main/apps/mobile/README.md)

## License
> Zenta-Code (202)

