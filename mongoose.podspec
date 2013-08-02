Pod::Spec.new do |s|
  s.name         = "mongoose"
  s.version      = "3.8"
  s.summary      = "Mongoose Objecitve-C Wraper"
  s.homepage     = "http://EXAMPLE/Example.podspec"
  s.license      = 'BSD'


  # Specify the authors of the library, with email addresses. You can often find
  # the email addresses of the authors by using the SCM log. E.g. $ git log
  #
  s.author       = 'Rama McIntosh', 'CIM', 'Jack Wang'

  # Specify the location from where the source should be retreived.
  #
  s.source       = { :git => "https://github.com/hijackwang/MongooseDaemon.git" }

  # If this Pod runs only on iOS or OS X, then specify the platform and
  # the deployment target.
  #
  # s.platform     = :ios, '5.0'
  s.platform     = :ios

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  s.source_files = 'MongooseDaemon.{h,m}', 'mongoose/*.{h,c}'
  s.requires_arc = true
end
