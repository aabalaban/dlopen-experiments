//
//  LazyLoader.swift
//  HostApplication
//
//  Created by Alexander Balaban on 08/08/2019.
//  Copyright © 2019 All rights reserved.
//

import Foundation
import PrintableProtocolFramework

func loadFramework(name: String) {
    guard let path = Bundle.main.privateFrameworksPath else { return }
    let frameworkPath = "\(path)/\(name).framework/\(name)"

    guard let handle = dlopen(frameworkPath, RTLD_NOW) else { return }
    defer { dlclose(handle) }

    guard let symbol = dlsym(handle, "publicClasses") else { return }

    typealias PublicClassesFunc = @convention(c) () -> [NSObjectProtocol]
    let getClasses = unsafeBitCast(symbol, to: PublicClassesFunc.self)
    let classes = getClasses()
    classes.forEach { (cls) in
        let newSelector = Selector("new")
        let unmanaged = cls.perform(newSelector)
        let obj = unmanaged?.takeUnretainedValue()
        if let printer = obj as? Printable {
            printer.printSomething()
        }
        unmanaged?.release()
    }
}
