# Welcome to Sonic Pi v3.1

dubstep_kicks = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Kicks/"
dubstep_snares = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Snares/"
dubstep_hihats = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/HiHats/"
dubstep_claps = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Claps/"
dubstep_fx = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/FX/"

dubstep_toms = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Toms"
dubstep_percuss = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Percussions/"

set_volume! 2
use_bpm 100

with_fx :reverb, mix: 0.4 do
  with_fx :echo, mix: 0.7 do
    #sample :ambi_swoosh, amp: 2
    sample dubstep_toms, "Tom (3).wav", rate: 1, amp: 8
    sleep 3
    #sample :ambi_lunar_land, rate: 2
    sample dubstep_toms, "Tom (9).wav", rate: 1, amp: 6
    sleep 1
  end
end

live_loop :rummut do
  #sample :bd_klub, amp: 2
  #sample dubstep_kicks, "Kick   (46)", amp: 2
  sample dubstep_toms, "Tom (6).wav", amp: 2
  sleep 0.5
  #sample :bd_klub, amp: 2, rate: 1.25
  sample dubstep_kicks, "Kick   (56)", rate: 1.25
  sleep 0.25
  #sample :bd_ada, amp: 1.5
  sample dubstep_kicks, "Kick   (15)", amp: 1.25
  sleep 0.25
  with_fx :reverb, mix: 0.2, decay: 1 do
    #sample :sn_dolf, amp: 1.75
    sample dubstep_snares, "Snare (70)", amp: 1.75
  end
  sleep 0.25
  #sample :bd_pure, amp: 1.5
  sample dubstep_kicks, "Kick   (16)", amp: 2
  sleep 0.75
  #sample :bd_ada, amp: 2
  sample dubstep_fx, "Effect 3", amp: 3
  sleep 1
  with_fx :reverb, mix: 0.2, decay: 1 do
    #sample :drum_snare_soft, amp: 2
    sample dubstep_snares, "Snare (167)", amp: 2 ## WAS: 100
    ##sample dubstep_percuss, "Percussions (16)", rate: 1, amp: 3
  end
  sleep 1
end

live_loop :bassolinja1, delay: 32 do
  use_synth :dull_bell
  use_synth_defaults release: 0.125 + rrand(0, 0.2), amp: 0.9, pan: rrand(-0.5, 0.5)
  
  use_transpose -12
  use_transpose 0 if one_in(3)
  
  n = (ring :r, :r, :d2, :d3, :f3, :r, :d1, :f2).tick
  play n, cutoff: rrand(30, 130)
  
  sleep 0.25
end

live_loop :bassolinja2, delay: 32 do
  #use_synth :zawa
  #use_synth :dpulse
  use_synth :pretty_bell
  use_synth_defaults release: rrand(0.1, 0.3), amp: 0.8, pan: rrand(-0.5, 0.5)
  use_transpose 0
  use_transpose 12 if one_in(3)
  with_fx :bitcrusher, mix: 0.5 do
    with_fx :echo, mix: 0.6 do
      n = (ring :r, :d2, :d3, :f3, :r, :d1, :f2, :r).tick
      play n, cutoff: rrand(70, 120)
    end
  end
  sleep 0.25
end

live_loop :pädit do
  use_synth  :piano
  use_synth_defaults cutoff: rrand(70, 110), release: rrand(1, 4), amp: 1
  with_fx :panslicer, mix: 0.5 do
    with_fx :hpf, cutoff: 70 do
      with_fx :reverb, mix: 0.4 do
        with_fx :echo, mix: 0.2 do
          2.times do
            play_chord chord(:D3, :minor )
            sleep 0.75
          end
          sleep 0.5
          play_chord chord(:D4, :minor ), attack: 4, release: 2
          sleep 2
        end
      end
    end
  end
end

live_loop :hihat, delay: 32 do
  with_fx :flanger, mix: 0 do
    sample :perc_snap, amp: rrand(0.9, 1.4), rate: rrand(1.9, 2.1), cutoff: rrand(80, 120), pan: rrand(-0.25, 0.25)
  end
  sleep 0.25
end

2.times do
  3.times do
    sample :loop_amen, beat_stretch: 4
    sleep 4
  end
  sample :loop_amen_full, beat_stretch: 16, start: 0.75
  sleep 4
end