def stock_picker(stock_array)

    best_profit = 0
    best_profit_array = []

    stock_array.each_with_index do |element, index_forward|


        stock_array.reverse.each_with_index do |r_element, index_reverse|

            buy = 0
            sell = 0
            profit = 0

            if index_forward < stock_array.length - index_reverse  -1

                buy = element
                sell = r_element
                profit = sell - buy

                if profit > best_profit
                    best_profit = profit
                    best_profit_array = [index_forward, stock_array.length - index_reverse - 1]
                        
                end
            end          
        end
    end

    best_profit_array
end












p stock_picker([90,3,6,3,15,8,60,1,0])
