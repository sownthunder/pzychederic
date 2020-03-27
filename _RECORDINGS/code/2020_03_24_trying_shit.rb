# Welcome to Sonic Pi v3.1

use_bpm 80

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
      sample SOUNDS_samples, "909KICK2.WAV", amp: 1.5, finish: 0.6
      sleep 2
    end
  end
end

metronome
snare
