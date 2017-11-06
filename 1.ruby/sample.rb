#로또번호 추출
puts (1..45).to_a.sample(6).sort
puts [*1..45].sample(6).sort