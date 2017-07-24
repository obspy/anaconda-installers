# anaconda-installers
Build anaconda installers in CI using conda constructor and attach them to the respective github release

### How to use this Repo

Getting a working set of packages in an installer is not trivial due to very
delicate package specification resolving and sometimes incompatible packages
across *defaults* and *conda-forge* channels.

Currently what seems to work is to have package specs relatively loose on
Windows for Appveyor but very rigid on Linux/OSX in Travis.

To update the static package lists for Travis, use the
*only_install_conda_package_and_test* branch and then paste those package lists
into the respective recipes on *master*.

Built installers will be tested and deployed to
[github releases](https://github.com/obspy/anaconda-installers/releases).
