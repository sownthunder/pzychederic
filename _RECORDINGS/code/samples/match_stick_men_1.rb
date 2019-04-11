# Welcome to Sonic Pi v3.1

box_samples = "/Users/dbates/Box/"
# status quo - pictures of matchstick men - enhanced sound.wav

#############################################

set_volume! 2

use_bpm 100

2.times do
  3.times do
    with_fx :wobble, mix: 0.3, pre_amp: 4 do
      
      sample box_samples, "status quo - pictures of matchstick men - enhanced sound.wav", amp: 1, rate: 1, beat_stretch: 45
      sleep 24
    end
  end
  #sample :loop_amen_full, beat_stretch: 16, start: 0.75
  #sleep 4
end

loop :testLoop

"
2.times do
  3.times do
    sample :loop_amen, beat_stretch: 4
    sleep 4
  end
  sample :loop_amen_full, beat_stretch: 16, start: 0.75
  sleep 4
end
"

