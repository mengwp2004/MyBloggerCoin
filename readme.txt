
##solc 编译
solc contracts/SimpleStorage.sol --bin --abi -o solc/simple

##web3j

#web3j　bin address
https://github.com/web3j/web3j/releases/tag/v3.4.0

#web3j command
web3j solidity generate [--javaTypes|--solidityTypes] /path/to/<smart-contract>.bin /path/to/<smart-contract>.abi -o /path/to/src/main/java -p com.your.organisation.name

##generate code

#solidity
web3j solidity generate  ./SimpleStorage.bin  ./SimpleStorage.abi  -o  java    -p com.test.Simple
web3j solidity generate  ./GustoCoin.bin  ./GustoCoin.abi  -o  java    -p com.gustoboard.bm.bc.exchange.contract

#truffle
web3j truffle  generate  ./GustoCoin.json  -o  java    -p com.gustoboard.bm.bc.exchange.contract


coin的例子:
BloggerCoin/contracts




参考：
https://blog.csdn.net/turkeycock/article/details/79165602

安装Truffle
sudo npm install -g truffle 

#create truffle project
truffle unbox metacoin

#修改truffle.js
    module.exports = {  
        networks: {  
            development: {  
                host: 'localhost',  
                port: '7545',  
                network_id: '*' // Match any network id  
            }  
        }  
    };  


#编译和部署
truffle compile  
truffle migrate

#部署的时候指定网络
truffle migrate --network development

#truffle 提供的develop　
truffle develop

#使用钱包导入代币，需要bytecode,可以通过truffle development　环境，运行以下命令获取
GustoCoin.bytecode

在钱包，要添加合同，然后监听代币合同，就可以在创建的account中看到代币


#测试
truffle test

javascript web3 library
https://github.com/ethereum/wiki/wiki/JavaScript-API

#使用truffle development 命令

HelloWorld.deployed().then(instance => contract = instance)


truffle console中预载了truffle-contract函数库，以方便操作部署到区块链上的合约。

这边使用HelloWorld.deployed().then语句来取得HelloWorld合约的Instance（实例），并存到contract变量中，以方便后续的调用。

上面用的是Javascript ES6+的语法，这句也可以写成：

HelloWorld.deployed().then(instance => {
    contract = instance
});


truffle(development)> contract.sayHello.call()
'Hello World'


相比智能合约账户的Storage，用日志的方式存储一些信息会便宜很多。Storage中大致的价格是：每32字节（256位）存储需要消耗20,000气（Gas）。而日志大致是每字节8气（Gas）。


