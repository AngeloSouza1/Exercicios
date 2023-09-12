class StockEvaluator
    def evaluate(stock)
      values = stock.split(':').map(&:to_i)
      max_profit = 0
  
      values.each_with_index do |buy_price, buy_day|
        values[buy_day + 1..-1].each do |sell_price|
          profit = sell_price - buy_price
          max_profit = [max_profit, profit].max
        end
      end
  
      max_profit.zero? ? "No profit" : "Max Profit: #{max_profit}"
    end
  
    def evaluate_stocks(tickets)
      stocks = tickets.split("\n")
      results = {}
  
      stocks.each do |stock|
        stock_name, *prices = stock.split(':')
        prices = prices[0].split(' ').map(&:to_i)
        
        max_profit = evaluate(prices.join(':'))
  
        results[stock_name] = max_profit
      end
  
      results.sort_by { |key, value| -value }.map { |key, value| "#{key}: #{value}" }
    end
  end
  