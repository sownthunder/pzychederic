# Welcome to Sonic Pi v3.1

box_samples = ""
soul_drumkit = "/Users/dbates/Box/DRUM_KITS/Chopped Drums vol 1/soul/"

# Band Example 2
# Mehackit 2016

use_bpm 120

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample soul_drumkit, "Chopped Drums - kick soul", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample soul_drumkit, "Chopped Drums - snare soul", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample soul_drumkit, "Chopped Drums - kick 3 soul", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample soul_drumkit, "Chopped Drums - snare 3 soul", amp: 1
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample soul_drumkit, "Chopped Drums - hi hat soul", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample soul_drumkit, "Chopped Drums - hi hat 3 soul", amp: 1
  sleep 1
end

"
live_loop :basso do
  use_synth :tb303
  play chord(:C2, :major).choose, release: 0.125, cutoff: rrand(60, 110)
  sleep 0.25
end

live_loop :melodia do
  if one_in(6)
    use_transpose 2
  else
    use_transpose 0
  end
  play_pattern_timed [:c4, :e4, :f4, :g4, :f4, :e4, :f4, :g4, :f4, :e4, :f4], [0.25, 0.25, 0.25, 1.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], attack: 0, release: 0.2
end
"