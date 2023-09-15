const { ethers } = require('hardhat');

async function main() {
    const colorBoard = await ethers.deployContract("ColorBoard", []);
    
      await colorBoard.waitForDeployment();

  console.log('colorBoard deployed to:', colorBoard.target);

  

}
//0x1525b0C32EEAd63e2cFAa72d90cC7C2f39A4eB22

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });