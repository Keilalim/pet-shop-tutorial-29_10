// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Adoption {
    address[16] public adopters;
    // Adopting a pet
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  adopters[petId] = msg.sender;

  return petId;
}

// Retrieving the adopters
function getAdopters() public view returns (address[16] memory) {
  return adopters;
}
} 

//  Compile:        truffle compile
//  Migrate:        truffle migrate
//Test contracts: truffle test
 // Run dev server: npm run dev
 // git add.
 //git commit -m "MENSAGEM”
 //git push -u origin main