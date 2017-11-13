Pod::Spec.new do |s|

  s.name         = "APITestTT"
  s.version      = "0.0.1"
  s.summary      = "APITestTT on iOS."
  s.description  = <<-DESC
                   Custom
                   DESC

  s.homepage     = "https://github.com/ThisMe07/APITestTT"
  s.license      = "MIT"
  s.author             = { "ThisMe07" => "1223324751@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ThisMe07/APITestTT.git", :tag => "#{s.version}" }
  s.source_files  =  'Extension/*'
  s.requires_arc     = true

end
