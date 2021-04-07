#!/usr/bin/env bash

pip install --upgrade pip
pip install -r requirements.txt
git clone https://github.com/open-mmlab/mmcv.git && mmcv
MMCV_WITH_OPS=1 pip install -e .
cd ..
git clone https://github.com/open-mmlab/mmdetection.git && cd mmdetection
pip install -r requirements/build.txt
pip install -v -e .
cd ..
