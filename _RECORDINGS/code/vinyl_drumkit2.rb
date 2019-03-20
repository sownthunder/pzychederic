# Welcome to Sonic Pi v3.1

box_samples = "/Users/dbates/Box/"
ew_lordy_samples = "/Users/dbates/Box/DEMOS/ew_lordy/"
vinyl_drumkit = "/Users/dbates/Box/DRUM_KITS/SS Vinyl Drum Kit/"
##"/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/"

# Band Example 1
# Mehackit 2016

use_bpm 100 ## WAS: 100

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample vinyl_drumkit, "Kick VY 24", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample vinyl_drumkit, "Snare VY 01", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample vinyl_drumkit, "Kick VY 26", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample vinyl_drumkit, "Snare VY 35", amp: 1
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample vinyl_drumkit, "Hat VY 27", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample vinyl_drumkit, "Open Hat VY 06", amp: 1
  sleep 1
end

"
live_loop :basso do
  use_synth :fm
  play :c2, attack: 0, release: 0.25
  sleep 0.25
  play :c2, attack: 0, release: 0.3
  sleep 2
  play :e2
  sleep 0.75
  play :f2
  sleep 1
end

live_loop :melodia do
  play_pattern_timed [:c4, :e4, :f4, :g4, :f4, :e4, :f4, :g4, :f4, :e4, :f4], [0.25, 0.25, 0.25, 1.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], attack: 0, release: 0.2
end
"