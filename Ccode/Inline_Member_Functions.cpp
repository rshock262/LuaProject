class Account{
    public:
    Account(double initial_balance) {balance = initial_balance;}
    double getBalance();
    double deposit(double amount);
    double withdraw(double amount);
    private:
    double balance;
};

inline double Account::getBalance(){
    return balance;
}

inline double Account::deposit(double amount){
    return(balance+=amount);
}

inline double Accoun::withdraw(double amount){
    return(balance+=amount);
}