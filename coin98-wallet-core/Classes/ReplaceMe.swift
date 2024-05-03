import WalletCore

public struct WalletInfo{
    public var address: String
    public var privateKey: String
    public var publicKey: String
}

public class Wallet{
    public init(){}
    
    public func createWallet(mnemonic: String, path: String) -> WalletInfo{
        let wallet = HDWallet(mnemonic: mnemonic, passphrase: "")!
        let key = wallet.getKey(coin: CoinType.ethereum , derivationPath: path)
          
        let address = wallet.getAddressForCoin(coin: CoinType.ethereum)
          
        let publicKeyBase64 = key.getPublicKeyByType(pubkeyType: PublicKeyType.secp256k1).data.hexString
         
        let privateKeyBase64 = key.data.hexString
        
        return WalletInfo(address: address, privateKey: privateKeyBase64, publicKey: publicKeyBase64)
    }
}

