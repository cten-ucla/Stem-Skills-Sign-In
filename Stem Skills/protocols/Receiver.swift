//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

/**
    Represents an object that can receive requests via a method `receive`.
*/
protocol Receiver: class {
    /// A request processed by a `Controller`
    associatedtype _RequestModel: RequestModel

    /// A callback function that receives a `RequestModel`
    func receive(request: _RequestModel) -> Void
}
