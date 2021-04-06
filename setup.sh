#!/usr/bin/env bash

pip install -r requirements.txt
git clone https://github.com/open-mmlab/mmdetection.git && cd mmdetection
pip install -r requirements/build.txt
pip install -v -e .
cd ..
