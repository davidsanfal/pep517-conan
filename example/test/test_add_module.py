from importlib.metadata import version
from py_conan_add.add_module import add
from py_conan_add import __version__ as py_version
from py_conan_add.add_module import __version__ as py_cpp_version
from py_conan_add._add_module import __version__ as cpp_version


def test_add():
    assert add(1, 2) == 3


def test_version():
    assert py_version == py_cpp_version
    assert py_version == cpp_version
    assert py_version == version("py_conan_add")
