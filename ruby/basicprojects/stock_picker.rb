# Author: Jonathan Bell
# Date(YYYY/MM/DD): 2023/03/21 
# Project: Stock picker
# Takes an array of closing stock prices for series of days
#   and returns the pair of days with best buy and sell, 
#   i.e. biggest difference between consecutive elements


# Method name: stock_picker
# Inputs: Array of numbers representing stock prices
# Outputs: Two element array with numbers representing best indices 
#             or days to sell from the input

def stock_picker(prices)
  buy_index = 0
  sell_index = 0
  profit = 0

  prices.each_with_index do |buy, b_index|
    prices.each_with_index do |sell, s_index|
      if s_index > b_index
        if (sell - buy) > profit
          profit = sell - buy
          buy_index = b_index
          sell_index = s_index
        end
      end
    end
  end
  best_days = [buy_index, sell_index]
end


arr = [17,3,6,9,15,8,6,1,100]
puts stock_picker(arr)

