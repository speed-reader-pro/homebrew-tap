cask "speed-reader" do                                                                                                                                   
    version "1.1.7"
    sha256 "5245fcb1138ee0c2477cd6ec34384586a97a7d67c27db52c1ff82113d8b97c02"                                                                              
                                                                                                                                                           
    url "https://github.com/speed-reader-pro/speed-reader-app-releases/releases/download/v#{version}/SpeedReader.dmg",
        verified: "github.com/speed-reader-pro/speed-reader-app-releases/"
    name "Speed Reader"                                                                                                                                    
    desc "RSVP speed-reading app with ORP highlighting"                                                                                                    
    homepage "https://speed-reader.pro"                                                                                                                    
                                                                                                                                                           
    livecheck do                                                                                                                                           
      url "https://speed-reader-pro.github.io/speed-reader-app-releases/appcast.xml"                                                                       
      strategy :sparkle                                                                                                                                    
    end                                                                                                                                                    
                                                                                                                                                           
    auto_updates true                                                                                                                                      
    depends_on macos: ">= :sonoma"

    app "Speed Reader.app"                                                                                                                                 
  
    zap trash: [                                                                                                                                           
      "~/Library/Preferences/com.glebshalimov.speedreader.plist",
      "~/Library/Application Support/com.glebshalimov.speedreader",                                                                                        
      "~/Library/Caches/com.glebshalimov.speedreader",                                                                                                     
    ]                                                                                                                                                      
  end