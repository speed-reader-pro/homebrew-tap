cask "speed-reader" do                                                                                                                                   
    version "1.1.3"
    sha256 "dc72fee9169e99ccc1153e0246708624f304ea271cb7a44f66158932362b7195"                                                                              
                                                                                                                                                           
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