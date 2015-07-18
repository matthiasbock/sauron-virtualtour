# How to create a Panorama #

## Step 1: Make a 360° video ##

Grab your video camera, a tripod and place them at your viewpoint of choice.
Record a 360° round look.

## Step 2: Select good frames ##

Open the video in LiVES and select 10-20 frames of good image quality.
Take only these frames from the LiVES temp directory and drop the others.
Remember the total number of frames, you needed for the complete 360°.

You can also use mplayer for this job:
```
 mplayer video.mp4 -ao null -nosound -vo jpeg:quality=85:progressive -vf framestep=50
```

## Step 3: Assign angles to your frames ##

If you turned your camera at a constant speed, you can use the
frame number to determine the angle of each of your frames.
If not, just make a guess, it doesn't need to be 100% accurate.

## Step 4: Generate a panorama picture ##

... by [Image Stitching](Stitching.md)