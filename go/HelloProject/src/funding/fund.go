package main

type Fund struct {
	balance int
}

func NewFund(initializeBalance int) *Fund {

	return &Fund{
		balance: initializeBalance,
	}
}

func (f *Fund) Balance() int {
	return f.balance
}

func (f *Fund) Withdraw(amount int) {
	f.balance -= amount
}
