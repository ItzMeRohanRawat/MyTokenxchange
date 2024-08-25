const PeerToPeerExchange = artifacts.require("PeerToPeerExchange");

module.exports = function(deployer) {
    deployer.deploy(PeerToPeerExchange);
};
