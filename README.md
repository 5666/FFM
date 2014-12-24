FFM
===

form-from-motion image creation script

In this script you need to create a stencil matrix of an image you want to create out of coherent motion of dots.
you can use the arrows matrix i attached which i use for my experiment.

the stimuli creation is pretty straightforward:
1. the script creates a random (2D gaussian) distribution of active pixels in a 400x500 sized matrix.
2. your stencil matrix is multiplied element by element with the pixels matrix to create a new matrix
this new matrix contains your stencil image made our of randomly placed dots.

presenting the new matrix on the scatter matrix would not reveal any shape but in the second you move it, 
a shape will emerge.
