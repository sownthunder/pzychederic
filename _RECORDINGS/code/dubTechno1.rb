# Welcome to Sonic Pi v2.11.1

# Dub Techno

use_debug false
use_bpm 130

fadein = (ramp *range(0, 1, 0.01))

kick_cutoffs = range(50, 80, 0.5).mirror # A LFO for the poor
live_loop :kick do
  if (spread 1, 4).tick then # 4-on-the-floor
    sample :bd_tek, amp: fadein.look * 0.8, cutoff: kick_cutoffs.look
	# fadein.look is the time it takes to fade??
  end
  sleep 0.25 # 16th note heartbeat
end

define :snare do |amp|
  sample :sn_dolf, amp: amp, start: 0.15, finish: 0.35, rate: 0.7

live_loop :snares do
  sleep 1
  # just a clock
  snare 1 * fadein.tick
  sleep 1
end

live_loop :hats do
  sync :kick
  if (spread 3, 8).tick then
    # (spread 3, 8) produces this pattern: * _ _ * _ _ * _
    with_fx :rbpf, cutoff: 125, res: 0.8 do
      with_synth :pnoise do
        play :d1, attack: 0.05, decay: 0.08, release: 0.1
      end
    end
  end
  sleep 0.25
end

live_loop :noise_hats do
  sync :kick
  # Create hi-hats by slicing continuous noise
  with_fx :slicer, mix: 1, phase: 0.25, pulse_width: 0.1 do
    with_fx :hpf, cutoff: 130 do
      with_synth :noise do
        play :d1, decay: 1
      end
    end
  end
  sleep 1
end

basseline_rhythm = (ring 1, 0, 0, 0, 1, 0, 0, 0,
                    1, 0, 0.5, 0, 1, 0, 0.5, 0)
bassline_notes = (stretch [:d1] * 12 + [:f1, :f1, :a1, :f1], 8)
live_loop :bassline do
  sync :kick
  with_synth :fm do
    play :d1, amp: fadein.look * bassline_rhythm.tick,
      attack: 0.03, divisor: 1, depth: 2.5
  end
  sleep 0.25
end

live_loop :revbassline do
  sync :snares
  sleep 7.5
  with_fx :pan, pan: -0.5 do
    with_synth :fm do
      play :d1, attack: 0.5, divisor: 0.5, depth: 6
    end
  end
  sleep 0.5
end

dchord = chord(:d2, :minor, num_octaves: 3)
synth_rhythm = (ring 1.5, 1.5, 1)
live_loop :synth do
  sync :kick 
  sync :snares
  with_fx :reverb, mix: 0.4, room: 0.6, damp: 0.8 do
    with synth_defaults release: 0.3 do
      with_synth :sine do
        play_chord dchord, release: 0.3
	  end
	  with_synth :dsaw do
	    play_chord dchord
	  end
	end
    #sleep synth_rhythm.tick
end