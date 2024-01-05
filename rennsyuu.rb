#条件文
#・1 ≦ S の長さ ≦ 20 length
N=gets.chomp
if 1<=N.length&&N.length<=20&& N =~/^[A-Za-z]+$/&&N.match?(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
   filter= N.gsub(/[loveLOVE]/,'')
   
   puts filter
else
    puts "NO"
end
       