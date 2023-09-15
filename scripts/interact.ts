import {ethers} from "hardhat";

async function main() {
const colorBoard = await ethers.getContractAt(
    'IColorBoard',
    '0x1525b0C32EEAd63e2cFAa72d90cC7C2f39A4eB22'
  )
   const num = await colorBoard.getColor(2,4)
   console.log (Number(num))
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });