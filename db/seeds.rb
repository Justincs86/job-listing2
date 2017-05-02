# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Hello World!'
puts '這個種子檔會自動建立一個帳號, 並且随机創建 10 個jobs，10个隐藏的jobs'

create_account = User.create([
  email: 'example@gmail.com', password: '12345678',
  password_confirmation: '12345678', is_admin: 'true'])
puts 'Admin account is created successfully!'




for i in 1..10 do

                Job.create!([
                category: "Technology",
                company: "Smartisan",
                location: "Beijing, China",
                title: "Software Engineer",
                description: "Developing and maintain current or new software structure for new project ",
                wage_lower_bound: rand(10..20) * 1000,
                wage_upper_bound: rand(20..45) * 1000,
                is_hidden: "false"
                ])
              end

for i in 1..10 do

              Job.create!([
                category: "Technology",
                company: "Xiaomi",
                location: "Beijing, China",
                title: "Senior Software Engineer",
                description: "Developing and maintain current or new software structure for new project ",
                wage_lower_bound: rand(10..20) * 1000,
                wage_upper_bound: rand(20..50) * 1000,
                is_hidden: "false"
                ])
              end


for i in 1..10 do

                Job.create!([
                  category: "Business",
                  company: "Google",
                  location: "California, United States",
                  title: " Senior Business Executive",
                  description: "Business Development by organizing activities and training, monitoring, performance review and sales activities.",
                  wage_lower_bound: rand(10..20) * 1000,
                  wage_upper_bound: rand(20..50) * 1000,
                  is_hidden: "false"
                  ])
                end
