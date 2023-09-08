MTC4ei Core
=============

Setup
---------------------
MTC4ei Core is the original MTC4ei client and it builds the backbone of the network. It downloads and, by default, stores the entire history of MTC4ei transactions (which is currently more than 7 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download MTC4ei Core, visit [mtc4ei.org](https://mtc4ei.org).

Running
---------------------
The following are some helpful notes on how to run MTC4ei on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/mtc4ei-qt` (GUI) or
- `bin/mtc4eid` (headless)

### Windows

Unpack the files into a directory, and then run mtc4ei-qt.exe.

### OS X

Drag MTC4ei-Core to your applications folder, and then run MTC4ei-Core.

### Need Help?

* See the documentation at the [MTC4ei Wiki](https://mtc4ei.info/)
for help and more information.
* Ask for help on [#mtc4ei](http://webchat.freenode.net?channels=mtc4ei) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=mtc4ei).
* Ask for help on the [MTC4eiTalk](https://mtc4eitalk.io/) forums.

Building
---------------------
The following are developer notes on how to build MTC4ei on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The MTC4ei repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/mtc4ei/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [MTC4eiTalk](https://mtc4eitalk.io/) forums.
* Discuss general MTC4ei development on #mtc4ei-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=mtc4ei-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
