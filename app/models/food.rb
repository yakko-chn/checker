class Food < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },

    # 米類（id:2）
    { id: 2, name: '玄米' },
    { id: 3, name: '米' },
    { id: 4, name: '米加工品' },
    { id: 5, name: '寿司' },
    { id: 6, name: '麦・雑穀' },
    { id: 7, name: 'その他' },

    # 麺類（id:3）
    { id: 8, name: 'インスタント' },
    { id: 9, name: 'うどん' },
    { id: 10, name: 'そうめん' },
    { id: 11, name: 'そば' },
    { id: 12, name: 'つけ麺' },
    { id: 13, name: 'パスタ' },
    { id: 14, name: '焼きそば' },
    { id: 15, name: 'ラーメン' },
    { id: 16, name: '冷麺' },
    { id: 17, name: 'その他' },

    # 野菜類（id:4）
    { id: 18, name: '青ネギ' },
    { id: 19, name: 'アスパラガス' },
    { id: 20, name: '大葉' },
    { id: 21, name: 'オクラ' },
    { id: 22, name: 'かぼちゃ' },
    { id: 23, name: 'キャベツ' },
    { id: 24, name: 'キノコ類' },
    { id: 25, name: 'ゴボウ' },
    { id: 26, name: 'サツマイモ' },
    { id: 27, name: '山菜' },
    { id: 28, name: 'しいたけ' },
    { id: 29, name: 'じゃがいも' },
    { id: 30, name: '生姜' },
    { id: 31, name: '白ネギ' },
    { id: 32, name: 'セロリ' },
    { id: 33, name: '大根' },
    { id: 34, name: 'たけのこ' },
    { id: 35, name: '玉ねぎ' },
    { id: 36, name: 'とうもろこし' },
    { id: 37, name: 'トマト' },
    { id: 38, name: 'なす' },
    { id: 39, name: 'にら' },
    { id: 40, name: 'にんじん' },
    { id: 41, name: 'ニンニク' },
    { id: 42, name: '白菜' },
    { id: 43, name: 'パクチー' },
    { id: 44, name: 'ピーマン' },
    { id: 45, name: 'ブロッコリー' },
    { id: 46, name: '水菜' },
    { id: 47, name: 'もやし' },
    { id: 48, name: '野菜パック' },
    { id: 49, name: '山芋' },
    { id: 50, name: 'レタス' },
    { id: 51, name: 'レンコン' },
    { id: 52, name: 'その他' },

    # 魚介類（id:5）
    { id: 53, name: 'アジ' },
    { id: 54, name: 'アナゴ' },
    { id: 55, name: 'イカ' },
    { id: 56, name: 'イクラ' },
    { id: 57, name: 'イワシ' },
    { id: 58, name: 'ウニ' },
    { id: 59, name: 'うなぎ' },
    { id: 60, name: 'えび' },
    { id: 61, name: '海藻類' },
    { id: 62, name: '貝類' },
    { id: 63, name: '加工品' },
    { id: 64, name: '数の子' },
    { id: 65, name: 'カツオ' },
    { id: 66, name: 'カニ' },
    { id: 67, name: 'サケ' },
    { id: 68, name: 'サバ' },
    { id: 69, name: 'サンマ' },
    { id: 70, name: 'ししゃも' },
    { id: 71, name: 'しらす・ちりめん' },
    { id: 72, name: 'タイ' },
    { id: 73, name: 'タコ' },
    { id: 74, name: 'たらこ' },
    { id: 75, name: 'ハマチ' },
    { id: 76, name: 'ブリ' },
    { id: 77, name: 'ホッケ' },
    { id: 78, name: 'マグロ' },
    { id: 79, name: 'その他' },

    # 肉類（id:6）
    { id: 80, name: '猪肉' },
    { id: 81, name: '鴨肉' },
    { id: 82, name: '牛肉' },
    { id: 83, name: '鹿肉' },
    { id: 84, name: '七面鳥' },
    { id: 85, name: 'ソーセージ' },
    { id: 86, name: 'チャーシュー' },
    { id: 87, name: '鶏肉' },
    { id: 88, name: 'ハム' },
    { id: 89, name: '羊肉' },
    { id: 90, name: '豚肉' },
    { id: 91, name: 'ベーコン' },
    { id: 92, name: 'ミンチ類' },
    { id: 93, name: '詰め合わせ' },
    { id: 94, name: 'その他' },

    # 乳製品類（id:7）
    { id: 95, name: 'うずら卵' },
    { id: 96, name: '温泉卵' },
    { id: 97, name: '牛乳' },
    { id: 98, name: '卵' },
    { id: 99, name: 'チーズ' },
    { id: 100, name: '豆乳' },
    { id: 101, name: '生クリーム' },
    { id: 102, name: '飲むヨーグルト' },
    { id: 103, name: 'バター' },
    { id: 104, name: 'マーガリン' },
    { id: 105, name: 'ヨーグルト' },
    { id: 106, name: 'その他' },

    # 果物類（id:8）
    { id: 107, name: 'バナナ' },
    { id: 108, name: 'みかん類' },
    { id: 109, name: 'メロン' },
    { id: 110, name: 'スイカ' },
    { id: 112, name: 'マンゴー' },
    { id: 113, name: 'スモモ' },
    { id: 114, name: 'さくらんぼ' },
    { id: 115, name: 'いちご' },
    { id: 116, name: 'りんご' },
    { id: 117, name: 'なし' },
    { id: 118, name: 'レモン' },
    { id: 119, name: 'パイナップル' },
    { id: 120, name: '桃' },
    { id: 121, name: 'マスカット' },
    { id: 122, name: 'ピオーネ' },
    { id: 123, name: '柿' },
    { id: 124, name: 'びわ' },
    { id: 125, name: 'イチジク' },
    { id: 126, name: 'フルーツの詰め合わせ' },
    { id: 127, name: 'グレープフルーツ' },
    { id: 128, name: 'ドライフルーツ' },
    { id: 129, name: 'その他' },

    # 冷凍類（id:9）
    { id: 130, name: '弁当' },
    { id: 131, name: '冷凍うどん' },
    { id: 132, name: '冷凍食品' },
    { id: 133, name: '冷凍フルーツ' },
    { id: 134, name: '冷凍野菜' },
    { id: 135, name: 'レトルト食品' },
    { id: 136, name: 'その他' },

    # 漬物類（id:10）
    { id: 137, name: '厚揚げ' },
    { id: 138, name: '油揚げ' },
    { id: 139, name: '梅干し' },
    { id: 140, name: 'キムチ' },
    { id: 141, name: '佃煮' },
    { id: 142, name: '漬物類' },
    { id: 143, name: '豆腐（絹）' },
    { id: 144, name: '豆腐（木綿）' },
    { id: 145, name: '納豆' },
    { id: 146, name: 'ゆば' },
    { id: 147, name: 'ご飯のお供' },
    { id: 148, name: 'その他' },

    # パン類（id:11）
    { id: 149, name: '菓子パン' },
    { id: 150, name: 'クロワッサン' },
    { id: 151, name: '惣菜パン' },
    { id: 152, name: '食パン' },
    { id: 153, name: 'バケット' },
    { id: 154, name: 'マフィン' },
    { id: 155, name: 'ロールパン' },
    { id: 156, name: 'ジャム' },
    { id: 157, name: 'はちみつ' },
    { id: 158, name: 'その他' },

    # 粉類（id:12）
    { id: 159, name: 'お好み焼き粉・たこ焼き粉' },
    { id: 160, name: '片栗粉' },
    { id: 161, name: '唐揚げ粉' },
    { id: 162, name: '小麦粉' },
    { id: 163, name: '米粉' },
    { id: 164, name: 'そば粉' },
    { id: 165, name: '天ぷら粉' },
    { id: 166, name: 'ノンフライ用粉' },
    { id: 167, name: 'パン粉' },
    { id: 168, name: 'その他' },

    # 乾物（id:13）
    { id: 169, name: 'お茶漬け' },
    { id: 170, name: '海藻類' },
    { id: 171, name: 'かつお節' },
    { id: 172, name: 'ごま' },
    { id: 173, name: '煮干し' },
    { id: 174, name: 'のり類' },
    { id: 175, name: 'ふりかけ' },
    { id: 176, name: 'その他' },

    # 缶詰（id:14）
    { id: 177, name: '缶詰（魚介類）' },
    { id: 178, name: '缶詰（肉類）' },
    { id: 179, name: '缶詰（野菜類）' },
    { id: 180, name: '缶詰（きのこ類）' },
    { id: 181, name: '缶詰（フルーツ類）' },
    { id: 182, name: '缶詰（ソース類）' },
    { id: 183, name: 'その他' },

    # 調味料類（id:15）
    { id: 184, name: '油' },
    { id: 185, name: 'お酒' },
    { id: 186, name: 'お酢' },
    { id: 187, name: 'オリーブオイル' },
    { id: 188, name: 'ケチャップ' },
    { id: 189, name: 'ごま油' },
    { id: 190, name: 'サラダ油' },
    { id: 191, name: 'しょうゆ' },
    { id: 192, name: '砂糖' },
    { id: 193, name: '塩' },
    { id: 194, name: 'ソース' },
    { id: 195, name: 'ドレッシング' },
    { id: 196, name: 'ポン酢' },
    { id: 197, name: 'マヨネーズ' },
    { id: 198, name: '味噌' },
    { id: 199, name: 'みりん' },
    { id: 200, name: 'めんつゆ' },
    { id: 201, name: 'ラー油' },
    { id: 202, name: '和風だし' },
    { id: 203, name: 'その他' },

    # お菓子類（id:16）
    { id: 204, name: 'アメ類' },
    { id: 205, name: 'おつまみ' },
    { id: 206, name: 'スナック菓子' },
    { id: 207, name: '駄菓子' },
    { id: 208, name: '洋菓子' },
    { id: 209, name: '和菓子' },
    { id: 210, name: 'その他' },

    # お酒類（id:17）
    { id: 211, name: 'ウイスキー' },
    { id: 212, name: '梅酒' },
    { id: 213, name: '焼酎' },
    { id: 214, name: '日本酒' },
    { id: 215, name: 'ビール' },
    { id: 216, name: 'ワイン' },
    { id: 217, name: 'その他' },

    # ソフトドリンク類（id:18）
    { id: 218, name: 'お茶' },
    { id: 219, name: '果実飲料' },
    { id: 220, name: '紅茶' },
    { id: 221, name: 'コーヒー' },
    { id: 222, name: 'スポーツドリンク' },
    { id: 223, name: '清涼飲料' },
    { id: 224, name: '炭酸飲料' },
    { id: 225, name: '豆乳' },
    { id: 226, name: '水' },
    { id: 227, name: '野菜ジュース' },
    { id: 228, name: 'その他' },

    # その他（id:19）
    { id: 229, name: 'その他' }
  ]

  #   include ActiveHash::Associations
  #   has_many :items
end
