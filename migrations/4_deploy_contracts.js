var SimpleStorage = artifacts.require("./BloggerCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
};
