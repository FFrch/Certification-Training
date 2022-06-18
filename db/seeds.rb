# TODO: implement your seeds
john = User.create!(
  first_name: 'John',
  first_name: 'Doe',
  password: 'secret',
  email: 'john@gmail.com'
)

apple_tree = Tree.create!(
  name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price: 175,
  quantity_per_year: 5,
  fruits: 'apple',
  user: john
)
