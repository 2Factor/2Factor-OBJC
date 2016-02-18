Pod::Spec.new do |s|
  s.name             = "M2Factor"
  s.version          = "0.0.1"
  s.summary          = <<-SUMMARY
  <p>2Factor.in provides extremely simple to use APIs for implementing 2Factor Authentication ( Phone verification ) with just 1 API Call.
Best Part of 2Factor.in solution is its Fast, Reliable & Economical too.</p>

SUMMARY
  s.homepage         = "http://apimatic.io"
  s.license          = 'MIT'
  s.author           = { "APIMATIC" => "support@apimatic.io" }

  s.requires_arc     = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.source_files     = 'M2Factor/**/*.{h,m}'

  s.dependency       'Unirest' , '~> 1.1.2'
  s.dependency       'JSONModel'
end
