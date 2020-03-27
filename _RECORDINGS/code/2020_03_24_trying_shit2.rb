# Welcome to Sonic Pi v3.1

use_bpm 85

## <SAMPLES> ###############################################

SOUNDS_samples = "/Users/BabyPoopSoup/Desktop/zip/_staging/SOUNDS/Crate Digger Sound Pack/"

############################################################

def metronome ### 80 beats
  in_thread do
    80.times do
      sample :drum_cymbal_closed
      sleep 1
    end
  end
end

def snare
  in_thread do
    24.times do
      sleep 2
      # [2020-03-24]\\sample :sn_dolf
      sample SOUNDS_samples, "100_SNR(.WAV", amp: 2.5, finish: 0.6
      sleep 2
    end
  end
end

def kick
  in_thread do
    12.times do
      # [2020-03-24]\\sample :bd_808, amp: 7
      sample SOUNDS_samples, "AIRYKIK(.WAV", amp: 7
      sleep 1.5
      sample SOUNDS_samples, "808-KICK.WAV", amp: 7
      sleep 3.5
      sample SOUNDS_samples, "KICKASS(.WAV", amp: 8
      sleep 1.5
      sample SOUNDS_samples, "909KICK2.WAV", amp: 8
      sleep 1
      sample SOUNDS_samples, "9093KIK(.WAV", amp: 8
      sleep 0.25
      sample SOUNDS_samples, "KINDFATS.WAV", amp: 8
      sleep 0.25
    end
  end
end

metronome
snare
kick
