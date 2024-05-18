define :start do
  sample :ambi_dark_woosh
  sleep 1
  play 48
  sleep 0.5
  play 36
end

start

live_loop :drone do
  ##| stop
  sample :ambi_drone, attack: 3, release: 9
  sleep 1.5
end

live_loop :dumm do
  ##| stop
  sample :bd_haus, amp: 0.9
  sleep 0.5
end

live_loop :alert do
  ##| stop
  sample :glitch_bass_g, attack: 2.5, release: 5
  sleep 2
end

live_loop :foo do
  ##| stop
  sample :loop_garzul
  use_synth :prophet
  play :c1, release: 8, cutoff: rrand(70, 130)
  sleep 8
end

live_loop :chor do
  ##| stop
  sample :ambi_choir, pan: -1, amp: 0.5, attack: 0.6, attack_level: 5,
    sustain: 3, sustain_level: 7, decay: 6, decay_level: 13, release: 10
  sleep 2
  sample :ambi_choir, pan: 1, amp: 0.5, attack: 0.6, attack_level: 5,
    sustain: 3, sustain_level: 7, decay: 6, decay_level: 13, release: 10
  sleep 2
end

live_loop :vocal do
  with_fx :echo do
    ## Move this file to a new path in your computer and rename it in the line below 
    folder = "./samples/op 8 2.wav"
    sample folder, cutoff: rrand(50,95), attack: 2, sustain: 5, release: 3
  end
  sleep 4
end