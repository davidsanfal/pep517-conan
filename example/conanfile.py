from conan import ConanFile
from conan.tools.cmake import cmake_layout


class Recipe(ConanFile):
    name = "py-cmake-build"

    settings = "os", "compiler", "build_type", "arch"
    generators = "CMakeDeps", "CMakeToolchain"

    def requirements(self):
        self.requires("pybind11/3.0.1")
        self.requires("fmt/12.0.0")
        self.requires("zlib/1.3.1")
        self.requires("libgettext/0.22")

    def layout(self):
        cmake_layout(self)
