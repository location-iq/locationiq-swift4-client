//
// DirectionsNearestWaypoints.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct DirectionsNearestWaypoints: Codable {

    public var nodes: [Double]?
    public var distance: Double?
    public var location: [Double]?
    public var name: String?

    public init(nodes: [Double]?, distance: Double?, location: [Double]?, name: String?) {
        self.nodes = nodes
        self.distance = distance
        self.location = location
        self.name = name
    }


}

