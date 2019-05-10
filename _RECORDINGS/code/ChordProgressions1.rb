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

#FOR REFERENCE:#

"
play scale(:e3, :minor_pentatonic).tick, release: 0.1

play [:c, :e, :d, :f].ring.tick

r = [0.25, 0.25, 0.5, 1].choose
play chord(:c, :minor).choose, attack: 0, release: r
sleep r

chords = [chord(:C, :minor7), chord(:Ab, :major7)].ring # a ring of chords
c = chords.tick # save next chord to a variable 'c'
c[0] # get the first note of the chord
"


# <INSERT HAUNTED TRAIN HERE>
sample :ambi_haunted_hum

sleep 2

#############################
## CHORDS ##
## F#m (f-minor, triad = F, Ab, C)
## A
## E
## F#m
## D
## E
############################
# ring of notes to play yall
#OLD# (ring :f5, :a, :e, :f5, :d, :e)
#OLDER# (ring :F, :a, :e, :F, :d, :e)
"
play [:a, :e].ring.tick

f = [0.25, 0.25, 0.5, 1].choose
play chord(:f, :minor7).choose, attack: 0, release: f
sleep f

play [:d, :e].ring.tick
sleep f
play chord(:f, :minor7)
"

chords = [(chord :C, :minor7), (chord :Ab, :major7), (chord :Eb, :major7), (chord :Bb, "7")].ring
c = chords[0] # take the first chord of the ring and save it to a variable
# this is going to be used in all the live_loops. It will be ticked by the :bass loop

live_loop :melody do
  use_synth :zawa
  r = [0.25, 0.25, 0.5, 1].choose
  play c.choose, attack: 0, release: r
  sleep r
end

live_loop :keys do
  use_synth :piano
  play c
  sleep 1
end

live_loop :bass do
  use_synth :fm
  use_octave -2
  3.times do
    play c[0] # play the first note of the chord
    sleep 1
  end
  play c[2] # play the third note of the chord
  sleep 0.5
  play c[1] # # play the second note of the chord
  sleep 0.5
  c = chords.tick
end


"
################ OLD ##################################################
chords1 = [chord(:F, :minor7)].ring # ring of chords, place this twice
chords2 = [:A, :E].ring
## PLAY CHORDS 1 again here
chords3 = [:D, :E].ring
c = chords1.tick # save the next chord to variable 'c'
c1 = chords2.tick
c2 = chords3.tick

play c[0]
sleep 0.5

play c1[0]
sleep 0.5

play c1[1]
sleep 0.5

play c[0]
sleep 0.5

play c2[0]
sleep 0.5

play c2[1]
"

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

"
live_loop :crazyTrain do
  with_fx :krush do
    use_synth :zawa # <-- was above
    use_bpm 137
    #OLD# play (ring :f3, :a, :e, :f3, :d, :e).tick, amp: 0.5
    #OLDER$play (ring :F, :a, :e, :F, :d, :e).tick, amp: 0.5
    sleep 0.75
  end
end
"

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