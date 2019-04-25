setPreference -pref StartupClock:AUTO_CORRECTION
setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref ConcurrentMode:FALSE
setPreference -pref UseHighz:FALSE
setPreference -pref svfUseTime:FALSE
setPreference -pref SpiByteSwap:AUTO_CORRECTION
setPreference -pref AutoInfer:TRUE
setPreference -pref SvfPlayDisplayComments:FALSE
loadProjectFile -file "/home/joefitz/Documents/Projects/JTAGkey/JTAGkey.ipf"
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setMode -bs
setMode -bs
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setCable -port svf -file "/home/joefitz/Documents/Projects/bbv3/bbv3-jtagkey.svf"
addDevice -p 1 -file "/home/joefitz/Documents/Projects/bbv3/bbv3-jtagkey/jtagkey.jed"
Program -p 1 -e -v 
expresssvf -p 1 -program -erase -verify -file "/home/joefitz/Documents/Projects/bbv3/bbv3-jtagkey/default.svf" 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "/home/joefitz/Documents/Projects/bbv3/bbv3-jtagkey/bbv3-jtagkey.ipf"
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
