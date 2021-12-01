# Sky130 Builder
This repo builds sky130A using OpenLane, creates an xzipped tarball, then uploads it as a GitHub release artifact.

# Requirements
* Requires xzutils.
* The files must be installed to `/usr/local/pdk/sky130A`.

This can be done by downloading the tarball then running the following commands:

```sh
sudo mkdir -p /usr/local/pdk/sky130A
sudo chown $USER:$USER /usr/local/pdk/sky130A
tar -xJf ./sky130A.tar.xz -C /usr/local/pdk/sky130A
```

# Get PDK Script
If you'd rather not deal with the hassle of figuring out the proper tarball, you can use the `get_pdk` script in the OpenLane root directory to automatically download and unpack the prebuilt PDK.

Requires Ruby.

```sh
# Assuming you have ~/bin in PATH
mkdir -p ~/bin 
curl -L https://raw.githubusercontent.com/Cloud-V/sky130-builds/main/get_pdk > ~/bin/get_pdk
chmod +x ~/bin/get_pdk
```

# License & Acknowledgements
©2021 The American University in Cairo & The Cloud V Project

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---

The Sky130 PDK is owned by [these entities](https://github.com/google/skywater-pdk/blob/main/AUTHORS) and is available under the [Apache License, version 2.0](https://github.com/google/skywater-pdk/blob/main/LICENSE).


open_pdks is ©2019-2021 R. Timothy Edwards and is available under the [Apache License, version 2.0](https://github.com/RTimothyEdwards/open_pdks/blob/master/LICENSE).