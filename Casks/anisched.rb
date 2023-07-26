cask "anisched" do
    version "2.4.6"
    sha256 "b50c5ae7f4de4fb488c28620be0ac09465818dd78a4b6e4f84c3f85a0944a557"
  
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
