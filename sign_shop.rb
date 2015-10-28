# You work in a sign shop, making banner signs for customers.
#  Customers are going to come in and want a price quote for a sign
#  based on the dimensions and the colours.

# Here are your rules:

# Signs cost $15 per square foot.
# If a sign has two colours or fewer, add $10 for each colour.
# If a sign has more than two colours, add $15 for each colour.
# Tax is 15%.
# The boss insists that he just wants one function that he can put the dimensions and colour count in,
 # and get the total back.

def sign_area_cost(width, height, price_per_sq_ft)

  width * height * price_per_sq_ft
end

def sign_color_cost(color_count, color_limit, low_cost, high_cost)

   return color_count * low_cost if color_count <= color_limit

   return color_count * high_cost

end



def sign_tax(price, tax_rate)

   (1.0 + tax_rate) * price

end



def sign_quote

  puts "Enter the sign width between 1 and 30 ft: "

  sign_width = gets.chomp.to_i

  puts "Enter the sign height between 1 and 30 ft: "

  sign_height = gets.chomp.to_i

  puts "Enter the number of colours less than 10: "

  sign_color_count = gets.chomp.to_i

  price = 0

  price = sign_area_cost(sign_width, sign_height, 15)

  puts "price based on area = #{price}"

  price += sign_color_cost(sign_color_count, 2, 10, 15)

  puts "price based on color and sqft #{price}"

  price = sign_tax(price, 0.15)

  puts "The total cost of the sign is : #{price}"
  puts ""


end

sign_quote




