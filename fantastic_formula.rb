# このスクリプトは神奈川Ruby会議01のペアプロ課題「遠い世界の公式」を解くのを
# ちょっとだけ楽にする為のテンプレートです。
#
# [課題]
# http://nabetani.sakura.ne.jp/kanagawa.rb/evalex/
#
# [使い方]
# FantasticFormula.evaluate の中に、あなたのコードを書いてください。
# その後、下記のコマンドを実行すると、数式が正しく実装されているか確認してくれます。
#
# $ ruby fantastic_formula.rb

class FantasticFormula
  def self.evaluate(expression)
    # この中に数式の中身を実装してください
  end
end

TRAINING_DATA = [
  # [ id, input, expected ],
  [ 0, "4*5+6&7|8", "44" ],
  [ 1, "15*5", "75" ],
  [ 2, "15+5", "20" ],
  [ 3, "15&5", "5" ],
  [ 4, "15|5", "15" ],
  [ 5, "30*15*5", "2250" ],
  [ 6, "30*15+5", "600" ],
  [ 7, "30*15&5", "150" ],
  [ 8, "30*15|5", "450" ],
  [ 9, "30+15*5", "225" ],
  [ 10, "30+15+5", "50" ],
  [ 11, "30+15&5", "35" ],
  [ 12, "30+15|5", "45" ],
  [ 13, "30&15*5", "70" ],
  [ 14, "30&15+5", "19" ],
  [ 15, "30&15&5", "4" ],
  [ 16, "30&15|5", "14" ],
  [ 17, "30|15*5", "155" ],
  [ 18, "30|15+5", "36" ],
  [ 19, "30|15&5", "5" ],
  [ 20, "30|15|5", "31" ],
  [ 21, "1+2+3+4+5+6+7+8+9+10", "55" ],
  [ 22, "1*2*3*4*5*6*7*8*9*10", "3628800" ],
  [ 23, "1+2+3+4+5*6+7+8+9+10", "600" ],
  [ 24, "1*2*3*4*5+6*7*8*9*10", "1330560" ],
  [ 25, "1|2|4|8|16|32|64|128|256|512", "1023" ],
  [ 26, "2046&2045&2043&2039&2031&2015&1983&1919&1791&1535", "1024" ],
  [ 27, "0+1|7*6", "42" ],
  [ 28, "6|4+2&9+4", "10" ],
  [ 29, "0&6+1&6|4*2", "0" ],
  [ 30, "4|4*7+7+4&9", "56" ],
  [ 31, "9&8*2+3*1|2|7", "280" ],
  [ 32, "230+83*751&176", "50080" ],
  [ 33, "89+62465*94&84", "5254536" ],
  [ 34, "668&925+398*562", "599092" ],
  [ 35, "15|9+348*302&23&77", "1452" ],
  [ 36, "3&3&6|7+3|5*3|2&4*4", "0" ],
  [ 37, "7*6|7|7*1&7|7&3&8*3", "0" ],
  [ 38, "896+316*209*264&728", "2026464" ],
  [ 39, "1844+41*64|7906|66842", "138965970" ],
  [ 40, "2&41&6884*69857+68083", "0" ],
  [ 41, "2+3*9*3|6|7&0+3+3*6&8", "0" ],
  [ 42, "895+400*988|549&237+488", "938875" ],
  [ 43, "30*48&99036+140&33+75|645", "22050" ],
  [ 44, "278+2033+53*96*56|3303|3&14", "3177216" ],
  [ 45, "5380&27|643*2+1888&74+30|16", "0" ],
  [ 46, "0&3845+6645*4293+78&78*3102|9|3", "90127550385" ],
  [ 47, "78&44956&67*974|413+13237*5588|54*668", "0" ],
  [ 48, "500*206+145|167|163|465&668+662+806*681&458", "123896000" ],
  [ 49, "82+14&0*344+34+542916&18*11|844|64*873223|840993", "23813260003764" ],
  [ 50, "374958|6727+53965&53*954&29|6*138572+59|547783&43*8998", "12178274756590800" ],
]

ng_count = 0

TRAINING_DATA.each do |datum|
  number, expression, expected = datum
  actual = FantasticFormula.evaluate(expression)

  result =
    if actual.to_s == expected
      "OK"
    else
      ng_count += 1
      "NG!!!! (got: #{actual || 'nil'})"
    end

  message = "[#{number}] #{expression} = #{expected} -> #{result}"

  puts message
end

total_count = TRAINING_DATA.count
ok_count = total_count - ng_count

puts "\nTotal: #{total_count} cases, OK: #{ok_count}, NG: #{ng_count}"
