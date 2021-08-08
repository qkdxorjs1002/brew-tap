cask "anisched" do
    version "2.3.2"
    sha256 "be127382338c93381d15c6113fbc94dd0d60cf246b1d5750ddb0c40eb5ea997c"
  
    url "https://github.com/qkdxorjs1002/AniSched-Desktop/releases/download/#{version}/AniSched.#{version}.dmg"
    name "AniSched"
    desc "Animation TimeTable app for macOS"
    homepage "https://github.com/qkdxorjs1002/AniSched-Desktop"
  
    livecheck do
      url :url
      strategy :github_latest
    end
  
    depends_on macos: ">= :el_capitan"
  
    app "AniSched.app"
  
    zap trash: [
      "~/Library/Containers/kr.paragonnov.anisched"
    ]
end
