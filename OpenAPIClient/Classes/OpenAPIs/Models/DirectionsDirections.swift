//
// DirectionsDirections.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct DirectionsDirections: Codable {

    public var code: String?
    public var waypoints: [Any]?
    public var routes: [DirectionsDirectionsRoutes]?

    public init(code: String?, waypoints: [Any]?, routes: [DirectionsDirectionsRoutes]?) {
        self.code = code
        self.waypoints = waypoints
        self.routes = routes
    }


}

