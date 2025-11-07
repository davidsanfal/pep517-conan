**Linux/macOS**
```sh
python3 -m pip install -U pip conan build delocate
python3 -m build -w
python3 -m pip install dist/<wheel-name>
python3 -m pytest
```
