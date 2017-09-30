Disclaimer
==

This repo is for internal use. 

OS Scope
==

The static libs here are for OSX 10.12 or 10.13 only and they're build by the following steps.
```
user> git clone https://github.com/NetEase/libpomelo2 ./libpomelo2-src && cd libpomelo2-src
```

[Install the "gyp" binary globally according to the instructions](https://github.com/NetEase/libpomelo2).

```
user@libpomelo2-src> gyp --depth=. pomelo.gyp -Duse_sys_openssl=false -Dpomelo_library=static_library

user@libpomelo2-src>  open pomelo.xcodeproj
```

Build and get the targeted static libs, i.e. "libpomelo2.a", "libuv.a" and "libopenssl.a" from XCode. 

By far, I can't get `libpomelo2 of client` working with `sioconnector of game-server` yet, but succeeded in using `libpomelo2 of client` working with `hybridconnector of game-server`.
