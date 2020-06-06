class Order < ApplicationRecord
	include Filterable

	enum status: {Placed: 0, Shipped: 1, Delivered: 2, Return:3}

	scope :status, -> (status) { where status: status}

end
