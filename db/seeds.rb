# frozen_string_literal: true

User.first_or_create!(name: 'onebitcode', email: 'onebitcode@gmail.com',
                      password: '123456', password_confirmation: '123456')
