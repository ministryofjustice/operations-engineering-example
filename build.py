"""Download and extract govuk-frontend files to static folders"""
from urllib.request import urlretrieve
from pathlib import Path
import shutil
import zipfile
import os

print("Get govuk-frontend assets")
from urllib.request import urlretrieve
from pathlib import Path
import shutil
import zipfile
import os

assets_js_path = Path("application/assets/js")
assets_css_path = Path("application/assets/css")
assets_image_path = Path("application/assets/images")

dirpath = Path("application/static")
css_path = dirpath / "stylesheets"
js_path = dirpath / "javascript"
image_path = dirpath / "images"
zip_file = "govuk_frontend.zip"
urlretrieve(
    (
        "https://github.com/alphagov/govuk-frontend/releases/download/"
        "v4.7.0/release-v4.7.0.zip"
    ),
    zip_file,
)
if dirpath.exists():
    shutil.rmtree(dirpath)
with zipfile.ZipFile(zip_file, "r") as zip_ref:
    zip_ref.extractall(dirpath)
shutil.move(Path(dirpath) / "assets/fonts", Path(dirpath) / "fonts")
shutil.move(Path(dirpath) / "assets/images", image_path)
shutil.rmtree(dirpath / "assets")

css_path.mkdir(parents=True, exist_ok=True)
for each_file in Path(dirpath).glob("*.css"):
    shutil.move(each_file, css_path / each_file.name)

for each_file in Path(assets_css_path).glob("*.css"):
    shutil.copy(each_file, css_path / each_file.name)

js_path.mkdir(parents=True, exist_ok=True)
for each_file in Path(dirpath).glob("*.js"):
    shutil.move(each_file, js_path / each_file.name)

for each_file in Path(assets_js_path).glob("*.js"):
    shutil.copy(each_file, js_path / each_file.name)

for each_file in Path(assets_image_path).glob("*.png"):
    shutil.copy(each_file, image_path / each_file.name)

os.remove(zip_file)
print("Finished")
print("If version has changed update the versions in build.py and application/templates/base.html")
