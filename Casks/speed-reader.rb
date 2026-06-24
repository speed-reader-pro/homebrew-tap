cask "speed-reader" do                                                                                                                                   
    version "1.1.11"
    sha256 "f2ab0c64f7c07909ffea06cf2be6e44d9196ec6de45a53c2fb451bd8d9671cc3"                                                                              
                                                                                                                                                           
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