# MatchingAPI

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matching**](MatchingAPI.md#matching) | **GET** /matching/driving/{coordinates} | Matching Service


# **matching**
```swift
    open class func matching(coordinates: String, generateHints: String? = nil, approaches: String? = nil, exclude: String? = nil, bearings: String? = nil, radiuses: String? = nil, steps: String? = nil, annotations: String? = nil, geometries: String? = nil, overview: String? = nil, timestamps: String? = nil, gaps: String? = nil, tidy: String? = nil, waypoints: String? = nil, completion: @escaping (_ data: DirectionsMatching?, _ error: Error?) -> Void)
```

Matching Service

Matching API matches or snaps given GPS points to the road network in the most plausible way.  Please note the request might result multiple sub-traces.  Large jumps in the timestamps (> 60s) or improbable transitions lead to trace splits if a complete matching could not be found. The algorithm might not be able to match all points. Outliers are removed if they can not be matched successfully.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LocationIQ

let coordinates = "coordinates_example" // String | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
let generateHints = "generateHints_example" // String | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String (optional)
let approaches = "approaches_example" // String | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) (optional)
let exclude = "exclude_example" // String | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. (optional)
let bearings = "bearings_example" // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 (optional)
let radiuses = "radiuses_example" // String | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default) (optional)
let steps = "steps_example" // String | Returned route steps for each route leg [ true, false (default) ] (optional)
let annotations = "annotations_example" // String | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] (optional) (default to "\"false\"")
let geometries = "geometries_example" // String | Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ] (optional) (default to "\"polyline\"")
let overview = "overview_example" // String | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ] (optional) (default to "\"simplified\"")
let timestamps = "timestamps_example" // String | Timestamps for the input locations in seconds since UNIX epoch. Timestamps need to be monotonically increasing. [ {timestamp};{timestamp}[;{timestamp} ...]  integer seconds since UNIX epoch (optional)
let gaps = "gaps_example" // String | Allows the input track splitting based on huge timestamp gaps between points. [ split (default), ignore ] (optional) (default to "\"split\"")
let tidy = "tidy_example" // String | Allows the input track modification to obtain better matching quality for noisy tracks. [ true, false (default) ] (optional) (default to "\"false\"")
let waypoints = "waypoints_example" // String | Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints. [ {index};{index};{index}... ] (optional)

// Matching Service
MatchingAPI.matching(coordinates: coordinates, generateHints: generateHints, approaches: approaches, exclude: exclude, bearings: bearings, radiuses: radiuses, steps: steps, annotations: annotations, geometries: geometries, overview: overview, timestamps: timestamps, gaps: gaps, tidy: tidy, waypoints: waypoints) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coordinates** | **String** | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 | 
 **generateHints** | **String** | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String | [optional] 
 **approaches** | **String** | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) | [optional] 
 **exclude** | **String** | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. | [optional] 
 **bearings** | **String** | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 | [optional] 
 **radiuses** | **String** | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) | [optional] 
 **steps** | **String** | Returned route steps for each route leg [ true, false (default) ] | [optional] 
 **annotations** | **String** | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] | [optional] [default to &quot;\&quot;false\&quot;&quot;]
 **geometries** | **String** | Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ] | [optional] [default to &quot;\&quot;polyline\&quot;&quot;]
 **overview** | **String** | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ] | [optional] [default to &quot;\&quot;simplified\&quot;&quot;]
 **timestamps** | **String** | Timestamps for the input locations in seconds since UNIX epoch. Timestamps need to be monotonically increasing. [ {timestamp};{timestamp}[;{timestamp} ...]  integer seconds since UNIX epoch | [optional] 
 **gaps** | **String** | Allows the input track splitting based on huge timestamp gaps between points. [ split (default), ignore ] | [optional] [default to &quot;\&quot;split\&quot;&quot;]
 **tidy** | **String** | Allows the input track modification to obtain better matching quality for noisy tracks. [ true, false (default) ] | [optional] [default to &quot;\&quot;false\&quot;&quot;]
 **waypoints** | **String** | Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints. [ {index};{index};{index}... ] | [optional] 

### Return type

[**DirectionsMatching**](DirectionsMatching.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

