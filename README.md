# A short tutorial on using the Jupyter notebook

This is a very brief introduction to the Jupyter notebook, mainly
targeted at CSG users. 

I've tried to keep this document up to date with contributions from
others. If you have something you would like to add, please feel free to
either email me directly, or simply fork this repo / make changes /
submit a pull request. 

Thank you to the following folks for their help in improving this
tutorial: 

* Daniel Taliun
* Lars Fritsche

## Downloading

Just do the usual: 

```
git clone https://github.com/welchr/csg-jupyter-tutorial.git
```

Both the notebook `.ipynb` and an already-rendered output file `.html`
are there for checking out. 

Note that if you open the `.ipynb` file in github, some of it will
render, but many things will not work quite right. Best to download and
try it yourself. 

## Quick views of notebook output

[Rendered output (including code
cells)](https://rawcdn.githack.com/welchr/csg-jupyter-tutorial/master/csg_jupyter_tutorial.html)

[Rendered output (no code
cells)](https://rawcdn.githack.com/welchr/csg-jupyter-tutorial/master/csg_jupyter_tutorial_nocode.html)

# Creating HTML from notebook

Use the `build_html.sh` script. You'll also need to copy the template
files (.tpl extension, included in the repository) to the appropriate
location, if you want to execute the second command in the script which
generates HTML without code cells included. 

See
https://rawcdn.githack.com/welchr/csg-jupyter-tutorial/master/csg_jupyter_tutorial_nocode.html#Creating-reports-from-a-notebook
for more info on where to place your template files. 

