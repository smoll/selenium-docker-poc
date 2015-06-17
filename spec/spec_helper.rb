require "serverspec"

if ENV["CI"]
  require "coveralls"
  require "yarjuf"

  Coveralls.wear!
end
