//
//  NonRandomClass.swift
//  LazyDynamicLoadableFramework
//
//  Created by Alexander Balaban on 08/08/2019.
//  Copyright © 2019 All rights reserved.
//

import PrintableProtocolFramework

public class NonRandomClass: NSObject, Printable {
    public func printSomething() {
        print("I'm from NonRandomFramework")
    }
}

@_cdecl("publicClasses")
public func publicClasses() -> [AnyObject] {
    return [NonRandomClass.self]
}
