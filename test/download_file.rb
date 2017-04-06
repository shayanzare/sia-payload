require "open-uri"

#download url
download = open("https://upload.wikimedia.org/wikipedia/commons/6/6e/Sia_Seattle_%28cropped%29.jpg")
IO.copy_stream(download, "sia.jpg")