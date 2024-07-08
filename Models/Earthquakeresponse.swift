//
//  Earthquakeresponse.swift
//  Earthquake_Monitoring
//
//  Created by Gracie on 03/07/2024.
//
//this is the structure of the Earthquake from the JSON API that will be decodable
import Foundation
import Foundation

struct EarthquakeResponse: Decodable {
    let features: [EarthquakeFeature]
}

struct EarthquakeFeature: Decodable {
    let id: String
    let properties: EarthquakeProperties
    let geometry: EarthquakeGeometry
}

struct EarthquakeProperties: Decodable {
    let mag: Double
    let place: String
    let time: TimeInterval
}

struct EarthquakeGeometry: Decodable {
    let coordinates: [Double]
}
