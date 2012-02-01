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