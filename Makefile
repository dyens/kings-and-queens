SOURCES=main.ly global.ly alt.ly bass.ly tenor.ly soprano.ly

build: $(SOURCES)
	lilypond main.ly

choir.mp3: build
	timidity main-Choir.midi -Ow -o - | ffmpeg -y -i - -acodec libmp3lame -ab 64k choir.mp3

mp3: choir.mp3
