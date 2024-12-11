# Ethernaut CTF: King Challenge

The King challenge on Ethernaut focuses on teaching the implications of handling Ether transfers in Solidity and the risks of denial-of-service (DoS) attacks caused by faulty fallback functions.

## Challenge Description

The King contract is a game where participants can become the "king" by sending more Ether than the current balance of the contract. The current king is replaced, and the Ether they sent is refunded. The goal of the challenge is to exploit the contract and prevent anyone else from becoming the king.