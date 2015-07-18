# Calculating distances #

The size of viewpoint and the routes leading to it decrease with
increasing "distance". But how can we know the distance from a foto?

Objects closer to the bottom of the picture logically are more closer
to the viewer, how close exactly depends on the fotography angle.
Objects closer to the horizon are (theoretically) approaching infinite distance.

Each vertical pixel represents a fixed angle in
the viewer's vertical field of vision.

![http://sauron-virtualtour.googlecode.com/svn-history/r12/trunk/distance_calculation.jpg](http://sauron-virtualtour.googlecode.com/svn-history/r12/trunk/distance_calculation.jpg)

Given:
  * spectator height
  * invisible angle (red)
  * total angle of view (green)
  * panorama picture height in pixels
  * object's y coordinate in pixels from the picture bottom

It holds:
```
 object distance = tangens( total object angle ) * height
 total object angle = invisible angle + visible object angle
 visible object angle = object y coordinate * degrees per pixel
 degrees per pixel = picture height in pixels / total angle of view
```

This results in the distance equation:
```
 obj distance = tangens( invisible angle + obj y coordinate * picture height in pixels / total angle of view ) * height
```