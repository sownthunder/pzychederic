# Welcome to Sonic Pi v3.1

# Having Fun with the Play Pattern Timed command
# Mehackit 2016

trap_drums = "/Users/dbates/Box/DRUM_KITS/SS Trap Drum Kit/"
akai_drums = "/Users/dbates/Box/DRUM_KITS/Signature Samples Akai MPC-60/"
duchess_drums = "/Users/dbates/Box/DRUM_KITS/No1_DUCHESS_kit/"

##################################################################


use_bpm 75

live_loop :kick do
  #OLD#sample :bd_haus
  sample duchess_drums, "Subzy"
  sleep(1)
end

live_loop :melodia do
  with_fx :reverb, mix: 0.4 do
    #OLD#use_synth  :pretty_bell
    #OLD#play chord(:E4, :minor7), release: 2, amp: 2
    sample duchess_drums, "TA¯LA¯ sitar sample 2.wav", release: 2, amp: 2
    
    use_synth :chipbass
    play_pattern_timed chord(:E3, :minor7), 0.25, pan: rrand(-1, 1), release: 0.05, amp: 1
    play_pattern_timed chord(:E4, :minor7), 0.25, pan: rrand(-1, 1), release: 0.1, amp: 1
    play_pattern_timed chord(:E5, :minor7), 0.25, pan: rrand(-1, 1), release: 0.2, amp: 1
    play_pattern_timed chord(:E6, :minor7), 0.25, pan: rrand(-1, 1), release: 0.3, amp: 1
    
    #OLD#use_synth :pretty_bell
    #OLD#play chord(:C4, :major7), release: 2, amp: 2
    sample duchess_drums, "TA¯LA¯ sitar sample.wav", release: 2, amp: 2
    
    use_synth  :chipbass
    play_pattern_timed chord(:C3, :major7), 0.25, pan: rrand(-1, 1), release: 0.05, amp: 1
    play_pattern_timed chord(:C4, :major7), 0.25, pan: rrand(-1, 1), release: 0.1, amp: 1
    play_pattern_timed chord(:C5, :major7), 0.25, pan: rrand(-1, 1), release: 0.2, amp: 1
    play_pattern_timed chord(:C6, :major7), 0.25, pan: rrand(-1, 1), release: 0.3, amp: 1
  end
end

live_loop :hihats do
  sleep 0.5
  with_fx :reverb, mix: 0.3 do
    3.times do
      sample :drum_cymbal_closed, rate: 1.5, vol: rrand(0.3, 0.7)
      sleep 0.5
    end
    #OLD#sample :perc_snap , rate: 2, vol: rrand(0.1, 0.3)
    sample duchess_drums, "Duchess Live Clap.wav", rate: 2, vol: rrand(0.1, 0.3)
  end
end