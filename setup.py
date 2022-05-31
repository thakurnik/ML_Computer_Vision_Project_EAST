import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setuptools.setup(
    name="EAST-TEXT-DETECTOR",
    version="1.0.0",
    author="Nikhil kumarr",
    author_email="thakurnik30.nt@gmail.com",
    description="Demo_package",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/thakurnik/EAST-Text-Detector",
    project_urls={
        "Bug Tracker": "https://github.com/thakurnik/EAST-Text-Detector/issues",
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    package_dir={"": "src"},
    packages=setuptools.find_packages(where="src"),
    python_requires=">=3.6, <4",
    install_requires=["numpy>=1.22", "opencv-contrib-python>=4.5", "tensorflow>=2.8", "imutils>=0.5.4"],
    package_data={"EAST": ["robert.jpg", "east_text_detection_320x320_integer_quant.tflite"]},
    entry_points={"console_scripts": ["demo = EAST.east_text_detection:main"]},
)
