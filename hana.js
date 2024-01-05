//花のりーす

//あなたは、さまざまな花のリースを販売している業者です。

//あなたは、お客さんのわかりやすさのため、種類の同じリースは同じ箱に分けて並べることにしました。
//リースは複数の種類の花からなり、花が手前を向くように並べた場合が表です。
//2 つのリースが同じ種類のリースであるとは、共に表にした状態で、回転させることで同じ並びにすることができることを言います。
//同じ花の数からなる 2 つのリースが与えられるので、これらが同じ種類であるか判定するプログラムを作成してください。
//入力される値
//入力は以下のフォーマットで与えられます。

//N
//S_1
//S_2
//===============
//期待する出力
//1 つ目のリースと 2 つ目のリースが同じ種類である場合は "Yes" を、そうでなければ "No" を出力してください。
//末尾に改行を入れ、余計な文字、空行を含んではいけません。
//=========
//条件
//すべてのテストケースにおいて、以下の条件をみたします。

//・1 ≦ N ≦ 1,000
//・(S_1 の長さ) = (S_2 の長さ) = N
//・S_1, S_2 
//期待する出力
//1 つ目のリースと 2 つ目のリースが同じ種類である場合は "Yes" を、そうでなければ "No" を出力してください。
//末尾に改行を入れ、余計な文字、空行を含んではいけません。


process.stdin.resume();
process.stdin.setEncoding('utf8');
// 自分の得意な言語で
// Let's チャレンジ！！
var lines = [];
var reader = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
reader.on('line', (line) => {
  lines.push(line);
});
reader.on('close', () => {
    const N=parseInt(lines[0], 10);
    const S1=lines[1];
    const S2=lines[2];
     const Type = (S1,S2) => {
        return (S1 + S1).includes(S2);
  };

    console.log( Type(S1,S2) ? 'Yes':'No' );

});