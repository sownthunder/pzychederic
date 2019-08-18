# Welcome to Sonic Pi v3.1

crap_sample = "C:/Users/BabyPoopSoup/Documents/MEGAsync Downloads/PZYCHEDERIC/"
chillout_basslines = "C:/Users/BabyPoopSoup/Documents/MEGAsync Downloads/PZYCHEDERIC/SignatureSamples/Signature Sammples Chillout Bass Lines"

use_bpm 100


live_loop :bass_line do
  sample chillout_basslines, "Dubber A Line 02.wav", amp: 2, beat_stretch: 4
  sleep 4
end

sleep 14

live_loop :bum_drums do
  sync :bass_line
  play 75
  sleep 4
end

"
live_loop :drums do
  sample :drum_heavy_kick
  sleep 2
  sample :drum_snare_hard
  sleep 2
  sample :drum_heavy_kick
  sleep 2
  sample :drum_snare_hard
  sleep 2
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 2.25
  sample :drum_cymbal_pedal
  sleep 1
end
"