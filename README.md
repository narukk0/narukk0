[Input]
- img original image of size M x N
- k1  parameter of the box kernel used for creating
  the sketch
  
[Output]
- d watercolor painting of the image

[Algorithm]
- Create a blurred image using a box kernel with the input k1 parameter
- For each red, green and blue channels of the blurred image in (1), detect the edges using magnitude of gradient
- Convert and then combine the edges detected in (2) to a gray-scale image; Multiply the image by a factor of 2 to increase the contrast
- Blur the original image with another box kernel with a fixed parameter k2 = 22. Increase the brightness of this color layer by multiplying 1.5
- Add the negative of the resulting image from (3) to (4)

------------------------------------------------------
The core idea for converting an image to a watercolor painting was to create the sketch by edge detection and then add this sketch to a color layer. 

I used edge detection, specifically magnitude of gradient, to create the sketch based on a blurred image of the original one. By adjusting the box kernel parameter k1 for blurring the image, we can modify how much details we want to preserve from the original image.

I used edge detection on each of the red, green and blue (RGB) channels and converted the edge image to a gray-scale using the Matlab function rgb2gray.

Then, I blurred the original image with a fixed box kernel (k2 = 22) to create the color of the watercolor painting. Finally, the sketch is added to this color layer.
