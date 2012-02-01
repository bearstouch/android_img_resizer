## What is Android Image Resizer

Android Image Resizer is a tool to resize android project image files with the proper sizes.

For example a image in res/drawable/xhdpi  with 200x200px as a base file will be resized to :

* res/drawable/hdpi with 150x150 px
* res/drawable/mdpi with 100x100 px
* res/drawable/ldpi with 75x75 px 


## Install the gem ##

Install it with [RubyGems](https://rubygems.org/)

	sudo gem install android_img_resizer
	
Note: You need to install rmagick gem first.

Please follow the instructions described in this page [rimagick install](http://rmagick.rubyforge.org/install-osx.html)


## How To use it 

In the Android Project directory (PATH that has a AndroidManifest.xml) file please type: 

	cd <PROJECT_PATH>

### To list all drawable resource imagefiles
	
	android_img_resizer list [xhdpi|hdpi] 

### To Resize a resource image File 	
	
	android_img_resizer img <image_filename> [xhdpi|hdpi]  

### To Resize all resource image files 
	
	android_img_resizer all [xhdpi|hdpi]  

Note: by default Android Image resizer will use xhdpi as base image file. 

To use hdpi as base image file  please type hdpi in the optional argument

## License and copyright ##

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## How can i help ?

Contributions are welcome ! The project is mainly missing documentation and examples...

