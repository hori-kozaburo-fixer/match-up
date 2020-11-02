#
#
p "create Users"
User.create!(
  email: 'user1@example.com',
  password: 'aaaaaaaa',
  nickname: 'ディー・ディー',
  full_name: '山田太郎',
  full_name_kana: 'ヤマダタロウ',
  birth_day: '2000-01-01',
  self_introduction: 'ディー・ディーです',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/1.jpg"),
  team_id: 3
)
User.create!(
  email: 'user2@example.com',
  password: 'aaaaaaaa',
  nickname: 'レブロン・ジェームス',
  full_name: '山田花子',
  full_name_kana: 'ヤマダハナコ',
  birth_day: '2005-05-05',
  self_introduction: 'レブロンです！',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_img/2.jpg"),
  team_id: 14
)
User.create!(
  email: 'user3@example.com',
  password: 'aaaaaaaa',
  nickname: 'スティーブ・ナッシュ',
  full_name: '田中一郎',
  full_name_kana: 'タナカイチロウ',
  birth_day: '2010-11-11',
  self_introduction: 'ナッシュです',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/3.jpg"),
  team_id: 4
)
User.create!(
  email: 'user4@example.com',
  password: 'aaaaaaaa',
  nickname: 'ジェイソン・キッド',
  full_name: '田中貴子',
  full_name_kana: 'タナカタカコ',
  birth_day: '1990-10-10',
  self_introduction: 'キッドです',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_img/4.jpg"),
  team_id: 11
)
User.create!(
  email: 'user5@example.com',
  password: 'aaaaaaaa',
  nickname: 'ヤニス・アデトクンボ',
  full_name: '佐藤一',
  full_name_kana: 'サトウハジメ',
  birth_day: '1980-03-07',
  self_introduction: 'ヤニスです',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/5.jpg"),
  team_id: 9
)
User.create!(
  email: 'user6@example.com',
  password: 'aaaaaaaa',
  nickname: 'サイトウ・タクミ',
  full_name: '斎藤拓実',
  full_name_kana: 'サイトウタクミ',
  birth_day: '1956-10-04',
  self_introduction: '名古屋ダイモンドドルフィンズ',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/6.jpg"),
  team_id: 5
)
User.create!(
  email: 'user7@example.com',
  password: 'aaaaaaaa',
  nickname: 'ケンドリック・パーキンス',
  full_name: '工藤新一',
  full_name_kana: 'クドウシンイチ',
  birth_day: '2000-01-01',
  self_introduction: '真実はいつもひとつ',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/7.jpg"),
  team_id: 8
)