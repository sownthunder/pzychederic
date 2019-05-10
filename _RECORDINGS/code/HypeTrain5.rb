# Welcome to Sonic Pi v2.11.1

###################################################
## HYPE TRAIN - with credit to the Ozzy Osbourne ##
###################################################
## amp
## attack
## decay
## sustain
## release
## pitch
##################################################

# <INSERT HAUNTED TRAIN HERE>
sample :ambi_haunted_hum

sleep 4

#############################
## F#m A E F#m D E
############################
# ring of notes to play yall
(ring :f5, :a, :e, :f5, :d, :e)

"
live_loop :crazyTrain do
  use_synth :zawa # <-- was above
  use_bpm 137
  play (ring :f3, :a, :e, :f3, :d, :e).tick, amp: 0.5
  sleep 0.75
end
"

"
# play 4 random notes
4.times do
  play rrand_i(60, 90)
  sleep 0.5
end
"

live_loop :crazyTrain do
  with_fx :krush do
    use_synth :zawa # <-- was above
    use_bpm 137
    play (ring :f3, :a, :e, :f3, :d, :e).tick, amp: 0.5
    sleep 0.75
  end
end

## 06/27/2018
## WHEN IT ENDS THE FIRST BAR, SWITCH AND OCTAVE HIGHER !!!




#################################################
sleep 8
#################################################

"
live_loop :testy do
  use_bpm 100
  sample :loop_electric, rate: 1, amp: 4, beat_stretch: 8
  sleep 8
end
"

"
use_debug false

live_loop :skit do
  with_fx :slicer, phase: 1, invert_wave: 1, wave: 0 do
    with_fx :slicer, wave: 0, phase: 0.25 do
      sample :loop_mika, rate: 1, amp: 2
    end
    sleep 8
  end
end

live_loop :foo, auto_cue: false do
  tick(:note) if factor? tick, 4
  use_synth :square
  density 2 do
    play (knit :c2, 2, :e1, 1, :f3, 1).look(:note), release: 0, attack: 0.25, amp: 1, cutoff: rrand_i(70, 130)
    sleep 0.5
  end
end

live_loop :kik, auto_cue: false do
  density 1 do
    sample :bd_haus, amp: 2
    sleep 0.5
  end
end

live_loop :piano, auto_cue: false do
  sleep 4
  with_fx :slicer, phase: 0.25, wave: 1 do
    sleep 4
    sample :ambi_piano, amp: 2
  end
end
"

####################################



"
## need to fix
with_fx :reverb, room: 1 do
  live_loop :time do
    use_bpm 30
    synth :prophet, release: 8, note: :e1, cutoff: 90, amp: 3
    sleep 8
  end
end
"