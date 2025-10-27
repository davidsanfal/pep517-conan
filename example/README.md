**Linux/macOS**
```sh
python3 -m pip install -U pip conan build delocate
conan profile detect
python3 -m build -w
export DYLD_LIBRARY_PATH=$PWD/.py-build-cmake_cache
python3 delocate-wheel dest/<wheel-name>
python3 -m pip install dist/<wheel-name>
python3 -m pytest
```
