## Copyright (C) 2019 Greg Paton
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## To load this file in the command window run:
## >> image_functions

# Prevent Octave from thinking that this
# is a function file:

1;

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} image_functions (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Greg Paton <gpaton@Systemss-Mini.phonetics.com>
## Created: 2019-01-17

function graphRgb (imageFileName)
  inputImage = imread(imageFileName);
  image = imread(imageFileName);
  # Get the image planes as vectors for graphing
  componentR = inputImage(:,:,1)(:);
  componentG = inputImage(:,:,2)(:);
  componentB = inputImage(:,:,3)(:);
  figure
  hold on
  plot(componentR, ':r');
  plot(componentG, ':g');
  plot(componentB, ':b');
endfunction
