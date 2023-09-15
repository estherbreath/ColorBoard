// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ColorBoard {
    uint8[7][5] private board;  // 7 columns, 5 rows

    // Colors
    uint8 constant WHITE = 1;
    uint8 constant BLACK = 2;
    uint8 constant RED = 3;
    uint8 constant BLACK2 = 4;

    constructor(){
        // Initialize the board with random colors
        for (uint8 y = 0; y < 5; y++) {
            for (uint8 x = 0; x < 7; x++) {
                uint8 colorId = generateRandomColor(x, y);
                board[y][x] = colorId;
            }
        }
    }

    function getColor(uint8 x, uint8 y) public view returns (uint8) {
        require(x > 0 && x <= 7, "Invalid x-axis coordinate");
        require(y > 0 && y <= 5, "Invalid y-axis coordinate");
        return board[y - 1][x - 1];  // Adjust for 0-based indexing
    }

    // Generate a pseudo-random color based on position and block timestamp
    function generateRandomColor(uint8 x, uint8 y) internal view returns (uint8) {
        uint8 colorId = uint8(uint256(keccak256(abi.encodePacked(block.timestamp,msg.sender, x,y))) % 4) + 1;
        return colorId;
    }
}
