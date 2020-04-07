import { Connectors } from 'web3-react'
const { MetaMaskConnector, WalletConnectConnector, NetworkOnlyConnector } = Connectors

const MetaMask = new MetaMaskConnector()
const Infura = new NetworkOnlyConnector({
  providerURL: 'https://rinkeby.infura.io/v3/d0119952df0544d19e148e447a24795b'
})

const MainConnectors = { MetaMask, Infura }
export default MainConnectors;