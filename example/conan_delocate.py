import os
from pathlib import Path
from delocate import delocate_wheel
import conan.api.conan_api


def run_hook(wheel, *args, **kargs):
    conan_api = conan.api.conan_api.ConanAPI()
    ld_library_path = Path(conan_api.home_folder) / "ld_library_path"
    os.environ["DYLD_LIBRARY_PATH"] = ld_library_path.as_posix()
    delocate_wheel(wheel, wheel)
