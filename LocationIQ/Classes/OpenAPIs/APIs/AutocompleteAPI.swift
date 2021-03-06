//
// AutocompleteAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class AutocompleteAPI {
    /**
     * enum for parameter normalizecity
     */
    public enum Normalizecity_autocomplete: Int {
        case _1 = 1
    }

    /**
     * enum for parameter bounded
     */
    public enum Bounded_autocomplete: Int {
        case _0 = 0
        case _1 = 1
    }

    /**

     - parameter q: (query) Address to geocode 
     - parameter normalizecity: (query) For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. 
     - parameter limit: (query) Limit the number of returned results. Default is 10. (optional, default to 10)
     - parameter viewbox: (query) The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  (optional)
     - parameter bounded: (query) Restrict the results to only items contained with the viewbox (optional)
     - parameter countrycodes: (query) Limit search to a list of countries. (optional)
     - parameter acceptLanguage: (query) Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native (optional)
     - parameter tag: (query) Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag&#x3D;place:city, To restrict the results to all of OSM class place: tag&#x3D;place (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func autocomplete(q: String, normalizecity: Normalizecity_autocomplete, limit: Int? = nil, viewbox: String? = nil, bounded: Bounded_autocomplete? = nil, countrycodes: String? = nil, acceptLanguage: String? = nil, tag: String? = nil, completion: @escaping ((_ data: [Any]?,_ error: Error?) -> Void)) {
        autocompleteWithRequestBuilder(q: q, normalizecity: normalizecity, limit: limit, viewbox: viewbox, bounded: bounded, countrycodes: countrycodes, acceptLanguage: acceptLanguage, tag: tag).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     - GET /autocomplete.php
     - The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.
     - API Key:
       - type: apiKey key (QUERY)
       - name: key
     - parameter q: (query) Address to geocode 
     - parameter normalizecity: (query) For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. 
     - parameter limit: (query) Limit the number of returned results. Default is 10. (optional, default to 10)
     - parameter viewbox: (query) The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  (optional)
     - parameter bounded: (query) Restrict the results to only items contained with the viewbox (optional)
     - parameter countrycodes: (query) Limit search to a list of countries. (optional)
     - parameter acceptLanguage: (query) Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native (optional)
     - parameter tag: (query) Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag&#x3D;place:city, To restrict the results to all of OSM class place: tag&#x3D;place (optional)
     - returns: RequestBuilder<[Any]> 
     */
    open class func autocompleteWithRequestBuilder(q: String, normalizecity: Normalizecity_autocomplete, limit: Int? = nil, viewbox: String? = nil, bounded: Bounded_autocomplete? = nil, countrycodes: String? = nil, acceptLanguage: String? = nil, tag: String? = nil) -> RequestBuilder<[Any]> {
        let path = "/autocomplete.php"
        let URLString = LocationIQAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q": q.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "viewbox": viewbox?.encodeToJSON(), 
            "bounded": bounded?.encodeToJSON(), 
            "countrycodes": countrycodes?.encodeToJSON(), 
            "normalizecity": normalizecity.encodeToJSON(), 
            "accept-language": acceptLanguage?.encodeToJSON(), 
            "tag": tag?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[Any]>.Type = LocationIQAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
