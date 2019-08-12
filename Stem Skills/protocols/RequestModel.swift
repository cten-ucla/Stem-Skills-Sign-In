//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

/**
    Represents a processed request outputted by a `Controller`.
*/
protocol RequestModel {
    /// The form of the expected content
    associatedtype Content

    /**
        The content of the request that is sent from a `Controller` to an
        `Interactor`.
    */
    var content: Content? { get }
}
