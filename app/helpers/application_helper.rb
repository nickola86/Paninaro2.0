module ApplicationHelper
	def to_currency(num)
		number_to_currency(num,:unit => '&euro;')
	end
	def to_date(d)
	  d.strftime("%A, %d %B %Y")
	end
	def link_back
	  link_to "Back", :back
	end
	def link_to_suppliers
	  link_to "Suppliers", suppliers_path
	end
	def link_to_orders
	  link_to "Orders", today_orders_path
	end
	def link_to_users
	  link_to "Users", users_path
	end
end
