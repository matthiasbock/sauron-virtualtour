#!/bin/bash

for video in `ls *.MP4`; do
	dir="$video.frames"
	mkdir -p "$dir"
	cd "$dir"
	rm -f *.jpg
	mplayer "../$video" -ao null -nosound -vo jpeg:quality=85:progressive -vf framestep=25
	cd ..
	done
