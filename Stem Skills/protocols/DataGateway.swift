//
// Created by Cole Ten on 2019-08-11.
// Copyright (c) 2019 SMC_STEM. All rights reserved.
//

import Foundation

/**
    Represents an object capable of reading data.
*/
protocol DataGateway {
    /// The type of data to retrieve.
    associatedtype Data
    /**
        Retrieves data from a source. The source is specified by the
        implementer of `DataGateway`.
    */
    func read_data() -> Data
}
