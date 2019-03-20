# Welcome to Sonic Pi v3.1

future_kit = "/Users/dbates/Box/DRUM_KITS/SS Future Trap Drum Kit/"

set_volume! 2
# Band Example 2
#Mehackit 2016

use_bpm 60

live_loop :rummut do
  ##sample :drum_heavy_kick
  sample future_kit, "Bongo 1", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample future_kit, "Snare 1", amp: 1
  sleep 1
  ##sample :drum_heavy_kick
  sample future_kit, "Bongo 3", amp: 1
  sleep 1
  ##sample :drum_snare_hard
  sample future_kit, "Snare 2", amp: 2
  sleep 1
end

live_loop :hihat do
  ##sample :drum_cymbal_closed
  sample future_kit, "Hi Hat 1", amp: 1
  sleep 0.25
  ##sample :drum_cymbal_pedal
  sample future_kit, "Hi Hat 2", amp: 1
  sleep 1
end

live_loop :snap do
  sleep 7
  sample future_kit, "Finger Snap", amp: 2
  sleep 1.5
end
