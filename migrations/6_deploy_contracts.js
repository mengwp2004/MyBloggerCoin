var SimpleStorage = artifacts.require("./GustoToken.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
};
