const MyToken = artifacts.require('./MyToken.sol');

module.exports = (deployer) => {
  /* 
    トークン発行量が50000MTNKになるように, MyTokenの
    コンストラクタへinitialSupplyの値を代入
  */
  const initialSupply = 50000e18;
  deployer.deploy(MyToken, initialSupply);
};