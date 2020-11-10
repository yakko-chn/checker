class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '米・雑穀' },
    { id: 3, name: '麺類' },
    { id: 4, name: '野菜類' },
    { id: 5, name: '水産物・加工品' },
    { id: 6, name: '肉類・加工品' },
    { id: 7, name: '卵・乳製品' },
    { id: 8, name: '果物' },
    { id: 9, name: '冷凍食品・レトルト・惣菜' },
    { id: 10, name: '豆腐・納豆・漬物' },
    { id: 11, name: 'パン類' },
    { id: 12, name: '粉類' },
    { id: 13, name: '乾物' },
    { id: 14, name: '缶詰' },
    { id: 15, name: '調理料' },
    { id: 16, name: 'お菓子' },
    { id: 17, name: 'お酒' },
    { id: 18, name: '水・ソフトドリンク' },
    { id: 19, name: 'その他' }
  ]
 
  # include ActiveHash::Associations
  # has_many :items
end
