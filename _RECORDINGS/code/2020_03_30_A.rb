# Welcome to Sonic Pi v3.1

use_bpm 200

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
      sleep 1 # 1.5, 0.25
      sample SOUNDS_samples, "808-KICK.WAV", amp: 7
      sleep 12 # 3.5, 0.25
      sample SOUNDS_samples, "KICKASS(.WAV", amp: 8
      sleep 7 # 1.5, 1
      sample SOUNDS_samples, "909KICK2.WAV", amp: 8
      sleep 2 # 1, 1.5
      sample SOUNDS_samples, "9093KIK(.WAV", amp: 8
      sleep 0.5 # 0.25, 3.5
      # sample SOUNDS_samples, "KINDFATS.WAV", amp: 8
      sample SOUNDS_samples, "HARDKIK(.WAV", amp: 8
      sleep 3 # 0.25, 1.5
    end
  end
end

def hihat
  in_thread do
    6.times do
      6.times do
        # sample :drum_cymbal_closed, amp: 1.3
        sample SOUNDS_samples, "CRISPHAT.WAV", amp: 0.5
        sleep 1 # was 0.5
      end
      16.times do
        sample SOUNDS_samples, "CRISPHAT.WAV", amp: 0.5
        sleep 0.1250 # was 0.0625
      end
      6.times do
        sample SOUNDS_samples, "CRISPHAT.WAV", amp: 0.5
        sleep 0.666 # was sleep 0.333
      end
      4.times do
        sample SOUNDS_samples, "CRISPHAT.WAV", amp: 0.5
        sleep 1 # was sleep 0.5
      end
      8.times do
        sample SOUNDS_samples, "CRISPHAT.WAV", amp: 0.5
        sleep 0.25 # was sleep 0.125
      end
    end
  end
end

def acordes1
  in_thread do
    with_fx :ixi_techno do
      4.times do
        play chord( :d3, :m9), amp: 1.5, release: 9, attack: 0.8
        sleep 8
      end
    end
  end
end

def bass1
  in_thread do
    12.times do
      play :c2, amp: 3, release: 4
      sleep 4
      play :eb1, amp: 4, release: 4
      sleep 4
    end
  end
end

metronome
snare
kick
hihat
acordes1
bass1