loadProjectFile -file "/home/joefitz/Documents/Projects/bbv3/passthrough/bbv3-passthrough.ipf"
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
setCable -port svf -file "/home/joefitz/Documents/Projects/bbv3/bbv3-passthrough.svf"
addDevice -p 1 -file "/home/joefitz/Documents/Projects/bbv3/bbv3-passthrough/passthrough.jed"
Program -p 1 -e -v 
expresssvf -p 1 -program -erase -verify -file "/home/joefitz/Documents/Projects/bbv3/bbv3-passthrough/default.svf" 
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
saveProjectFile -file "/home/joefitz/Documents/Projects/bbv3/bbv3-passthrough/bbv3-passthrough.ipf"
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
