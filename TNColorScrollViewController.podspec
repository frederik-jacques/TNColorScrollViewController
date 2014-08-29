Pod::Spec.new do |s|

  s.name         = "TNColorScrollViewController"
  s.version      = "0.1"
  s.summary      = "A view controller for Objective-C which creates a scrollview with view with different background colors."
  s.homepage     = "http://blog.the-nerd.be/2014/08/tncolorscrollviewcontroller-easy-scrollview-with-different-color-views/"
  s.screenshots  = "ttp://cl.ly/XGuR/Screen%20Recording%202014-08-29%20at%2012.26%20pm.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  
  s.author             = { "Frederik Jacques" => "frederik@the-nerd.be" }
  s.social_media_url   = "http://twitter.com/thenerd_be"
  
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/frederik-jacques/TNColorScrollViewController.git", 
  :tag => "0.1" 
  }

  s.source_files  = "src/*.{h,m}"
  s.requires_arc = true

end
