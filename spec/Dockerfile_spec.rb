require "docker"

# Workaround needed for circleCI
# Read https://workshop.avatarnewyork.com/post/test-docker-images-with-circleci/
if ENV["CIRCLECI"]
  class Docker::Container
    def remove(_options = {}); end
    alias_method :delete, :remove
  end
end

describe "Dockerfile" do
  before(:all) do
    image = Docker::Image.build_from_dir "."

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  it "installs the right version of Ubuntu" do
    expect(os_version).to include "Ubuntu 14"
  end

  xit "installs required packages" do
    expect(package("phantomjs")).to be_installed
  end

  def os_version
    command("lsb_release -a").stdout
  end
end
