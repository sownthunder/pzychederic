# Welcome to Sonic Pi v2.11.1

################
## CHEATSHEET ##
################

## Play a note

"
use_bpm 100
# this is a comment
play 50
sleep 1
play :C3
sleep 1
play_pattern_timed [:c2, :d2, :e2, :d2], [0.5, 0.25, 0.75, 0.5]
"

#################################################################

## Scales & Chords

"
live_loop :nimi do
  use_synth :piano
  play (scale :C3, :major, num_octaves: 2).tick
  sleep 1
end


live_loop :nimi2 do
  play (scale :C4, :minor, num_octaves: 3).tick
  sleep 1
end

live_loop :nimi3 do
  use_synth :mod_fm
  play (scale :C2, :major_pentatonic, num_octaves: 2).tick
  sleep 1
end
"

###############################################################

# Tick, ring & variables

play scale(:e3, :minor_pentatonic).tick, release: 0.1

play [:c, :e, :d, :f].ring.tick

r = [0.25, 0.25, 0.5, 1].choose
play chord(:c, :minor).choose, attack: 0, release: r
sleep r

chords = [chord(:C, :minor7), chord(:Ab, :major7)].ring # a ring of chords
c = chords.tick # save next chord to a variable 'c'
c[0] # get the first note of the chord

#####################################################

## Other

# If your code is getting slow, try use_debug false in the beginning of your code.
# This reduces the log messages Sonic Pi generates and can speed up the code.
  