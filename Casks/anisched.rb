cask "anisched" do
    version "2.3.0"
    sha256 "31cfbe281fb5e7f427713ebde54fd83bb17f394cc66885d4b4f14f5f523bb739"
  
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
