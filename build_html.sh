#!/bin/bash

jupyter nbconvert --to html csg_jupyter_tutorial.ipynb
jupyter nbconvert --to html --template full_noin --stdout csg_jupyter_tutorial.ipynb > csg_jupyter_tutorial_nocode.html

