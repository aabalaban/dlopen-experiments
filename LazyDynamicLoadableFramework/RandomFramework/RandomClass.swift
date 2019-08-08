//
//  RandomClass.swift
//  LazyDynamicLoadableFramework
//
//  Created by Alexander Balaban on 08/08/2019.
//  Copyright © 2019 All rights reserved.
//

import PrintableProtocolFramework
import PseudoDependencyFramework

public class RandomClass: NSObject, Printable {
    let duck = Duck()

    public func printSomething() {
        print("I'm from RandomFramework")
        self.duck.quack()
    }
}

@_cdecl("publicClasses")
public func publicClasses() -> [AnyObject] {
    return [RandomClass.self]
}
