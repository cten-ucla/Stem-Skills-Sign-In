//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

/**
    Represents an adapter from the view to a `Receiver`.
*/
protocol Controller: class {
    /// The type of the expected `Receiver`
    associatedtype _Receiver: Receiver

    /// The form of the expected request
    associatedtype Request

    /// Receives processed requests from the view.
    var receiver: _Receiver { get }

    /// Converts an `Request` to a `RequestModel`
    func convert(_ request: Request) -> _Receiver._RequestModel

    init(receiver: _Receiver)
}

extension Controller {
    func send(request: Request) -> Void {
        self.receiver.receive(request: self.convert(request));
    }
}
