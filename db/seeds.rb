# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(nome: 'Tst' , email: 'testmail', registro: 'reg', cargo: 'testcargo', pin:'1234', check_out_time: Time.now + 10000 , check_in_time: Time.now)
User.create(nome: 'Tst1' , email: 'testmail1', registro: 'reg1', cargo: 'testcargo1', pin:'0234', check_out_time: Time.now + 10000 , check_in_time: Time.now)
User.create(nome: 'Tst2' , email: 'testmail2', registro: 'reg2', cargo: 'testcargo2', pin:'2234', check_out_time: Time.now + 20000 , check_in_time: Time.now)
User.create(nome: 'Tst2' , email: 'testmail3', registro: 'reg3', cargo: 'testcargo3', pin:'3234', check_out_time: Time.now + 30000 , check_in_time: Time.now)