//
//  PrintableProtocol.swift
//  PrintableProtocolFramework
//
//  Created by Alexander Balaban on 08/08/2019.
//  Copyright © 2019 All rights reserved.
//

@objc(PrintableProtocol)
public protocol Printable: NSObjectProtocol {
    @objc
    func printSomething()
}
