#로또번호 추출
puts (1..45).to_a.sample(6).sort
puts [*1..45].sample(6).sort

# 점심메뉴 골라주기
print ["성게알밤", "참치회", "베이징덕", "스테이크"].sample