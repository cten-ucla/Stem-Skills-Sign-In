//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

/**
    Represents the response of a `Responder`.
*/
protocol Response {
    /// The form of the expected payload
    associatedtype Payload

    /**
        The content of the response that is sent from an `Interactor` to a
        `Presenter`.
    */
    var payload: Payload? { get }
}
