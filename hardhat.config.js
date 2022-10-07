require("@nomiclabs/hardhat-waffle");
require("dotenv").config();



module.exports = {
    solidity: "0.8.4",
    networks: {
        mumbai: {
            url: `${process.env.API_URL}`,
            accounts: [`0x${process.env.PRIVATE_KEY}`]
        }
    },

    solidity: {
        version: "0.8.4",
        settings: {
            optimizer: {
                enabled: true,
                runs: 200
            }
        }
    }
};