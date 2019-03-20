box_samples = "/Users/dbates/Box/SOUND_SAMPLES/SONG/"

loop do
  
  with_fx :tanh, mix: 0.6 do
    
    sample box_samples, "Green_Day-When_I_Come_Around_1", amp: 1.5, finish: 0.47
    
  end
  
  sleep 3.9
  
end
