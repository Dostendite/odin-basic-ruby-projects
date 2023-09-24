stock_prices = [60, 14, 5, 3, 7 , 8, 60, 32, 4, 1]

def stock_picker(prices_array)
  
  # Buy day & Sell day
  best_deal = {
    value: 0,
    buy_day: 0,
    sell_day: 0
  }

  # Loop through the array
  # Loop again to compare the
  # current number with the others

  # If the number compared against
  # the current number returns 
  # higher than deal_value,
  # add them to the hash

  # Then return best_deal_days
  prices_array.each_with_index do |current_num, current_index|
    prices_array.each_with_index do |compare_num, compare_index|

      if compare_index > current_index
        if ((compare_num - current_num) > best_deal[:value])
          best_deal[:value] = (compare_num - current_num)
          best_deal[:buy_day] = current_index + 1
          best_deal[:sell_day] = compare_index + 1
        end
      end
    end
  end

  best_deal
end

best_deal = stock_picker(stock_prices)

puts "BEST DEAL:\n~~~~~~~~~~~~~~~~
Buy on day #{best_deal[:buy_day]}
Sell on day #{best_deal[:sell_day]}
Profit: #{best_deal[:value]}$\n~~~~~~~~~~~~~~~~"