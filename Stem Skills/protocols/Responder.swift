//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

/**
    Represents an object that can respond via a callback `respond_with`.
*/
protocol Responder: class {
    /// The form of the expected content
    associatedtype _Response: Response

    /// A callback function that takes a `Response`
    func respond_with(response: _Response) -> Void
}
