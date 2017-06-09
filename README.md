# Sia-Payload
[![asciicast](https://asciinema.org/a/5w8ml9x8keu8ladp2tz5os598.png)](https://asciinema.org/a/5h763v4bdeotz5jyx4uhryvv4)

		.:: Just For FUN :D ::.

This is simple script to connecting Shell to system.

This script can run any system (windows,linux,mac).

## Install
For run you need to install ruby.

Then install ruby you need install colorize Gem :
```bash
bundle install
```

## Run

Config your ip and port in payload.rb file then :

run server.rb :
```bash
ruby server.rb
```

then run payload.rb :
```
ruby payload.rb
```

For running payload in background add '&' to command like this(linux) :

```
ruby server.rb &
```

## Setup Telegram Bot For Payload

Create a bot in telegram and set a Token in this code of payload_bot.rb
file:

```ruby
$TOKEN = "Your Telegram bot TOKEN" 
```

## Payload bot Tools

/screenShot    =>    Taking screenShot just for linux
/info	       =>    Get System IP adress and info ip addr

## Ruby To EXE

You can ruby to .exe with ocra

Ocra Project : https://github.com/larsch/ocra/

## Whats News ?

Adding new Under the payload bot Telegram.

This payload The payload requires no server and can be controlled via a bot Telegram

## TODO

- [X] Add new commands
- [X] Powerful up
- [ ] Multi Targets

## About

My Email: virus007@protonmail.com

Twitter : @Vi47S007

Telegram ID : @Msf_Payload