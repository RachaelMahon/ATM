class Account

attr_reader :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(date, amount)
    @balance+= amount
    @transactions << {date: date, credit: amount, debit: "", balance: @balance}
  end

  def withdraw(date, amount)
    @balance-= amount
    @transactions << {date: date, credit: amount, debit: "", balance: @balance}
  end

  def print_statement
    count = 1
    puts "#{"no.".center(5)} || #{"date".center(11)} || #{"credit".center(10)} || #{"debit".center(10)} || #{"balance".center(10)}"
    @transactions.each do |transaction|
      puts "#{count.to_s.center(5)} || #{transaction[:date].to_s.rjust(11)} || #{transaction[:credit].to_s.center(10)} || #{transaction[:debit].to_s.center(10)} || #{transaction[:balance].to_s.center(10)}"
      count+= 1
    end
  end

end
