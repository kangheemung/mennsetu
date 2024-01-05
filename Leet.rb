#1 ≦ (s の長さ) ≦ 100・s はアルファベット大文字のみからなる
N=gets.chomp
# 条件をチェックする

if 1<= N.length && N.length <= 100 &&N =~/^[A-Z]+$/
    rules={
        'A'=>'4',
        'E'=>'3',
        'G'=>'6',
        'I'=>'1',
        'O'=>'0',
        'S'=>'5',
        'Z'=>'2'
    }
 # 変換後の文字列を初期化する
  answer = ""
# 各文字に対して処理を行う
    N.each_char do |char|
    # Leetルールを適用するかどうかをチェックする
        if   rules.has_key?(char)
        # Leet変換を適用する
          answer += rules[char]
        else
             # そのまま追加する
              answer += char
            
        end
    end
      # 変換後の文字列を出力する
      puts answer
else
    puts "no"
end