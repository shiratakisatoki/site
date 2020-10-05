# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employee1 = Employee.create(name: '岸部一樹', age: 31)
employee2 = Employee.create(name: '崎谷雄大', age: 25)
employee3 = Employee.create(name: '北出子百合', age: 55)

employee1.customers.create(name: '猿谷夏希', age: 35)
employee1.customers.create(name: '小国薫', age: 45)
employee1.customers.create(name: '菅尾大地', age: 22)
employee2.customers.create(name: '針谷雄太', age: 16)
employee2.customers.create(name: '井上涼', age: 75)
employee2.customers.create(name: '清宮義雄', age: 32)
employee3.customers.create(name: '福江桐子', age: 49)
employee3.customers.create(name: '川島和也', age: 33)
employee3.customers.create(name: '片原照夫', age: 29)
