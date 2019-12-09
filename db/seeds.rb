# frozen_string_literal: true

if User.all.length < 2
  first_user = User.create!(name: 'onebitcode', email: 'onebitcode@gmail.com',
                            password: '123456', password_confirmation: '123456')
  secound_user = User.create(name: 'root', email: 'root@root.com',
                             password: '123456', password_confirmation: '123456')
  Contact.first_or_create!(user: first_user, record: secound_user)
  Message.first_or_create!(sender: first_user, receiver: secound_user,
                           content: 'SEEDS')
end
