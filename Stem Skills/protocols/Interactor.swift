//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

/**
    Represents the proper location of all business logic/rules.
*/
protocol Interactor: Receiver {
    /// The type of the expected `DataGateway`
    associatedtype _DataGateway: DataGateway

    /// The type of the expected `Responder`
    associatedtype _Responder: Responder

    /// The source of any data that is needed to complete business logic
    var data_gateway: _DataGateway { get }

    /// Responds with the results of business logic to the view.
    var responder: _Responder { get }

    init(data_gateway: _DataGateway, responder: _Responder)
}
