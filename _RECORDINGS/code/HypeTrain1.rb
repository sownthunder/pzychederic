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

#############################
## F#m A E F#m D E
############################
# ring of notes to play yall
(ring :f5, :a, :e, :f5, :d, :e)

live_loop :crazyTrain do
  use_synth :zawa # <-- was above
  use_bpm 137
  play (ring :f3, :a, :e, :f3, :d, :e).tick
  sleep 0.75
end

#################################################
sleep 8
#################################################

## need to fix
with_fx :reverb, room: 1 do
  live_loop :time do
    use_bpm 30
    synth :prophet, release: 8, note: :e1, cutoff: 90, amp: 3
    sleep 8
  end
end
