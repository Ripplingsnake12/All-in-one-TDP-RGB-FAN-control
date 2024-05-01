##This will install a local proton##
>[TIP]
> + This is valves bleeding edge build of proton it will install a full local build on the ally 
> + The build will take some time as it adds dependancies like microsoft vcdist runtimes etc 
> + Open terminal and paste this  it will automatically add to steam so its avalible in gamemode under compatability

```sh
git clone --recurse-submodules https://github.com/ValveSoftware/Proton.git proton
cd proton
git checkout bleeding-edge
git submodule update --init --recursive
make install
```sh
