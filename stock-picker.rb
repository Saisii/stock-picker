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

                # p "element is #{element} and buy is #{buy}. Should be the same"
                # p "r_element is #{r_element} and sell is #{sell}. Should be the same"
                # p "forward index: #{index_forward}, reverse index: #{(stock_array.length - index_reverse - 1)}"
                # p "buy at #{buy} and sell at #{sell}" 
                # p "You will make #{profit}$"

                if profit > best_profit
                    # p "#{profit} is greater than #{higheset_trade_counter}"
                    best_profit = profit
                    best_profit_array = [index_forward, stock_array.length - index_reverse - 1]
                    
                    # p "highest_trade_counter has been updated: #{best_profit}"
                    # p "at index of #{best_profit_array}"
                    # puts ""
                end
            end

          
        end
    end

    # p "best profit is #{best_profit}"


    best_profit_array
end












p stock_picker([1,3,6,9,15,8,60,1,10])
