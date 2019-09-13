use_bpm 60

live_loop :guit do
  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :guit_em9, rate: 0.5, amp: 2
  end
  # sample :guit_em9, rate: -0.5
  sleep 4
end

live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1, beat_stretch: 2, release: 26
  end
  sleep 4
end