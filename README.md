# pep717-conan

This is an example project using [py-build-cmake](https://github.com/tttapa/py-build-cmake) and [conan](https://github.com/conan-io/conan)
to build Python bindings for C++ code. (based on [py-build-cmake-example](https://github.com/tttapa/py-build-cmake-example))

**Linux**
```sh
apt install patchelf build-essential
```

**Linux/macOS**
```sh
pip install -U pip build pytest
git clone https://github.com/davidsanfal/py-build-cmake.git --branch conan-shared
cd py-build-cmake
python -m build .
export PIP_FIND_LINKS=$PWD/dist:$PIP_FIND_LINKS
pip install y-build-cmake==0.6.0a3.dev0

cd ..
git clone https://github.com/davidsanfal/pep517-conan.git
cd pep517-conan/example
pip install .
pytest
```
