//
// NearestAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class NearestAPI {
    /**
     Nearest Service
     
     - parameter coordinates: (path) String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 
     - parameter generateHints: (query) Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String (optional)
     - parameter exclude: (query) Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. (optional)
     - parameter bearings: (query) Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 (optional)
     - parameter radiuses: (query) Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) (optional)
     - parameter approaches: (query) Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) (optional)
     - parameter number: (query) Number of nearest segments that should be returned. [ integer &gt;&#x3D; 1 (default 1) ] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func nearest(coordinates: String, generateHints: String? = nil, exclude: String? = nil, bearings: String? = nil, radiuses: String? = nil, approaches: String? = nil, number: Int? = nil, completion: @escaping ((_ data: DirectionsNearest?,_ error: Error?) -> Void)) {
        nearestWithRequestBuilder(coordinates: coordinates, generateHints: generateHints, exclude: exclude, bearings: bearings, radiuses: radiuses, approaches: approaches, number: number).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Nearest Service
     - GET /nearest/driving/{coordinates}
     - Snaps a coordinate to the street network and returns the nearest n matches. Where coordinates only supports a single {longitude},{latitude} entry.
     - API Key:
       - type: apiKey key (QUERY)
       - name: key
     - parameter coordinates: (path) String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 
     - parameter generateHints: (query) Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String (optional)
     - parameter exclude: (query) Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. (optional)
     - parameter bearings: (query) Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 (optional)
     - parameter radiuses: (query) Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) (optional)
     - parameter approaches: (query) Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) (optional)
     - parameter number: (query) Number of nearest segments that should be returned. [ integer &gt;&#x3D; 1 (default 1) ] (optional)
     - returns: RequestBuilder<DirectionsNearest> 
     */
    open class func nearestWithRequestBuilder(coordinates: String, generateHints: String? = nil, exclude: String? = nil, bearings: String? = nil, radiuses: String? = nil, approaches: String? = nil, number: Int? = nil) -> RequestBuilder<DirectionsNearest> {
        var path = "/nearest/driving/{coordinates}"
        let coordinatesPreEscape = "\(APIHelper.mapValueToPathItem(coordinates))"
        let coordinatesPostEscape = coordinatesPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{coordinates}", with: coordinatesPostEscape, options: .literal, range: nil)
        let URLString = LocationIQAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "generate_hints": generateHints?.encodeToJSON(), 
            "exclude": exclude?.encodeToJSON(), 
            "bearings": bearings?.encodeToJSON(), 
            "radiuses": radiuses?.encodeToJSON(), 
            "approaches": approaches?.encodeToJSON(), 
            "number": number?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<DirectionsNearest>.Type = LocationIQAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
