pragma solidity >=0.5.0 <0.7.0;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';// 基本的なERC20の機能が実装されている
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';// 「名前」「シンボル」「小数点の桁数」の設定が可能

contract TanoToken is ERC20, ERC20Detailed {
  string private _name = 'TANOCOIN';
  string private _symbol = "TNC";
  uint8 private _decimals = 18;

  address account = msg.sender;
  uint value = 100000000000;

  constructor() ERC20Detailed(_name, _symbol, _decimals) public {
    _mint(account, value);
  }

}



