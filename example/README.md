**Linux/macOS**
```sh
python3 -m pip install -U pip conan build
conan profile detect
python3 -m build -w
python3 -m pip install -v .
python3 -m pip install -v .[test]
python3 -m pytest
python3 examples/add_example.py
```

**Windows**
```sh
py -3 -m pip install -U pip conan build pytest
conan profile detect
conan install . --build=missing
py -3 -m build -w
py -3 -m pip install -v .
py -3 -m  install -v .[test]
py -3 -m pytest
py -3 examples/add_example.py
```
