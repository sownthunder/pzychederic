# Welcome to Sonic Pi v3.1

box_samples = "/Users/dbates/Box/"
# status quo - pictures of matchstick men - enhanced sound.wav

#############################################

set_volume! 2

use_bpm 100

2.times do
  3.times do
    with_fx :ixi_techno, mix: 0.6, pre_amp: 4 do
      
      sample box_samples, "status quo - pictures of matchstick men - enhanced sound.wav", amp: 4,  beat_stretch: 35, pitch: -24
      sleep 22
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

