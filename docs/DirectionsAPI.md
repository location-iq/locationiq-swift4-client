# DirectionsAPI

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directions**](DirectionsAPI.md#directions) | **GET** /directions/driving/{coordinates} | Directions Service


# **directions**
```swift
    open class func directions(coordinates: String, bearings: String? = nil, radiuses: String? = nil, generateHints: String? = nil, approaches: String? = nil, exclude: String? = nil, alternatives: Double? = nil, steps: String? = nil, annotations: String? = nil, geometries: String? = nil, overview: String? = nil, continueStraight: String? = nil, completion: @escaping (_ data: DirectionsDirections?, _ error: Error?) -> Void)
```

Directions Service

Finds the fastest route between coordinates in the supplied order.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let coordinates = "coordinates_example" // String | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
let bearings = "bearings_example" // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 (optional)
let radiuses = "radiuses_example" // String | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default) (optional)
let generateHints = "generateHints_example" // String | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String (optional)
let approaches = "approaches_example" // String | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) (optional)
let exclude = "exclude_example" // String | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. (optional)
let alternatives = 987 // Double | Search for alternative routes. Passing a number alternatives=n searches for up to n alternative routes. [ true, false (default), or Number ] (optional)
let steps = "steps_example" // String | Returned route steps for each route leg [ true, false (default) ] (optional)
let annotations = "annotations_example" // String | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] (optional) (default to "\"false\"")
let geometries = "geometries_example" // String | Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ] (optional) (default to "\"polyline\"")
let overview = "overview_example" // String | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ] (optional) (default to "\"simplified\"")
let continueStraight = "continueStraight_example" // String | Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile [ default (default), true, false ] (optional) (default to "\"default\"")

// Directions Service
DirectionsAPI.directions(coordinates: coordinates, bearings: bearings, radiuses: radiuses, generateHints: generateHints, approaches: approaches, exclude: exclude, alternatives: alternatives, steps: steps, annotations: annotations, geometries: geometries, overview: overview, continueStraight: continueStraight) { (response, error) in
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
 **bearings** | **String** | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 | [optional] 
 **radiuses** | **String** | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) | [optional] 
 **generateHints** | **String** | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String | [optional] 
 **approaches** | **String** | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) | [optional] 
 **exclude** | **String** | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. | [optional] 
 **alternatives** | **Double** | Search for alternative routes. Passing a number alternatives&#x3D;n searches for up to n alternative routes. [ true, false (default), or Number ] | [optional] 
 **steps** | **String** | Returned route steps for each route leg [ true, false (default) ] | [optional] 
 **annotations** | **String** | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] | [optional] [default to &quot;\&quot;false\&quot;&quot;]
 **geometries** | **String** | Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ] | [optional] [default to &quot;\&quot;polyline\&quot;&quot;]
 **overview** | **String** | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ] | [optional] [default to &quot;\&quot;simplified\&quot;&quot;]
 **continueStraight** | **String** | Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile [ default (default), true, false ] | [optional] [default to &quot;\&quot;default\&quot;&quot;]

### Return type

[**DirectionsDirections**](DirectionsDirections.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

