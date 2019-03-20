# Welcome to Sonic Pi v3.1

dubstep_kicks = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Kicks/"
dubstep_snares = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Snares/"
dubstep_hihats = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/HiHats/"
dubstep_claps = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/Claps/"
dubstep_fx = "/Users/dbates/Box/DRUM_KITS/Dubstep Empire Drum Kit/FX/"

set_volume! 3
# Band Example 2
#Mehackit 2016

use_bpm 90

live_loop :biitti do
  #sample :bd_808, rate: 1, amp: 4
  sample dubstep_kicks, "Kick   (455)", rate: 1, amp: 8
  sleep 1
  #sample trippy_nation, "AB_Snare-05.wav", rate: 1, amp: 8
  sample dubstep_snares, "Snare (153)", rate: 1, amp: 8
  sleep 1
  #sample trippy_nation, "AB_808-01.wav", rate: 1, amp: 8
  sample dubstep_kicks, "Kick   (455)", rate: 1, amp: 8
  sleep 1
  #sample :elec_hi_snare, amp: 1
  sample dubstep_snares, "Snare (153)", rate: 1, amp: 8
  sleep 1
end

live_loop :luuppi do
  sample :loop_breakbeat, beat_stretch: 4
  sleep 4
end