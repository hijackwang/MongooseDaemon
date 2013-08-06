Pod::Spec.new do |s|
  s.name         = 'mongoose'
  s.version      = '1.0'
  s.summary      = "Mongoose OC Wraper."
  s.homepage     = 'https://github.com/hijackwang/MongooseDaemon'
  s.license      = 'BSD'

  s.author       = 'Rama McIntosh', 'CIM', 'Jack Wang'

  s.source       = { :git => "https://github.com/hijackwang/MongooseDaemon.git" , :tag => '1.0'}

  s.platform     = :ios

  s.source_files = 'MongooseDaemon.{h,m}', 'mongoose/*.{h,c}'
  s.requires_arc = true
end
