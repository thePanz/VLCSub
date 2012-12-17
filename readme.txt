VLSub Extension for VLC media player 1.1 and 2.0
Copyright 2010 Guillaume Le Maout

Author: Guillaume Le Maout
Contact: http://addons.videolan.org/messages/?action=newmessage&username=exebetche
Bug report: http://addons.videolan.org/content/show.php/?content=148752

Contributors: ThePanz, Benoit Vallee

NSIS Installer for Windows created by ThePanz

Changelog:

2012-12-18 (version 0.8)
  [Benoit Vallee] Fixed subtitle downloading when special characters are present on the video path
  [Benoit Vallee] Fixed zip file deletion after subtitle has been extracted

2012-10-17 (version 0.7)
  [thePanz] Added subtitle language in listing
  [thePanz] Added subtitle language in downloaded file (avoid filename collisions during download)

version 0.6
  Use definitive user agent for opensubtitle API
  Fix a bug when video file path contains accents/special characters on linux (same bug on windows not corrected yet)

version 0.5
  Alternative imdb id search for series

version 0.4
  Bug fix: add a forgotten "make_uri"

version 0.3
  Translation of parts of the interface still in french (lazy me) 

version 0.2
  Bug fix: add "make_uri" method since it's no more available in vlc object
