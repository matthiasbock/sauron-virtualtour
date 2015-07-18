# Horizon #

The "horizon" is the one horizontal line in the
panorama picture, that divides "sky" from "ground".

# Viewpoints #

A viewpoint is a 3D coordinate in the virtual reality. Since this framework
focusses on the virtual exploration of buildings, the z coordinate
is an integer: the current floor number, where 0 is the ground (start position).
Currently the z coordinate is ignored anyway.

In every panorama view the viewpoints nearby are visible and clickable.

According to their actual distance,
a viewpoint's size in the panorama view differs.
For simplicity it is defined during tour development,
the Javascript simply loads it.

# Panoramas #

Standing on a panorama viewpoint, the user
may make one complete 360° turn (after which
the view is invisibly reset to 0°).

After holding his mouse cursor motionless on the left or right side
of the picture for a short time, the view starts turning accordingly.
The turning speed increases as the mouse cursor is moved closer to the
panorama's border and decreases as it is moved away.
<br />

In this solution, you turn using mouse clicks:
  * http://charabanc.sourceforge.net/demo/code/virtual-tour.html

# Routes #

When the cursor moves below the horizon, Sauron
assumes, that the user wants to see possible routes from
his viewpoint.
The routes show up as predefined during tour development and vanish,
as the cursor leaves to floor area.
This is realized by fading in/out a transparent image containing the paths.

Of course, routes may also exists above the horizon, e.g. if they lead
above a hill or something, but this case is ignored for now.

# Walking #

After a viewpoint was clicked by the user, path and viewpoints vanish,
the view is smoothly turned to the predefined walk start angle and
video is played showing the walk to the selected viewpoint.
The speed of turning prior to walking increases with time to match the walking speed.