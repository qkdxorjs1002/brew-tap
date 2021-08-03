cask "anisched" do
    version "2.2.3"
    sha256 "98e41c206c739581ce3eacedd04a6b634f66c6eadfcbfd8adf75eb94a1b5909d"
  
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
