#!/usr/bin/env python
# -*- coding: iso-8859-15 -*-

import sys
try:
	path = sys.argv[1]
except:
	path = "."

import os

import EXIF
# http://exif-py.svn.sourceforge.net/viewvc/exif-py/source/EXIF.py?revision=24&view=markup


for filename in os.listdir(path):
	s = filename.split(".")
	if len(s) > 1:
		extension = s[len(s)-1].lower()
		if extension == "jpg" or extension == "jpeg":			# it's a JPEG
			f = open(filename, 'rb')				# get EXIF info
			tags = EXIF.process_file(f)
			if 'Image Model' in tags.keys() and 'Image DateTime' in tags.keys():
				camera = str(tags['Image Model'])
				s = str(tags['Image DateTime']).split(":")
				timestamp = s[0]+"-"+s[1]+"-"+':'.join(s[2:])
				newname = timestamp+" "+camera+".jpg"
				print filename+" -> "+newname+" ..."
				os.rename(filename, newname)
			else:
				print "Sorry, EXIF not found: "+filename

