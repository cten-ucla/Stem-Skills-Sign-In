//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

protocol Presenter: Responder {
    /// The form formatted response to send to the view
    associatedtype ViewModel

    /**
        The type of a callback passed from the view that respond with a
        `ViewModel`
    */
    typealias Callback = (ViewModel) -> Void

    /// A list of registered callbacks passed from the view
    var registered_callbacks: [Callback] { get set }

    /**
        Adds a callback to the list of registered callbacks
    */
    func add(callback: Callback) -> Void

    /// Converts a `Response` to a `ViewModel`
    func convert(_ response: _Response) -> ViewModel

    init()
}

extension Presenter {
    func respond_with(response: _Response) {
        let view_model = self.convert(response)
        for callback in self.registered_callbacks {
            callback(view_model)
        }
    }
}
