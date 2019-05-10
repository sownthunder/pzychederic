# Welcome to Sonic Pi v2.11.1

######################
## ** DUBSTEP ** ##
######################

## <SAMPLES> ###############################################

korg_monopoly = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/KORG_MONOPOLY/"
legowelt_roland = "/Users/dbates/Documents/aDev/_staging/shiny-octo-invention/Recycle-Bin-EP/SAMPLES/Legowelt_RolandJD800_SampleKit/"

############################################################

# Dubstep bass and beat programming with the "at" command
# Mehackit 2016

use_bpm 140
use_debug false

#basari = :bd_klub ## BASS
virveli = :sn_dolf
haitsu = :perc_snap
haitsu2 = :drum_cymbal_pedal

with_fx :distortion, mix: 0.08 do
  with_fx :nrhpf, mix: 0.05 do
    
    live_loop :drumloop do
      at [1, 2, 4] do
        #OLD# sample legowelt_roland, "BASS-WaspyBass", amp: rrand(1, 1.5), rate: rrand(0.95, 1.05)
        sample korg_monopoly, "DRUMS-ChangingBasedrum" #, DRUMS-ChangingBasedrum
      end
      at [2.5, 6.5] do
        sample virveli, amp: rrand(0.6, 1), rate: rrand(0.95, 1.05)
        sleep 0.1
        with_fx :gverb, amp: 0.6, mix: 1, spread: 1, delay: 10 do
          sample virveli, amp: rrand(0.3, 0.5), rate: rrand(0.95, 1.05)
        end
      end
      at [0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5] do
        with_fx :flanger, mix: 0.5, depth: 40, delay: 20, decay: 5, feedback: rrand(0.1, 1.0) do
          sample haitsu, amp: rrand(0.3, 0.5), rate: rrand(2.1, 2.2), pan: rrand(-0.25, 0.25)
          if one_in(10)
            sleep 0.5
            sample haitsu2, amp: rrand(0.6, 0.9), rate: rrand(1.1, 1.2), pan: rrand(-0.25, 0.25)
          end
        end
      end
      sleep 8
    end
    
    live_loop :bassolinjaus do
      with_fx :distortion, mix: 0.5, amp: 0.95 do
        3.times do
          at [0.5, 2.5, 4.5] do
            with_fx :panslicer, smooth_up: 0.1, smooth_down: 0.1 do
              #OLD#sample :bass_dnb_f, pitch: 0, finish: 0.6
              #POOP#sample legowelt_roland, "BASS-PWMblaster", pitch: 0, finish: 0.6
              sample legowelt_roland, "BASS-OlympicSkierBass", amp: 0.3, pitch: 0, finish: 0.6
            end
          end
          at [6.5] do
            with_fx :panslicer, smooth_up: 0.1, smooth_down: 0.1 do
              ##sample :bass_dnb_f, pitch: 0, finish: 0.6
              sample legowelt_roland, "BASS-OlympicSkierBass", amp: 0.3, pitch: 0, finish: 0.6
            end
          end
          sleep 8
        end
        n = 1
        at [0.5, 2.5, 4.5, 6.5] do
          with_fx :panslicer, mix: 1, wave: 3 do
            with_fx :reverb, mix: 0.6, room: 0.2, amp: 2 do
              7.times do
                #OLD#sample :bass_dnb_f, rate: n, finish: 0.1
                sample legowelt_roland, "BASS-OlympicSkierBass", amp: 0.3, rate: n, finish: 0.1
                n += 0.15
                sleep 0.25
              end
              " BEEP... BEEP... BEEP.... BEEEP..... BEEEP....."
              #OLD#sample :bass_voxy_hit_c, rate: n, amp: 1
              #POOP#sample legowelt_roland, "BASS-OlympicSkierBass", pitch: 0, finish: 0.6
              #MAYB#sample legowelt_roland, "BASS-SnapFilterBass", pitch: 0, finish: 0.6
              #MAYB#sample legowelt_roland, "BASS-Luxubass", pitch: 0, finish: 0.6
              sample legowelt_roland, "BASS-ACidSUBBBMaxbass", pitch: 0, finish: 0.6
            end
          end
        end
        sleep 8
      end
    end
    
    live_loop :randoming_p�di do
      kesto = [8, 10, 12].choose
      nuku = kesto / 2.0
      #use_synth :hollow
      use_synth :dark_ambience
      with_fx :hpf, cutoff: 75 do
        with_fx :reverb, room: 0.8, mix: 0.8, amp: 1 do
          nuotit = [:F4, :B4, :D4, :F5, :B5, :D5].choose
          play nuotit, attack: kesto / 3.0, release: kesto
        end
      end
      sleep nuku
    end
    
  end
end