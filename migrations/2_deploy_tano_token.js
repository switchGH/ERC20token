const TanoToken = artifacts.require('TanoToken');

module.exports = (deployer) => {
  deployer.deploy(TanoToken);
};
