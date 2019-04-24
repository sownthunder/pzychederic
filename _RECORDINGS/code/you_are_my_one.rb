# Band Example 1
# Mehackit 2016

use_bpm 90

live_loop :rummut do
  sample :drum_heavy_kick, amp: 0.2
  sleep 1
  sample :drum_snare_hard,  amp: 0.2
  sleep 1
  sample :drum_heavy_kick,  amp: 0.2
  sleep 1
  sample :drum_snare_hard,  amp: 0.2
  sleep 1
end

live_loop :hihat do
  sample :drum_cymbal_closed, amp: 0.2
  sleep 0.50
  sample :drum_cymbal_pedal, amp: 0.2
  sleep 1
end

live_loop :basso do
  use_synth :fm
  play :c2, amp: 4, attack: 0, release: 0.25
  sleep 0.25
  play :c2, amp: 4, attack: 0, release: 0.3
  sleep 2
  play :e2, amp: 2
  sleep 0.75
  play :f2, amp: 2
  sleep 1
end


live_loop :melodia, delay: 14.5 do
  use_synth :piano #:zawa
  play_pattern_timed [:g4, :f4, :e4, :f4, :g4, :f4, :e4, :f4, :g4, :f4, :e4], [0.50, 0.50, 0.50, 3.0, 0.50, 0.50, 0.50, 0.50, 0.50, 0.50], amp: 0.5, attack: 0, release: 0.4
  play_pattern_timed [:e4, :f4, :g4, :f4, :e4, :g4, :f4, :e4, :f4, :g4, :f4], [0.50, 0.50, 0.50, 3.0, 0.50, 0.50, 0.50, 0.50, 0.50, 0.50], amp: 0.5, attack: 0, release: 0.4 # attack: 1
  ##play_pattern_timed [:c4, :e4, :f4, :g4, :f4, :e4, :f4, :g4, :f4, :e4, :f4], [0.25, 0.25, 0.25, 1.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], attack: 0, release: 0.2
end