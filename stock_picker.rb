
def stock_picker(stocks)
    ascending = stocks.sort
    pair = []
    biggest_dif = 0
    ascending.each do |stock|
        index = stocks.index(stock)
        biggest = stock
        stocks[index..-1].each do |upper_stock|
            if  upper_stock > biggest
                biggest = upper_stock
            end
        end
        if biggest != stock
            if(biggest - stock) > biggest_dif
                pair[0] = index
                pair[1] = stocks[index..-1].index(biggest) + index # ensures the day sold will be after the day bought with the edge case shown below
                biggest_dif = biggest - stock
            end
        end
    end
    return pair
end

print stock_picker([2,18,1,2,2,2,15,3,3,3,18,1])