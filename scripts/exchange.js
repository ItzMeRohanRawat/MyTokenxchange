const PeerToPeerExchange = artifacts.require("PeerToPeerExchange");

module.exports = async function(callback) {
    const instance = await PeerToPeerExchange.deployed();
    const accounts = await web3.eth.getAccounts();

    // Seller initiates the exchange
    await instance.exchange(accounts[1], 100, "0xTokenAddressHere", { from: accounts[0] });

    console.log("Exchange completed!");
    callback();
};
