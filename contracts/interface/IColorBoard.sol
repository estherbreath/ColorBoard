// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
interface IColorBoard{
     function getColor(uint8 x, uint8 y) external view returns (uint8);
     function generateRandomColor(uint8 x, uint8 y) external view returns (uint8);

}