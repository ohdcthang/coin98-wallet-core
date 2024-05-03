import WalletCore

public class Wallet{
    public init(){}
    
    public func createWallet(mnemonic: String, path: String) -> String{
        let wallet = HDWallet(mnemonic: mnemonic, passphrase: "")!
        let key = wallet.getKey(coin: CoinType.ethereum , derivationPath: path)
          
        let address = wallet.getAddressForCoin(coin: CoinType.ethereum)
          
        let publicKeyBase64 = key.getPublicKeyByType(pubkeyType: PublicKeyType.secp256k1).data.hexString
         
        let privateKeyBase64 = key.data.hexString
        
        return address + " " + publicKeyBase64 + " " + privateKeyBase64
    }
}

