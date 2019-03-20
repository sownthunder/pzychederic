# Welcome to Sonic Pi v3.1


box_samples = "/Users/dbates/Box/"
soul_drumkit = "/Users/dbates/Box/DRUM_KITS/Chopped Drums vol 1/soul/"
ew_lordy = "/Users/dbates/Box/DEMOS/ew_lordy/"

use_bpm 120

with_fx :octaver, mix: 0.7 do
  
  sample ew_lordy, "trouble_so_hard", amp: 1.5
  
end
