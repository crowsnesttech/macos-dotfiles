# -------
# Aliases
# -------
alias dk='ssh nick@ubs1804-docker'
alias pt='ssh nick@ubd1804-passthru'
alias syno='ssh admin@cnt-synology -p 3390'
alias flush='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'
alias hp='ssh nick@hackpro'
alias rp='ssh nick@rackpro'
alias rpw='wakeonlan 10:c3:7b:4f:74:a6;sleep 5;ssh nick@rackpro'
alias hpw='wakeonlan a0:36:9f:0c:83:00;sleep 5;ssh nick@hackpro'
alias finders='defaults write com.apple.Finder AppleShowAllFiles TRUE; killAll Finder'
alias finderh='defaults write com.apple.Finder AppleShowAllFiles FALSE; killAll Finder'
alias ws='ssh nick@ubs1804-webserver'


