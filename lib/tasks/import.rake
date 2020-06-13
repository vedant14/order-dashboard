require 'csv'

namespace :import  do	
	task orders: :environment do
		filename = File.join Rails.root, "task.csv"
		CSV.foreach(filename) do |row|
			name, status = row
			case status
			when "Placed"
				status = 0
			when "Shipped"
				status = 1
			when "Delivered"
				status = 2
			when "Return" 
				status = 3
			else
				status = 0
			end	

			Order.create(name:name, status:status)
		end
	end

	task orderqty: :environment do
		Order.all.each do |order|
			qty = rand(1...50)
			order.update!(quantity: qty)
		end
	end	
end



