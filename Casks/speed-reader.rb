cask "speed-reader" do                                                                                                                                   
    version "1.1.4"
    sha256 "8c62c1b062f3a486345e88e7d1c4588d6aa8c2202ab08df1e4322ddb42ac3b0d"                                                                              
                                                                                                                                                           
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