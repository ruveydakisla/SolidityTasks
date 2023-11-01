// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task4{
    function transfer(address to, uint256 amount) external {
    require(balances[msg.sender] >= amount, "Yetersiz bakiye"); // Bakiye kontrolü
    require(to != address(0), "Gecersiz hedef adres"); // Geçerli hedef adres kontrolü
    require(msg.sender != to, "Kendi kendine transfer yapilamaz"); // Kendi kendine transfer kontrolü

    balances[msg.sender] -= amount;
    balances[to] += amount;
    
    emit Transfer(msg.sender, to, amount);
}

}