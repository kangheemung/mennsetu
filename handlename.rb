#特定文字を除いで出力する。
#特定文字"a", "e", "i", "o", "u"
#入力される値入力は以下のフォーマットで与えられます。
#S
#条件すべてのテストケースにおいて、以下の条件をみたします。
#• ・5 ≦ S の長さ ≦ 20 length
#• ・S は英字大文字および小文字で構成される文字列 ~ /^[A-Za-z]+$/&&S.match?
#• ・S には必ず子音が含まれるif S =~ /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/
  # 文字列Sには少なくとも一つの子音が含まれている
  #gsub: 文字列のグローバル置換（Global Substitution）を行うメソッドの呼び出し。
 # S: これは処理対象となる文字列。「S」という変数にはあらかじめ何らかの文字列が代入されていることが前提です。
#gsub: 文字列のグローバル置換（Global Substitution）を行うメソッドの呼び出し。
#/[aeiouAEIOU]/: 正規表現リテラル。英語の母音（a, e, i, o, u）の小文字と大文字にマッチします。
#`'': 空文字列。これにより、マッチした文字列（つまり母音文字）を削除（空文字列で置き換える）することを指示しています。



S = gets.chomp

if S.length >= 5 && S.length <= 20 && S =~ /^[A-Za-z]+$/ && S.match?(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
  cheacks = S.gsub(/[aeiouAEIOU]/, '')
  total = cheacks
  puts total
else
  puts "NO"
end

