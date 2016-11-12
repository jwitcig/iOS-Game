//
//  Layout.swift
//  SwiftTools
//
//  Created by Jonah Witcig on 11/10/16.
//  Copyright © 2016 JwitApps. All rights reserved.
//

public protocol ViewAttachable {
    func display(view: UIView)
}

public protocol Inset {
    var left: Int { get }
    var right: Int { get }
    var top: Int { get }
    var bottom: Int { get }
}

public struct Padding: Inset {
    public let left: Int
    public let right: Int
    public let top: Int
    public let bottom: Int
    
    public init(left: Int=0, right: Int=0, top: Int=0, bottom: Int=0) {
        self.left = left
        self.right = right
        self.top = top
        self.bottom = bottom
    }
}
