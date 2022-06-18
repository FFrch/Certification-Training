# TODO: implement your seeds
puts 'Creating users...'

john = User.new(
  first_name: 'John',
  last_name: 'Doe',
  password: 'secret',
  email: 'john@gmail.com'
)
john.save!

puts 'Creating trees...'
apple_tree = Tree.new(
  name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  quantity_by_year: 175,
  fruits: 'Apple',
  price_per_year: 2,
  user_id: 1
)
apple_tree.save!

puts 'Finished!'
