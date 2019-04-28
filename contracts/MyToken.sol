pragma solidity ^0.5.0;
import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract MyToken is StandardToken {
  // コントラクトの状態変数
  string public name = 'MyToken';
  string public symbol = 'MTKN';
  uint public decimals = 18; // 小数点の桁数

  // コントラクト作成時に呼ばれる
  constructor(uint initialSupply) public {
    /* 
      totalSupply_ トークンの総発行量であり、OpenzeppelinのStandardが持つ状態変数
     */
    totalSupply_ = initialSupply;
    /*
      発行したトークンを全てmsg.senderのアドレスに入れる
      msg.sebder コントラクト実行者のEthereumアドレス
      balances アドレスをキーとしたkey/value型変数
     */
    balances[msg.sender] = initialSupply;
  }
}
