#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#You need to buy before you can sell
#Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
def stock_picker(prices)
    if prices.length < 2
        puts "Not enough days to make a profit"
        return nil
    end
    maximum_profit = 0
    min_buying_day = 0
    buying_day = 0
    selling_day = 0

    (1...prices.length).each { |day|
    if prices[day] < prices[min_buying_day]
        min_buying_day = day
    end

    profit = prices[day] - prices[min_buying_day]

    if profit > maximum_profit
    maximum_profit = profit
    buying_day = min_buying_day
    selling_day = day
    end

    }

    [buying_day,selling_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])




