# Welcome to Sonic Pi v2.11.1

######################
## SIMPLE DRUM BEAT ##
######################

use_bpm 100

live_loop :drums do
sample :drum_heavy_kick
sleep 1
sample :drum_snare_hard
sleep 1
sample :drum_heavy_kick
sleep 1
sample :drum_snare_hard
sleep 1
end

live_loop :hihat do
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_pedal
sleep 1
end