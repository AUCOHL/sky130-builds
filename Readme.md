sky130-builds is no longer maintained. Consider using [volare](https://github.com/efabless/volare) instead.

---
# Sky130 Builder
This repo builds sky130A and sky130B using OpenLane, creates an xzipped tarball, then uploads the results as GitHub release artifacts.

# Requirements
* Requires xzutils.
* The files must be installed to `/usr/local/pdk/sky130(A|B)`.

# Get via script
If you'd rather not deal with the hassle of figuring out the proper tarball, downloading it and untarring it, you can use the `get_pdk` script in the OpenLane root directory to automatically download and unpack the prebuilt PDK.

Requires Python3 and click/pyyaml:
* `python3 -m pip install 'click>7' 'pyyaml'`

```sh
# Assuming you have ~/bin in PATH
git clone https://github.com/Cloud-V/sky130-builds
cd sky130-builds
make deps

# to install in ~/bin
make install

# to install in /usr/bin
sudo make install INSTALL_DIR=/usr/bin
```

You can then just `get_pdk -v sky130A` or `get_pdk -v sky130B` in your OpenLane or DFFRAM directory.

You can also `get_pdk -S <sky130-commit> -P <open_pdks-commit>` to avoid having to run in one of those directories.

# Get via manual unpacking

This can be done by downloading the tarball then running the following commands:

```sh
sudo mkdir -p /usr/local/pdk/sky130A
sudo chown $USER:$USER /usr/local/pdk/sky130A
tar -xJf ./sky130A.tar.xz -C /usr/local/pdk/sky130A
```

# License & Acknowledgements
©2021-2022 The American University in Cairo & The Cloud V Project

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---

The Sky130 PDK is owned by [these entities](https://github.com/google/skywater-pdk/blob/main/AUTHORS) and is available under the [Apache License, version 2.0](https://github.com/google/skywater-pdk/blob/main/LICENSE).


open_pdks is ©2019-2021 R. Timothy Edwards and is available under the [Apache License, version 2.0](https://github.com/RTimothyEdwards/open_pdks/blob/master/LICENSE).
