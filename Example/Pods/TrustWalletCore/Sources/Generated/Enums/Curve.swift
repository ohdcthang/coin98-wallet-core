// SPDX-License-Identifier: Apache-2.0
//
// Copyright © 2017 Trust Wallet.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

/// Elliptic cruves
public enum Curve: UInt32, CaseIterable, CustomStringConvertible  {
    case secp256k1 = 0
    case ed25519 = 1
    case ed25519Blake2bNano = 2
    case curve25519 = 3
    case nist256p1 = 4
    case ed25519ExtendedCardano = 5
    case starkex = 6

    public var description: String {
        switch self {
        case .secp256k1: return "secp256k1"
        case .ed25519: return "ed25519"
        case .ed25519Blake2bNano: return "ed25519-blake2b-nano"
        case .curve25519: return "curve25519"
        case .nist256p1: return "nist256p1"
        case .ed25519ExtendedCardano: return "ed25519-cardano-seed"
        case .starkex: return "starkex"
        }
    }
}
