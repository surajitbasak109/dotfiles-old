url=$1
youtube-dl -x --audio-format mp3 $url

youtube-dl -x --audio-format mp3 --batch-file ./playlist.txt 
