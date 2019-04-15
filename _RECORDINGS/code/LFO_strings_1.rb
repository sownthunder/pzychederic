# Welcome to Sonic Pi v3.1

box_samples = "/Users/dbates/Box/"
# status quo - pictures of matchstick men - enhanced sound.wav

#############################################

set_volume! 2

use_bpm 100



use_bpm 95

2.times do
  3.times do
    with_fx :gverb, mix: 0.4 do
      with_fx :bitcrusher, mix: 0.4, pre_amp: 4 do
        
        # status quo - pictures of matchstick men - enhanced sound.wav
        sample box_samples, "LFO_Strings.wav", amp: 2,  beat_stretch: 24, pitch: -24
        sleep 23
      end
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