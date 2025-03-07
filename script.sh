#!/bin/bash

# Banking Automation Script
echo "Welcome to Bank of Vizag"
echo "1. Create Account"
echo "2. Deposit Money"
echo "3. Withdraw Money"
echo "4. Exit"
read -p "Choose an option: " option

case $option in
    1)
        read -p "Enter your name: " name
        echo "Account created successfully for $name!" ;;
    2)
        read -p "Enter deposit amount: " amount
        echo "You have deposited $amount successfully!" ;;
    3)
        read -p "Enter withdrawal amount: " amount
        echo "You have withdrawn $amount successfully!" ;;
    4)
        echo "Exiting..." ;;
    *)
        echo "Invalid option! Try again." ;;
esac

