require 'rubygems'
require 'RMagick'

module AndroidImgResizer
	
  class AndroidImgResizer	
	 
  def AndroidImgResizer.verify_android_project
  	directories=["res","res/drawable-hdpi","res/drawable-mdpi","res/drawable-ldpi"]
	
    directories.each do |directory|
      if  !File::directory?(directory)
        puts "Error: This is not a Android project Directory"
        puts "Error: Directory not exists"+directory
        return false
      end

    end
    return true
  end

  def AndroidImgResizer.list_images(from="xhdpi")
    return if !self.verify_android_project
    Dir::chdir("res/drawable-"+from+"/")
    files=Dir["*.{png,jpg,gif,bitmap}"] 
    files.each do |entry|
      puts "Drawable File = #{entry}"
    end
  end

  def AndroidImgResizer.resize_all_images(from="xhdpi")
    return if !self.verify_android_project
    Dir::chdir("res/drawable-"+from+"/")
    files=Dir["*.{png,jpg,gif,bitmap}"]
    Dir::chdir("../../")
    files.each do |entry|      
      resize_image(entry,from)
    end
  end

  def AndroidImgResizer.resize_image(image,from="xhdpi")
    return if !self.verify_android_project
    #clean_files image	    
    if from == 'xhdpi'
      # Base Image file is in xdpi directory
      img = Magick::Image.read("res/drawable-xhdpi/"+image).first 	    
      puts "Resizing Image = #{image} with size = #{img.columns}x#{img.rows}"
      # 150% Resizing
      xsize=(img.columns*1.5)/2
      ysize=(img.rows*1.5)/2
      puts "Image = #{image} hdpi = #{xsize.to_i}x#{ysize.to_i}"
      hdpi = img.scale(xsize.to_i,ysize.to_i)
      hdpi.write "res/drawable-hdpi/"+image
      # 100% Resizing
      xsize=(img.columns)/2
      ysize=(img.rows)/2
      puts "Image = #{image} mdpi = #{xsize.to_i}x#{ysize.to_i}"
      mdpi = img.scale(xsize.to_i,ysize.to_i)
      mdpi.write "res/drawable-mdpi/"+image

      # 75% Resizing
      xsize=(img.columns*0.75)/2
      ysize=(img.rows*0.75)/2
      puts "Image = #{image} ldpi = #{xsize.to_i}x#{ysize.to_i}"
      dpi = img.scale(xsize.to_i,ysize.to_i)
      dpi.write "res/drawable-ldpi/"+image
    else
      img = Magick::Image.read("res/drawable-hdpi/"+image).first 	    
      puts "Resizing Image = #{image} with size = #{img.columns}x#{img.rows}"
      # Base Image file is in xdpi directory
      #150% -> 100% 
      xsize=(img.columns)/1.5
      ysize=(img.rows)/1.5
      puts "Image = #{image} mdpi = #{xsize.to_i}x#{ysize.to_i}"
      mdpi = img.scale(xsize.to_i,ysize.to_i)
      mdpi.write "res/drawable-mdpi/"+image

      #150% -> 75% 
      xsize=(img.columns)/2
      ysize=(img.rows)/2
      puts "Image = #{image} ldpi = #{xsize.to_i}x#{ysize.to_i}"
      dpi = img.scale(xsize.to_i,ysize.to_i)
      dpi.write "res/drawable-ldpi/"+image     
    end  
    
   
  end 

  def AndroidImgResizer.clean_files(imgtoclean)
    File.delete("res/drawable-hdpi/"+imgtoclean)  if File::exists?("res/drawable-hdpi/"+imgtoclean)
    File.delete("res/drawable-mdpi/"+imgtoclean)  if File::exists?("res/drawable-mdpi/"+imgtoclean)
    File.delete("res/drawable-ldpi/"+imgtoclean)  if File::exists?("res/drawable-ldpi/"+imgtoclean)
  end
end
end
