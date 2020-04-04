Pod::Spec.new do |s|
  s.name = 'SCOAPIClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'vv1' }
  s.authors = 'Matthew Shu'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'SCOAPIClient Swift SDK'
  s.source_files = 'SCOAPIClient/Classes/**/*.swift'
end
