# 파일명 바꾸기
# 1. 해당 폴더로 들어간다
Dir.chdir("src")

# 2. 폴더 안을 돌면서 파일들의 이름을 가져온다
files = Dir.entries(Dir.pwd).reject {|name| name[0] == '.'}
puts files

# 3. 각각의 파일명을 변경한다. 1.txt → "samsung1.txt"
files.each do |f|
    File.rename(f, "samsung" + f)
end


# Dir.chdir("src") #작업폴더 변경


# newname = "samsung"
# Dir["/home/ubuntu/workspace/1.ruby/src/*"].each do |old|
# #   File.rename(old, newname + old + ".txt")
#     puts old.chomp "/home/ubuntu/workspace/1.ruby/src/"
# end