#!/usr/bin/env python
import sys, os
from PIL import Image, ImageFilter

# contantes
MAX_CHANNELS = 16
IMAGE_SIZE = 2048
BURST_SIZE = 128
pattern = (0,1,1,2) #rggb
DATA_SIZE = 10

STATE_PX_BURST_OUT_CTRL = 0b001000000111
STATE_BURST_OH_OUT_CTRL = 0b001000001110
STATE_ROW_OH_OUT_CTRL   = 0b001000011100

''' [0] DVAL	[1]	LVAL	[2] FVAL  [3] SLOT	[4] ROW	[5] FOT
		[6] INTE1	[7]	INTE2	[8] '0'		[9] '1' 	[10]'0' [11] '0' '''

STATE_PX_BURST= 0x01
STATE_BURST_OH= 0x02
STATE_ROW_OH  = 0x03

def get_pixel_color_by_pattern( img, pattern, i, j):
  return img[i,j][ pattern[ (i%2) + ((j%2)*2) ] ]

def generate_output_sensor_render(file):
  im = Image.open( file )
  img_orig = im.load()
  img = Image.new("L", (IMAGE_SIZE, IMAGE_SIZE), 0)
  px = img.load()
  for i in range(IMAGE_SIZE):    
    for j in range(IMAGE_SIZE):
      px[i,j] = get_pixel_color_by_pattern(img_orig, pattern, i, j)
  img.save( file + ".output-sensor.png", "PNG")

def generate_pattern_color_render(file):
  im = Image.open( file )
  img_orig = im.load()
  img = Image.new("RGB", (IMAGE_SIZE, IMAGE_SIZE), (0,0,0))
  px = img.load()
  for i in range(IMAGE_SIZE):    
    for j in range(IMAGE_SIZE):
      color= ()
      for c in range(3):
        color += (get_pixel_color_by_pattern(img_orig, pattern, i, j),) if pattern[i%2+(j%2)*2] == c else (0,) 
      px[i,j] = color
  img.save( file + ".pattern-color.png", "PNG")

def hex_upper( v ):
	return hex( v )[2:].upper()
	
def ch_to_hex ( px ):
	return hex_upper( px ).zfill(3)

def state_to_hex ( state ):
	return hex_upper( state ).zfill(1)
	
def get_output_data_null() :
	s = ''
	for ch in range(MAX_CHANNELS):
		s += ch_to_hex(0)
	return s

def write_lvds_file(file, pattern, n_channel):
  BURST_PER_ROW = IMAGE_SIZE // (BURST_SIZE * n_channel)
  im = Image.open( file )
  image = im.load()
  
  def get_output_px_burst( data ) :
    return state_to_hex(STATE_PX_BURST) + ch_to_hex(STATE_PX_BURST_OUT_CTRL) + data + '\n'

  def get_output_burst_oh() :
    return state_to_hex(STATE_BURST_OH) + ch_to_hex(STATE_BURST_OH_OUT_CTRL) + get_output_data_null() + '\n'

  def get_output_row_oh() :
    return state_to_hex(STATE_ROW_OH) + ch_to_hex(STATE_ROW_OH_OUT_CTRL) + get_output_data_null() + '\n'

  def get_output_px (row, burst, pixel):
    data = ''
    for channel in range(n_channel):
      i = pixel + channel * (IMAGE_SIZE // n_channel)
      j = row  
      for duplicate_data in range(MAX_CHANNELS // n_channel):
        data += ch_to_hex(   get_pixel_color_by_pattern( image, pattern, i, j) )
    return get_output_px_burst(data)

  f = open(file + ".sim-data-lvds",'w')
  for row in range(IMAGE_SIZE):
    for burst in range(BURST_PER_ROW):
      for pixel in range(BURST_SIZE):
        f.write( get_output_px(row, burst, pixel) )
      if burst < BURST_PER_ROW-1:
        f.write( get_output_burst_oh() )
    if row < IMAGE_SIZE-1:
      f.write( get_output_row_oh() )
  f.close()


def main():
  if len(sys.argv) < 2:
    sys.stderr.write("Usage: <picture> <n_channel>\n")
    return 1
  file = sys.argv[1]
  n_channel = 2;
  if len(sys.argv) >= 3:
    n_channel = sys.argv[2]

  img  = Image.open( file )
  if img.size[0] < IMAGE_SIZE or img.size[1] < IMAGE_SIZE:
    sys.stderr.write("Error: image incorecte (taille minimum "+str(IMAGE_SIZE)+"x"+str(IMAGE_SIZE)+"px)\n")
    return 1

  sys.stdout.write("Generation des fichiers de simulation en cour\n")
  generate_output_sensor_render(file)
  generate_pattern_color_render(file)
  write_lvds_file( file, pattern, 2)

if __name__ == '__main__':
  main()
