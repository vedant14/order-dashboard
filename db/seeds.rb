5.times do |user|
	User.create!(
		email: "vedant.lohbare#{user}@gmail.com",
		password: "asdfasdf",
		password_confirmation: "asdfasdf"
	)
end
puts "5 users created"
products = ['iPhone', 'iPad', 'MacBook', 'MacPro', 'iPod']
status = ['Placed', 'Shipped', 'Delivered', 'Return']

10.times do |order|
	Order.create!(
		name: "Order for #{products.sample}",
		status: status.sample
	)
end
puts "10 orders created"