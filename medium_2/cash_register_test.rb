require 'minitest/autorun'
require "minitest/reporters"

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(0)
    @book = Transaction.new(10)
    @book.amount_paid = 7
  end
  
  def test_accept_money
    assert_equal(7, @register.accept_money(@book))
  end
  
  def test_change
    register = CashRegister.new(1000)
    transaction = Transaction.new(30)
    transaction.amount_paid = 40

    assert_equal 10, register.change(transaction)
  end
end