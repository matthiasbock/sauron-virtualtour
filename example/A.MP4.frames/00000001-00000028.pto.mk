
# makefile for panorama stitching, created by hugin using the new makefilelib

# Tool configuration
NONA=nona
PTSTITCHER=PTStitcher
PTMENDER=PTmender
PTBLENDER=PTblender
PTMASKER=PTmasker
PTROLLER=PTroller
ENBLEND=enblend
ENFUSE=enfuse
SMARTBLEND=smartblend.exe
HDRMERGE=hugin_hdrmerge
RM=rm
EXIFTOOL=exiftool

# Project parameters
HUGIN_PROJECTION=1
HUGIN_HFOV=179
HUGIN_WIDTH=3827
HUGIN_HEIGHT=473

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW
NONA_OPTS=
ENBLEND_OPTS= -f3827x473
ENBLEND_LDR_COMP=--compression=LZW
ENBLEND_EXPOSURE_COMP=--compression=LZW
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS=
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS='-Software=Hugin 2011.0.0.0f9fdaf56720' '-UserComment<$${UserComment}&\#xa;Projection: Cylindrical (1)&\#xa;FOV: 179 x 22&\#xa;Ev: -0.03' -f

# the output panorama
LDR_REMAPPED_PREFIX=00000001-00000028
LDR_REMAPPED_PREFIX_SHELL=00000001-00000028
HDR_STACK_REMAPPED_PREFIX=00000001-00000028_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL=00000001-00000028_hdr_
LDR_EXPOSURE_REMAPPED_PREFIX=00000001-00000028_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL=00000001-00000028_exposure_layers_
PROJECT_FILE=/home/user/Desktop/A.MP4.frames/00000001-00000028.pto
PROJECT_FILE_SHELL=/home/user/Desktop/A.MP4.frames/00000001-00000028.pto
LDR_BLENDED=00000001-00000028.tif
LDR_BLENDED_SHELL=00000001-00000028.tif
LDR_STACKED_BLENDED=00000001-00000028_fused.tif
LDR_STACKED_BLENDED_SHELL=00000001-00000028_fused.tif
LDR_EXPOSURE_LAYERS_FUSED=00000001-00000028_blended_fused.tif
LDR_EXPOSURE_LAYERS_FUSED_SHELL=00000001-00000028_blended_fused.tif
HDR_BLENDED=00000001-00000028_hdr.exr
HDR_BLENDED_SHELL=00000001-00000028_hdr.exr

# first input image
INPUT_IMAGE_1=/home/user/Desktop/A.MP4.frames/00000001.jpg
INPUT_IMAGE_1_SHELL=/home/user/Desktop/A.MP4.frames/00000001.jpg

# all input images
INPUT_IMAGES=/home/user/Desktop/A.MP4.frames/00000001.jpg\
/home/user/Desktop/A.MP4.frames/00000002.jpg\
/home/user/Desktop/A.MP4.frames/00000003.jpg\
/home/user/Desktop/A.MP4.frames/00000004.jpg\
/home/user/Desktop/A.MP4.frames/00000005.jpg\
/home/user/Desktop/A.MP4.frames/00000006.jpg\
/home/user/Desktop/A.MP4.frames/00000007.jpg\
/home/user/Desktop/A.MP4.frames/00000008.jpg\
/home/user/Desktop/A.MP4.frames/00000009.jpg\
/home/user/Desktop/A.MP4.frames/00000011.jpg\
/home/user/Desktop/A.MP4.frames/00000012.jpg\
/home/user/Desktop/A.MP4.frames/00000014.jpg\
/home/user/Desktop/A.MP4.frames/00000016.jpg\
/home/user/Desktop/A.MP4.frames/00000017.jpg\
/home/user/Desktop/A.MP4.frames/00000018.jpg\
/home/user/Desktop/A.MP4.frames/00000019.jpg\
/home/user/Desktop/A.MP4.frames/00000020.jpg\
/home/user/Desktop/A.MP4.frames/00000022.jpg\
/home/user/Desktop/A.MP4.frames/00000023.jpg\
/home/user/Desktop/A.MP4.frames/00000024.jpg\
/home/user/Desktop/A.MP4.frames/00000025.jpg\
/home/user/Desktop/A.MP4.frames/00000026.jpg\
/home/user/Desktop/A.MP4.frames/00000027.jpg\
/home/user/Desktop/A.MP4.frames/00000028.jpg
INPUT_IMAGES_SHELL=/home/user/Desktop/A.MP4.frames/00000001.jpg\
/home/user/Desktop/A.MP4.frames/00000002.jpg\
/home/user/Desktop/A.MP4.frames/00000003.jpg\
/home/user/Desktop/A.MP4.frames/00000004.jpg\
/home/user/Desktop/A.MP4.frames/00000005.jpg\
/home/user/Desktop/A.MP4.frames/00000006.jpg\
/home/user/Desktop/A.MP4.frames/00000007.jpg\
/home/user/Desktop/A.MP4.frames/00000008.jpg\
/home/user/Desktop/A.MP4.frames/00000009.jpg\
/home/user/Desktop/A.MP4.frames/00000011.jpg\
/home/user/Desktop/A.MP4.frames/00000012.jpg\
/home/user/Desktop/A.MP4.frames/00000014.jpg\
/home/user/Desktop/A.MP4.frames/00000016.jpg\
/home/user/Desktop/A.MP4.frames/00000017.jpg\
/home/user/Desktop/A.MP4.frames/00000018.jpg\
/home/user/Desktop/A.MP4.frames/00000019.jpg\
/home/user/Desktop/A.MP4.frames/00000020.jpg\
/home/user/Desktop/A.MP4.frames/00000022.jpg\
/home/user/Desktop/A.MP4.frames/00000023.jpg\
/home/user/Desktop/A.MP4.frames/00000024.jpg\
/home/user/Desktop/A.MP4.frames/00000025.jpg\
/home/user/Desktop/A.MP4.frames/00000026.jpg\
/home/user/Desktop/A.MP4.frames/00000027.jpg\
/home/user/Desktop/A.MP4.frames/00000028.jpg

# remapped images
LDR_LAYERS=00000001-000000280000.tif\
00000001-000000280001.tif\
00000001-000000280002.tif\
00000001-000000280003.tif\
00000001-000000280004.tif\
00000001-000000280005.tif\
00000001-000000280006.tif\
00000001-000000280007.tif\
00000001-000000280008.tif\
00000001-000000280013.tif\
00000001-000000280014.tif\
00000001-000000280015.tif\
00000001-000000280016.tif\
00000001-000000280017.tif\
00000001-000000280018.tif\
00000001-000000280019.tif\
00000001-000000280020.tif\
00000001-000000280021.tif\
00000001-000000280022.tif\
00000001-000000280023.tif
LDR_LAYERS_SHELL=00000001-000000280000.tif\
00000001-000000280001.tif\
00000001-000000280002.tif\
00000001-000000280003.tif\
00000001-000000280004.tif\
00000001-000000280005.tif\
00000001-000000280006.tif\
00000001-000000280007.tif\
00000001-000000280008.tif\
00000001-000000280013.tif\
00000001-000000280014.tif\
00000001-000000280015.tif\
00000001-000000280016.tif\
00000001-000000280017.tif\
00000001-000000280018.tif\
00000001-000000280019.tif\
00000001-000000280020.tif\
00000001-000000280021.tif\
00000001-000000280022.tif\
00000001-000000280023.tif

# remapped images (hdr)
HDR_LAYERS=00000001-00000028_hdr_0000.exr\
00000001-00000028_hdr_0001.exr\
00000001-00000028_hdr_0002.exr\
00000001-00000028_hdr_0003.exr\
00000001-00000028_hdr_0004.exr\
00000001-00000028_hdr_0005.exr\
00000001-00000028_hdr_0006.exr\
00000001-00000028_hdr_0007.exr\
00000001-00000028_hdr_0008.exr\
00000001-00000028_hdr_0013.exr\
00000001-00000028_hdr_0014.exr\
00000001-00000028_hdr_0015.exr\
00000001-00000028_hdr_0016.exr\
00000001-00000028_hdr_0017.exr\
00000001-00000028_hdr_0018.exr\
00000001-00000028_hdr_0019.exr\
00000001-00000028_hdr_0020.exr\
00000001-00000028_hdr_0021.exr\
00000001-00000028_hdr_0022.exr\
00000001-00000028_hdr_0023.exr
HDR_LAYERS_SHELL=00000001-00000028_hdr_0000.exr\
00000001-00000028_hdr_0001.exr\
00000001-00000028_hdr_0002.exr\
00000001-00000028_hdr_0003.exr\
00000001-00000028_hdr_0004.exr\
00000001-00000028_hdr_0005.exr\
00000001-00000028_hdr_0006.exr\
00000001-00000028_hdr_0007.exr\
00000001-00000028_hdr_0008.exr\
00000001-00000028_hdr_0013.exr\
00000001-00000028_hdr_0014.exr\
00000001-00000028_hdr_0015.exr\
00000001-00000028_hdr_0016.exr\
00000001-00000028_hdr_0017.exr\
00000001-00000028_hdr_0018.exr\
00000001-00000028_hdr_0019.exr\
00000001-00000028_hdr_0020.exr\
00000001-00000028_hdr_0021.exr\
00000001-00000028_hdr_0022.exr\
00000001-00000028_hdr_0023.exr

# remapped maxval images
HDR_LAYERS_WEIGHTS=00000001-00000028_hdr_0000_gray.pgm\
00000001-00000028_hdr_0001_gray.pgm\
00000001-00000028_hdr_0002_gray.pgm\
00000001-00000028_hdr_0003_gray.pgm\
00000001-00000028_hdr_0004_gray.pgm\
00000001-00000028_hdr_0005_gray.pgm\
00000001-00000028_hdr_0006_gray.pgm\
00000001-00000028_hdr_0007_gray.pgm\
00000001-00000028_hdr_0008_gray.pgm\
00000001-00000028_hdr_0013_gray.pgm\
00000001-00000028_hdr_0014_gray.pgm\
00000001-00000028_hdr_0015_gray.pgm\
00000001-00000028_hdr_0016_gray.pgm\
00000001-00000028_hdr_0017_gray.pgm\
00000001-00000028_hdr_0018_gray.pgm\
00000001-00000028_hdr_0019_gray.pgm\
00000001-00000028_hdr_0020_gray.pgm\
00000001-00000028_hdr_0021_gray.pgm\
00000001-00000028_hdr_0022_gray.pgm\
00000001-00000028_hdr_0023_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL=00000001-00000028_hdr_0000_gray.pgm\
00000001-00000028_hdr_0001_gray.pgm\
00000001-00000028_hdr_0002_gray.pgm\
00000001-00000028_hdr_0003_gray.pgm\
00000001-00000028_hdr_0004_gray.pgm\
00000001-00000028_hdr_0005_gray.pgm\
00000001-00000028_hdr_0006_gray.pgm\
00000001-00000028_hdr_0007_gray.pgm\
00000001-00000028_hdr_0008_gray.pgm\
00000001-00000028_hdr_0013_gray.pgm\
00000001-00000028_hdr_0014_gray.pgm\
00000001-00000028_hdr_0015_gray.pgm\
00000001-00000028_hdr_0016_gray.pgm\
00000001-00000028_hdr_0017_gray.pgm\
00000001-00000028_hdr_0018_gray.pgm\
00000001-00000028_hdr_0019_gray.pgm\
00000001-00000028_hdr_0020_gray.pgm\
00000001-00000028_hdr_0021_gray.pgm\
00000001-00000028_hdr_0022_gray.pgm\
00000001-00000028_hdr_0023_gray.pgm

# stacked hdr images
HDR_STACK_0=00000001-00000028_stack_hdr_0000.exr
HDR_STACK_0_SHELL=00000001-00000028_stack_hdr_0000.exr
HDR_STACK_0_INPUT=00000001-00000028_hdr_0000.exr\
00000001-00000028_hdr_0001.exr\
00000001-00000028_hdr_0002.exr\
00000001-00000028_hdr_0021.exr\
00000001-00000028_hdr_0022.exr\
00000001-00000028_hdr_0023.exr
HDR_STACK_0_INPUT_SHELL=00000001-00000028_hdr_0000.exr\
00000001-00000028_hdr_0001.exr\
00000001-00000028_hdr_0002.exr\
00000001-00000028_hdr_0021.exr\
00000001-00000028_hdr_0022.exr\
00000001-00000028_hdr_0023.exr
HDR_STACK_1=00000001-00000028_stack_hdr_0001.exr
HDR_STACK_1_SHELL=00000001-00000028_stack_hdr_0001.exr
HDR_STACK_1_INPUT=00000001-00000028_hdr_0003.exr
HDR_STACK_1_INPUT_SHELL=00000001-00000028_hdr_0003.exr
HDR_STACK_2=00000001-00000028_stack_hdr_0002.exr
HDR_STACK_2_SHELL=00000001-00000028_stack_hdr_0002.exr
HDR_STACK_2_INPUT=00000001-00000028_hdr_0004.exr\
00000001-00000028_hdr_0005.exr
HDR_STACK_2_INPUT_SHELL=00000001-00000028_hdr_0004.exr\
00000001-00000028_hdr_0005.exr
HDR_STACK_3=00000001-00000028_stack_hdr_0003.exr
HDR_STACK_3_SHELL=00000001-00000028_stack_hdr_0003.exr
HDR_STACK_3_INPUT=00000001-00000028_hdr_0006.exr\
00000001-00000028_hdr_0007.exr
HDR_STACK_3_INPUT_SHELL=00000001-00000028_hdr_0006.exr\
00000001-00000028_hdr_0007.exr
HDR_STACK_4=00000001-00000028_stack_hdr_0004.exr
HDR_STACK_4_SHELL=00000001-00000028_stack_hdr_0004.exr
HDR_STACK_4_INPUT=00000001-00000028_hdr_0008.exr
HDR_STACK_4_INPUT_SHELL=00000001-00000028_hdr_0008.exr
HDR_STACK_5=00000001-00000028_stack_hdr_0005.exr
HDR_STACK_5_SHELL=00000001-00000028_stack_hdr_0005.exr
HDR_STACK_5_INPUT=00000001-00000028_hdr_0013.exr\
00000001-00000028_hdr_0014.exr
HDR_STACK_5_INPUT_SHELL=00000001-00000028_hdr_0013.exr\
00000001-00000028_hdr_0014.exr
HDR_STACK_6=00000001-00000028_stack_hdr_0006.exr
HDR_STACK_6_SHELL=00000001-00000028_stack_hdr_0006.exr
HDR_STACK_6_INPUT=00000001-00000028_hdr_0015.exr
HDR_STACK_6_INPUT_SHELL=00000001-00000028_hdr_0015.exr
HDR_STACK_7=00000001-00000028_stack_hdr_0007.exr
HDR_STACK_7_SHELL=00000001-00000028_stack_hdr_0007.exr
HDR_STACK_7_INPUT=00000001-00000028_hdr_0016.exr
HDR_STACK_7_INPUT_SHELL=00000001-00000028_hdr_0016.exr
HDR_STACK_8=00000001-00000028_stack_hdr_0008.exr
HDR_STACK_8_SHELL=00000001-00000028_stack_hdr_0008.exr
HDR_STACK_8_INPUT=00000001-00000028_hdr_0017.exr
HDR_STACK_8_INPUT_SHELL=00000001-00000028_hdr_0017.exr
HDR_STACK_9=00000001-00000028_stack_hdr_0009.exr
HDR_STACK_9_SHELL=00000001-00000028_stack_hdr_0009.exr
HDR_STACK_9_INPUT=00000001-00000028_hdr_0018.exr\
00000001-00000028_hdr_0019.exr
HDR_STACK_9_INPUT_SHELL=00000001-00000028_hdr_0018.exr\
00000001-00000028_hdr_0019.exr
HDR_STACK_10=00000001-00000028_stack_hdr_0010.exr
HDR_STACK_10_SHELL=00000001-00000028_stack_hdr_0010.exr
HDR_STACK_10_INPUT=00000001-00000028_hdr_0020.exr
HDR_STACK_10_INPUT_SHELL=00000001-00000028_hdr_0020.exr
HDR_STACKS_NUMBERS=0 1 2 3 4 5 6 7 8 9 10 
HDR_STACKS=$(HDR_STACK_0) $(HDR_STACK_1) $(HDR_STACK_2) $(HDR_STACK_3) $(HDR_STACK_4) $(HDR_STACK_5) $(HDR_STACK_6) $(HDR_STACK_7) $(HDR_STACK_8) $(HDR_STACK_9) $(HDR_STACK_10) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) $(HDR_STACK_1_SHELL) $(HDR_STACK_2_SHELL) $(HDR_STACK_3_SHELL) $(HDR_STACK_4_SHELL) $(HDR_STACK_5_SHELL) $(HDR_STACK_6_SHELL) $(HDR_STACK_7_SHELL) $(HDR_STACK_8_SHELL) $(HDR_STACK_9_SHELL) $(HDR_STACK_10_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=00000001-00000028_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL=00000001-00000028_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_INPUT=00000001-00000028_exposure_layers_0000.tif\
00000001-00000028_exposure_layers_0001.tif\
00000001-00000028_exposure_layers_0002.tif\
00000001-00000028_exposure_layers_0003.tif\
00000001-00000028_exposure_layers_0013.tif\
00000001-00000028_exposure_layers_0014.tif\
00000001-00000028_exposure_layers_0015.tif\
00000001-00000028_exposure_layers_0018.tif\
00000001-00000028_exposure_layers_0019.tif\
00000001-00000028_exposure_layers_0020.tif\
00000001-00000028_exposure_layers_0021.tif\
00000001-00000028_exposure_layers_0022.tif\
00000001-00000028_exposure_layers_0023.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL=00000001-00000028_exposure_layers_0000.tif\
00000001-00000028_exposure_layers_0001.tif\
00000001-00000028_exposure_layers_0002.tif\
00000001-00000028_exposure_layers_0003.tif\
00000001-00000028_exposure_layers_0013.tif\
00000001-00000028_exposure_layers_0014.tif\
00000001-00000028_exposure_layers_0015.tif\
00000001-00000028_exposure_layers_0018.tif\
00000001-00000028_exposure_layers_0019.tif\
00000001-00000028_exposure_layers_0020.tif\
00000001-00000028_exposure_layers_0021.tif\
00000001-00000028_exposure_layers_0022.tif\
00000001-00000028_exposure_layers_0023.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=00000001-000000280000.tif\
00000001-000000280001.tif\
00000001-000000280002.tif\
00000001-000000280003.tif\
00000001-000000280013.tif\
00000001-000000280014.tif\
00000001-000000280015.tif\
00000001-000000280018.tif\
00000001-000000280019.tif\
00000001-000000280020.tif\
00000001-000000280021.tif\
00000001-000000280022.tif\
00000001-000000280023.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL=00000001-000000280000.tif\
00000001-000000280001.tif\
00000001-000000280002.tif\
00000001-000000280003.tif\
00000001-000000280013.tif\
00000001-000000280014.tif\
00000001-000000280015.tif\
00000001-000000280018.tif\
00000001-000000280019.tif\
00000001-000000280020.tif\
00000001-000000280021.tif\
00000001-000000280022.tif\
00000001-000000280023.tif
LDR_EXPOSURE_LAYER_0_EXPOSURE=-0.0519766
LDR_EXPOSURE_LAYER_1=00000001-00000028_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_SHELL=00000001-00000028_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_INPUT=00000001-00000028_exposure_layers_0004.tif\
00000001-00000028_exposure_layers_0005.tif\
00000001-00000028_exposure_layers_0006.tif\
00000001-00000028_exposure_layers_0007.tif\
00000001-00000028_exposure_layers_0008.tif
LDR_EXPOSURE_LAYER_1_INPUT_SHELL=00000001-00000028_exposure_layers_0004.tif\
00000001-00000028_exposure_layers_0005.tif\
00000001-00000028_exposure_layers_0006.tif\
00000001-00000028_exposure_layers_0007.tif\
00000001-00000028_exposure_layers_0008.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER=00000001-000000280004.tif\
00000001-000000280005.tif\
00000001-000000280006.tif\
00000001-000000280007.tif\
00000001-000000280008.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER_SHELL=00000001-000000280004.tif\
00000001-000000280005.tif\
00000001-000000280006.tif\
00000001-000000280007.tif\
00000001-000000280008.tif
LDR_EXPOSURE_LAYER_1_EXPOSURE=-0.768925
LDR_EXPOSURE_LAYER_2=00000001-00000028_exposure_0002.tif
LDR_EXPOSURE_LAYER_2_SHELL=00000001-00000028_exposure_0002.tif
LDR_EXPOSURE_LAYER_2_INPUT=00000001-00000028_exposure_layers_0016.tif\
00000001-00000028_exposure_layers_0017.tif
LDR_EXPOSURE_LAYER_2_INPUT_SHELL=00000001-00000028_exposure_layers_0016.tif\
00000001-00000028_exposure_layers_0017.tif
LDR_EXPOSURE_LAYER_2_INPUT_PTMENDER=00000001-000000280016.tif\
00000001-000000280017.tif
LDR_EXPOSURE_LAYER_2_INPUT_PTMENDER_SHELL=00000001-000000280016.tif\
00000001-000000280017.tif
LDR_EXPOSURE_LAYER_2_EXPOSURE=0.597508
LDR_EXPOSURE_LAYERS_NUMBERS=0 1 2 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) $(LDR_EXPOSURE_LAYER_1) $(LDR_EXPOSURE_LAYER_2) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) $(LDR_EXPOSURE_LAYER_1_SHELL) $(LDR_EXPOSURE_LAYER_2_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=00000001-00000028_exposure_layers_0000.tif\
00000001-00000028_exposure_layers_0001.tif\
00000001-00000028_exposure_layers_0002.tif\
00000001-00000028_exposure_layers_0003.tif\
00000001-00000028_exposure_layers_0013.tif\
00000001-00000028_exposure_layers_0014.tif\
00000001-00000028_exposure_layers_0015.tif\
00000001-00000028_exposure_layers_0018.tif\
00000001-00000028_exposure_layers_0019.tif\
00000001-00000028_exposure_layers_0020.tif\
00000001-00000028_exposure_layers_0021.tif\
00000001-00000028_exposure_layers_0022.tif\
00000001-00000028_exposure_layers_0023.tif\
00000001-00000028_exposure_layers_0004.tif\
00000001-00000028_exposure_layers_0005.tif\
00000001-00000028_exposure_layers_0006.tif\
00000001-00000028_exposure_layers_0007.tif\
00000001-00000028_exposure_layers_0008.tif\
00000001-00000028_exposure_layers_0016.tif\
00000001-00000028_exposure_layers_0017.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL=00000001-00000028_exposure_layers_0000.tif\
00000001-00000028_exposure_layers_0001.tif\
00000001-00000028_exposure_layers_0002.tif\
00000001-00000028_exposure_layers_0003.tif\
00000001-00000028_exposure_layers_0013.tif\
00000001-00000028_exposure_layers_0014.tif\
00000001-00000028_exposure_layers_0015.tif\
00000001-00000028_exposure_layers_0018.tif\
00000001-00000028_exposure_layers_0019.tif\
00000001-00000028_exposure_layers_0020.tif\
00000001-00000028_exposure_layers_0021.tif\
00000001-00000028_exposure_layers_0022.tif\
00000001-00000028_exposure_layers_0023.tif\
00000001-00000028_exposure_layers_0004.tif\
00000001-00000028_exposure_layers_0005.tif\
00000001-00000028_exposure_layers_0006.tif\
00000001-00000028_exposure_layers_0007.tif\
00000001-00000028_exposure_layers_0008.tif\
00000001-00000028_exposure_layers_0016.tif\
00000001-00000028_exposure_layers_0017.tif

# stacked ldr images
LDR_STACK_0=00000001-00000028_stack_ldr_0000.tif
LDR_STACK_0_SHELL=00000001-00000028_stack_ldr_0000.tif
LDR_STACK_0_INPUT=00000001-00000028_exposure_layers_0000.tif\
00000001-00000028_exposure_layers_0001.tif\
00000001-00000028_exposure_layers_0002.tif\
00000001-00000028_exposure_layers_0021.tif\
00000001-00000028_exposure_layers_0022.tif\
00000001-00000028_exposure_layers_0023.tif
LDR_STACK_0_INPUT_SHELL=00000001-00000028_exposure_layers_0000.tif\
00000001-00000028_exposure_layers_0001.tif\
00000001-00000028_exposure_layers_0002.tif\
00000001-00000028_exposure_layers_0021.tif\
00000001-00000028_exposure_layers_0022.tif\
00000001-00000028_exposure_layers_0023.tif
LDR_STACK_1=00000001-00000028_stack_ldr_0001.tif
LDR_STACK_1_SHELL=00000001-00000028_stack_ldr_0001.tif
LDR_STACK_1_INPUT=00000001-00000028_exposure_layers_0003.tif
LDR_STACK_1_INPUT_SHELL=00000001-00000028_exposure_layers_0003.tif
LDR_STACK_2=00000001-00000028_stack_ldr_0002.tif
LDR_STACK_2_SHELL=00000001-00000028_stack_ldr_0002.tif
LDR_STACK_2_INPUT=00000001-00000028_exposure_layers_0004.tif\
00000001-00000028_exposure_layers_0005.tif
LDR_STACK_2_INPUT_SHELL=00000001-00000028_exposure_layers_0004.tif\
00000001-00000028_exposure_layers_0005.tif
LDR_STACK_3=00000001-00000028_stack_ldr_0003.tif
LDR_STACK_3_SHELL=00000001-00000028_stack_ldr_0003.tif
LDR_STACK_3_INPUT=00000001-00000028_exposure_layers_0006.tif\
00000001-00000028_exposure_layers_0007.tif
LDR_STACK_3_INPUT_SHELL=00000001-00000028_exposure_layers_0006.tif\
00000001-00000028_exposure_layers_0007.tif
LDR_STACK_4=00000001-00000028_stack_ldr_0004.tif
LDR_STACK_4_SHELL=00000001-00000028_stack_ldr_0004.tif
LDR_STACK_4_INPUT=00000001-00000028_exposure_layers_0008.tif
LDR_STACK_4_INPUT_SHELL=00000001-00000028_exposure_layers_0008.tif
LDR_STACK_5=00000001-00000028_stack_ldr_0005.tif
LDR_STACK_5_SHELL=00000001-00000028_stack_ldr_0005.tif
LDR_STACK_5_INPUT=00000001-00000028_exposure_layers_0013.tif\
00000001-00000028_exposure_layers_0014.tif
LDR_STACK_5_INPUT_SHELL=00000001-00000028_exposure_layers_0013.tif\
00000001-00000028_exposure_layers_0014.tif
LDR_STACK_6=00000001-00000028_stack_ldr_0006.tif
LDR_STACK_6_SHELL=00000001-00000028_stack_ldr_0006.tif
LDR_STACK_6_INPUT=00000001-00000028_exposure_layers_0015.tif
LDR_STACK_6_INPUT_SHELL=00000001-00000028_exposure_layers_0015.tif
LDR_STACK_7=00000001-00000028_stack_ldr_0007.tif
LDR_STACK_7_SHELL=00000001-00000028_stack_ldr_0007.tif
LDR_STACK_7_INPUT=00000001-00000028_exposure_layers_0016.tif
LDR_STACK_7_INPUT_SHELL=00000001-00000028_exposure_layers_0016.tif
LDR_STACK_8=00000001-00000028_stack_ldr_0008.tif
LDR_STACK_8_SHELL=00000001-00000028_stack_ldr_0008.tif
LDR_STACK_8_INPUT=00000001-00000028_exposure_layers_0017.tif
LDR_STACK_8_INPUT_SHELL=00000001-00000028_exposure_layers_0017.tif
LDR_STACK_9=00000001-00000028_stack_ldr_0009.tif
LDR_STACK_9_SHELL=00000001-00000028_stack_ldr_0009.tif
LDR_STACK_9_INPUT=00000001-00000028_exposure_layers_0018.tif\
00000001-00000028_exposure_layers_0019.tif
LDR_STACK_9_INPUT_SHELL=00000001-00000028_exposure_layers_0018.tif\
00000001-00000028_exposure_layers_0019.tif
LDR_STACK_10=00000001-00000028_stack_ldr_0010.tif
LDR_STACK_10_SHELL=00000001-00000028_stack_ldr_0010.tif
LDR_STACK_10_INPUT=00000001-00000028_exposure_layers_0020.tif
LDR_STACK_10_INPUT_SHELL=00000001-00000028_exposure_layers_0020.tif
LDR_STACKS_NUMBERS=0 1 2 3 4 5 6 7 8 9 10 
LDR_STACKS=$(LDR_STACK_0) $(LDR_STACK_1) $(LDR_STACK_2) $(LDR_STACK_3) $(LDR_STACK_4) $(LDR_STACK_5) $(LDR_STACK_6) $(LDR_STACK_7) $(LDR_STACK_8) $(LDR_STACK_9) $(LDR_STACK_10) 
LDR_STACKS_SHELL=$(LDR_STACK_0_SHELL) $(LDR_STACK_1_SHELL) $(LDR_STACK_2_SHELL) $(LDR_STACK_3_SHELL) $(LDR_STACK_4_SHELL) $(LDR_STACK_5_SHELL) $(LDR_STACK_6_SHELL) $(LDR_STACK_7_SHELL) $(LDR_STACK_8_SHELL) $(LDR_STACK_9_SHELL) $(LDR_STACK_10_SHELL) 
DO_LDR_BLENDED=1

all : startStitching $(LDR_BLENDED) 

startStitching : 
	@echo '==========================================================================='
	@echo 'Stitching panorama'
	@echo '==========================================================================='

clean : 
	@echo '==========================================================================='
	@echo 'Remove temporary files'
	@echo '==========================================================================='
	-$(RM) $(LDR_LAYERS_SHELL) 

test : 
	@echo '==========================================================================='
	@echo 'Testing programs'
	@echo '==========================================================================='
	@echo -n 'Checking nona...'
	@-$(NONA) --help > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking enblend...'
	@-$(ENBLEND) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking enfuse...'
	@-$(ENFUSE) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking hugin_hdrmerge...'
	@-$(HDRMERGE) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking exiftool...'
	@-$(EXIFTOOL) -ver > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'

info : 
	@echo '==========================================================================='
	@echo '***************  Panorama makefile generated by Hugin       ***************'
	@echo '==========================================================================='
	@echo 'System information'
	@echo '==========================================================================='
	@echo -n 'Operating system: '
	@-uname -o
	@echo -n 'Release: '
	@-uname -r
	@echo -n 'Kernel version: '
	@-uname -v
	@echo -n 'Machine: '
	@-uname -m
	@echo 'Disc usage'
	@-df -h
	@echo 'Memory usage'
	@-free -m
	@echo '==========================================================================='
	@echo 'Output options'
	@echo '==========================================================================='
	@echo 'Hugin Version: 2011.0.0.0f9fdaf56720'
	@echo 'Project file: /home/user/Desktop/A.MP4.frames/00000001-00000028.pto'
	@echo 'Output prefix: 00000001-00000028'
	@echo 'Projection: Cylindrical (1)'
	@echo 'Field of view: 179 x 22'
	@echo 'Canvas dimensions: 3827 x 473'
	@echo 'Crop area: (0,0) - (3827,473)'
	@echo 'Output exposure value: -0.03'
	@echo 'Selected outputs'
	@echo 'Normal panorama'
	@echo '* Blended panorama'
	@echo '==========================================================================='
	@echo 'Input images'
	@echo '==========================================================================='
	@echo 'Number of images in project file: 24'
	@echo 'Number of active images: 20'
	@echo 'Image 0: /home/user/Desktop/A.MP4.frames/00000001.jpg'
	@echo 'Image 0: Size 720x576, Exposure: 0.00'
	@echo 'Image 1: /home/user/Desktop/A.MP4.frames/00000002.jpg'
	@echo 'Image 1: Size 720x576, Exposure: -0.09'
	@echo 'Image 2: /home/user/Desktop/A.MP4.frames/00000003.jpg'
	@echo 'Image 2: Size 720x576, Exposure: -0.13'
	@echo 'Image 3: /home/user/Desktop/A.MP4.frames/00000004.jpg'
	@echo 'Image 3: Size 720x576, Exposure: -0.22'
	@echo 'Image 4: /home/user/Desktop/A.MP4.frames/00000005.jpg'
	@echo 'Image 4: Size 720x576, Exposure: -0.66'
	@echo 'Image 5: /home/user/Desktop/A.MP4.frames/00000006.jpg'
	@echo 'Image 5: Size 720x576, Exposure: -0.68'
	@echo 'Image 6: /home/user/Desktop/A.MP4.frames/00000007.jpg'
	@echo 'Image 6: Size 720x576, Exposure: -0.82'
	@echo 'Image 7: /home/user/Desktop/A.MP4.frames/00000008.jpg'
	@echo 'Image 7: Size 720x576, Exposure: -0.92'
	@echo 'Image 8: /home/user/Desktop/A.MP4.frames/00000009.jpg'
	@echo 'Image 8: Size 720x576, Exposure: -0.76'
	@echo 'Image 13: /home/user/Desktop/A.MP4.frames/00000017.jpg'
	@echo 'Image 13: Size 720x576, Exposure: 0.28'
	@echo 'Image 14: /home/user/Desktop/A.MP4.frames/00000018.jpg'
	@echo 'Image 14: Size 720x576, Exposure: 0.21'
	@echo 'Image 15: /home/user/Desktop/A.MP4.frames/00000019.jpg'
	@echo 'Image 15: Size 720x576, Exposure: 0.21'
	@echo 'Image 16: /home/user/Desktop/A.MP4.frames/00000020.jpg'
	@echo 'Image 16: Size 720x576, Exposure: 0.56'
	@echo 'Image 17: /home/user/Desktop/A.MP4.frames/00000022.jpg'
	@echo 'Image 17: Size 720x576, Exposure: 0.64'
	@echo 'Image 18: /home/user/Desktop/A.MP4.frames/00000023.jpg'
	@echo 'Image 18: Size 720x576, Exposure: 0.09'
	@echo 'Image 19: /home/user/Desktop/A.MP4.frames/00000024.jpg'
	@echo 'Image 19: Size 720x576, Exposure: -0.30'
	@echo 'Image 20: /home/user/Desktop/A.MP4.frames/00000025.jpg'
	@echo 'Image 20: Size 720x576, Exposure: -0.25'
	@echo 'Image 21: /home/user/Desktop/A.MP4.frames/00000026.jpg'
	@echo 'Image 21: Size 720x576, Exposure: -0.18'
	@echo 'Image 22: /home/user/Desktop/A.MP4.frames/00000027.jpg'
	@echo 'Image 22: Size 720x576, Exposure: -0.16'
	@echo 'Image 23: /home/user/Desktop/A.MP4.frames/00000028.jpg'
	@echo 'Image 23: Size 720x576, Exposure: -0.13'

# Rules for ordinary TIFF_m and hdr output

00000001-000000280000.tif : /home/user/Desktop/A.MP4.frames/00000001.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0000.exr : /home/user/Desktop/A.MP4.frames/00000001.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

00000001-000000280001.tif : /home/user/Desktop/A.MP4.frames/00000002.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0001.exr : /home/user/Desktop/A.MP4.frames/00000002.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

00000001-000000280002.tif : /home/user/Desktop/A.MP4.frames/00000003.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0002.exr : /home/user/Desktop/A.MP4.frames/00000003.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

00000001-000000280003.tif : /home/user/Desktop/A.MP4.frames/00000004.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0003.exr : /home/user/Desktop/A.MP4.frames/00000004.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

00000001-000000280004.tif : /home/user/Desktop/A.MP4.frames/00000005.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0004.exr : /home/user/Desktop/A.MP4.frames/00000005.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

00000001-000000280005.tif : /home/user/Desktop/A.MP4.frames/00000006.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0005.exr : /home/user/Desktop/A.MP4.frames/00000006.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

00000001-000000280006.tif : /home/user/Desktop/A.MP4.frames/00000007.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0006.exr : /home/user/Desktop/A.MP4.frames/00000007.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

00000001-000000280007.tif : /home/user/Desktop/A.MP4.frames/00000008.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0007.exr : /home/user/Desktop/A.MP4.frames/00000008.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

00000001-000000280008.tif : /home/user/Desktop/A.MP4.frames/00000009.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0008.exr : /home/user/Desktop/A.MP4.frames/00000009.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

00000001-000000280013.tif : /home/user/Desktop/A.MP4.frames/00000017.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 13 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0013.exr : /home/user/Desktop/A.MP4.frames/00000017.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 13 $(PROJECT_FILE_SHELL)

00000001-000000280014.tif : /home/user/Desktop/A.MP4.frames/00000018.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 14 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0014.exr : /home/user/Desktop/A.MP4.frames/00000018.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 14 $(PROJECT_FILE_SHELL)

00000001-000000280015.tif : /home/user/Desktop/A.MP4.frames/00000019.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 15 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0015.exr : /home/user/Desktop/A.MP4.frames/00000019.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 15 $(PROJECT_FILE_SHELL)

00000001-000000280016.tif : /home/user/Desktop/A.MP4.frames/00000020.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 16 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0016.exr : /home/user/Desktop/A.MP4.frames/00000020.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 16 $(PROJECT_FILE_SHELL)

00000001-000000280017.tif : /home/user/Desktop/A.MP4.frames/00000022.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 17 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0017.exr : /home/user/Desktop/A.MP4.frames/00000022.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 17 $(PROJECT_FILE_SHELL)

00000001-000000280018.tif : /home/user/Desktop/A.MP4.frames/00000023.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 18 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0018.exr : /home/user/Desktop/A.MP4.frames/00000023.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 18 $(PROJECT_FILE_SHELL)

00000001-000000280019.tif : /home/user/Desktop/A.MP4.frames/00000024.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 19 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0019.exr : /home/user/Desktop/A.MP4.frames/00000024.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 19 $(PROJECT_FILE_SHELL)

00000001-000000280020.tif : /home/user/Desktop/A.MP4.frames/00000025.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 20 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0020.exr : /home/user/Desktop/A.MP4.frames/00000025.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 20 $(PROJECT_FILE_SHELL)

00000001-000000280021.tif : /home/user/Desktop/A.MP4.frames/00000026.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 21 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0021.exr : /home/user/Desktop/A.MP4.frames/00000026.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 21 $(PROJECT_FILE_SHELL)

00000001-000000280022.tif : /home/user/Desktop/A.MP4.frames/00000027.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 22 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0022.exr : /home/user/Desktop/A.MP4.frames/00000027.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 22 $(PROJECT_FILE_SHELL)

00000001-000000280023.tif : /home/user/Desktop/A.MP4.frames/00000028.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 23 $(PROJECT_FILE_SHELL)

00000001-00000028_hdr_0023.exr : /home/user/Desktop/A.MP4.frames/00000028.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 23 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

00000001-00000028_exposure_layers_0000.tif : /home/user/Desktop/A.MP4.frames/00000001.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0001.tif : /home/user/Desktop/A.MP4.frames/00000002.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.0917269 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0002.tif : /home/user/Desktop/A.MP4.frames/00000003.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.13064 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0003.tif : /home/user/Desktop/A.MP4.frames/00000004.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.224727 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0013.tif : /home/user/Desktop/A.MP4.frames/00000017.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0.284198 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 13 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0014.tif : /home/user/Desktop/A.MP4.frames/00000018.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0.211068 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 14 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0015.tif : /home/user/Desktop/A.MP4.frames/00000019.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0.209901 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 15 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0018.tif : /home/user/Desktop/A.MP4.frames/00000023.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0.094097 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 18 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0019.tif : /home/user/Desktop/A.MP4.frames/00000024.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.300511 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 19 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0020.tif : /home/user/Desktop/A.MP4.frames/00000025.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.250878 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 20 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0021.tif : /home/user/Desktop/A.MP4.frames/00000026.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.184336 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 21 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0022.tif : /home/user/Desktop/A.MP4.frames/00000027.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.161098 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 22 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0023.tif : /home/user/Desktop/A.MP4.frames/00000028.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.131044 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 23 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0004.tif : /home/user/Desktop/A.MP4.frames/00000005.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.660405 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0005.tif : /home/user/Desktop/A.MP4.frames/00000006.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.681742 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0006.tif : /home/user/Desktop/A.MP4.frames/00000007.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.824541 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0007.tif : /home/user/Desktop/A.MP4.frames/00000008.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.9188 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0008.tif : /home/user/Desktop/A.MP4.frames/00000009.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e -0.759137 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0016.tif : /home/user/Desktop/A.MP4.frames/00000020.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0.556914 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 16 $(PROJECT_FILE_SHELL)

00000001-00000028_exposure_layers_0017.tif : /home/user/Desktop/A.MP4.frames/00000022.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0.638103 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 17 $(PROJECT_FILE_SHELL)

# Rules for LDR and HDR stack merging, a rule for each stack

$(LDR_STACK_0) : $(LDR_STACK_0_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_0_SHELL) -- $(LDR_STACK_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_0_SHELL)

$(HDR_STACK_0) : $(HDR_STACK_0_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_0_SHELL) -- $(HDR_STACK_0_INPUT_SHELL)

$(LDR_STACK_1) : $(LDR_STACK_1_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_1_SHELL) -- $(LDR_STACK_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_1_SHELL)

$(HDR_STACK_1) : $(HDR_STACK_1_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_1_SHELL) -- $(HDR_STACK_1_INPUT_SHELL)

$(LDR_STACK_2) : $(LDR_STACK_2_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_2_SHELL) -- $(LDR_STACK_2_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_2_SHELL)

$(HDR_STACK_2) : $(HDR_STACK_2_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_2_SHELL) -- $(HDR_STACK_2_INPUT_SHELL)

$(LDR_STACK_3) : $(LDR_STACK_3_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_3_SHELL) -- $(LDR_STACK_3_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_3_SHELL)

$(HDR_STACK_3) : $(HDR_STACK_3_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_3_SHELL) -- $(HDR_STACK_3_INPUT_SHELL)

$(LDR_STACK_4) : $(LDR_STACK_4_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_4_SHELL) -- $(LDR_STACK_4_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_4_SHELL)

$(HDR_STACK_4) : $(HDR_STACK_4_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_4_SHELL) -- $(HDR_STACK_4_INPUT_SHELL)

$(LDR_STACK_5) : $(LDR_STACK_5_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_5_SHELL) -- $(LDR_STACK_5_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_5_SHELL)

$(HDR_STACK_5) : $(HDR_STACK_5_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_5_SHELL) -- $(HDR_STACK_5_INPUT_SHELL)

$(LDR_STACK_6) : $(LDR_STACK_6_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_6_SHELL) -- $(LDR_STACK_6_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_6_SHELL)

$(HDR_STACK_6) : $(HDR_STACK_6_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_6_SHELL) -- $(HDR_STACK_6_INPUT_SHELL)

$(LDR_STACK_7) : $(LDR_STACK_7_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_7_SHELL) -- $(LDR_STACK_7_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_7_SHELL)

$(HDR_STACK_7) : $(HDR_STACK_7_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_7_SHELL) -- $(HDR_STACK_7_INPUT_SHELL)

$(LDR_STACK_8) : $(LDR_STACK_8_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_8_SHELL) -- $(LDR_STACK_8_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_8_SHELL)

$(HDR_STACK_8) : $(HDR_STACK_8_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_8_SHELL) -- $(HDR_STACK_8_INPUT_SHELL)

$(LDR_STACK_9) : $(LDR_STACK_9_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_9_SHELL) -- $(LDR_STACK_9_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_9_SHELL)

$(HDR_STACK_9) : $(HDR_STACK_9_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_9_SHELL) -- $(HDR_STACK_9_INPUT_SHELL)

$(LDR_STACK_10) : $(LDR_STACK_10_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_10_SHELL) -- $(LDR_STACK_10_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_10_SHELL)

$(HDR_STACK_10) : $(HDR_STACK_10_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_10_SHELL) -- $(HDR_STACK_10_INPUT_SHELL)

$(LDR_BLENDED) : $(LDR_LAYERS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_BLENDED_SHELL) -- $(LDR_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYER_0) : $(LDR_EXPOSURE_LAYER_0_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_0_SHELL) -- $(LDR_EXPOSURE_LAYER_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_0_SHELL)

$(LDR_EXPOSURE_LAYER_1) : $(LDR_EXPOSURE_LAYER_1_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_1_SHELL) -- $(LDR_EXPOSURE_LAYER_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_1_SHELL)

$(LDR_EXPOSURE_LAYER_2) : $(LDR_EXPOSURE_LAYER_2_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_2_SHELL) -- $(LDR_EXPOSURE_LAYER_2_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_2_SHELL)

$(LDR_STACKED_BLENDED) : $(LDR_STACKS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_STACKED_BLENDED_SHELL) -- $(LDR_STACKS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_STACKED_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYERS_FUSED) : $(LDR_EXPOSURE_LAYERS) 
	$(ENFUSE) $(ENBLEND_LDR_COMP) $(ENFUSE_OPTS) -o $(LDR_EXPOSURE_LAYERS_FUSED_SHELL) -- $(LDR_EXPOSURE_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_EXPOSURE_LAYERS_FUSED_SHELL)

$(HDR_BLENDED) : $(HDR_STACKS) 
	$(ENBLEND) $(ENBLEND_HDR_COMP) $(ENBLEND_OPTS) -o $(HDR_BLENDED_SHELL) -- $(HDR_STACKS_SHELL)

$(LDR_REMAPPED_PREFIX)_multilayer.tif : $(LDR_LAYERS) 
	tiffcp $(LDR_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.tif

$(LDR_REMAPPED_PREFIX)_fused_multilayer.tif : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	tiffcp $(LDR_STACKS_SHELL) $(LDR_EXPOSURE_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.tif

$(LDR_REMAPPED_PREFIX)_multilayer.psd : $(LDR_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.psd $(LDR_LAYERS_SHELL)

$(LDR_REMAPPED_PREFIX)_fused_multilayer.psd : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.psd $(LDR_STACKS_SHELL)$(LDR_EXPOSURE_LAYERS_SHELL)
