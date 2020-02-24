# MatrixAPI

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matrix**](MatrixAPI.md#matrix) | **GET** /matrix/driving/{coordinates} | Matrix Service


# **matrix**
```swift
    open class func matrix(coordinates: String, bearings: String? = nil, radiuses: String? = nil, generateHints: String? = nil, approaches: String? = nil, exclude: String? = nil, annotations: String? = nil, sources: Int? = nil, destinations: Int? = nil, fallbackSpeed: Double? = nil, fallbackCoordinate: String? = nil, completion: @escaping (_ data: DirectionsMatrix?, _ error: Error?) -> Void)
```

Matrix Service

Computes duration of the fastest route between all pairs of supplied coordinates. Returns the durations or distances or both between the coordinate pairs. Note that the distances are not the shortest distance between two coordinates, but rather the distances of the fastest routes.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LocationIQ

let coordinates = "coordinates_example" // String | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
let bearings = "bearings_example" // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 (optional)
let radiuses = "radiuses_example" // String | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default) (optional)
let generateHints = "generateHints_example" // String | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String (optional)
let approaches = "approaches_example" // String | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) (optional)
let exclude = "exclude_example" // String | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. (optional)
let annotations = "annotations_example" // String | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] (optional)
let sources = 987 // Int | Use location with given index as source. [ {index};{index}[;{index} ...] or all (default) ] => index  0 <= integer < #locations (optional)
let destinations = 987 // Int | Use location with given index as destination. [ {index};{index}[;{index} ...] or all (default) ] (optional)
let fallbackSpeed = 987 // Double | If no route found between a source/destination pair, calculate the as-the-crow-flies distance,  then use this speed to estimate duration. double > 0 (optional)
let fallbackCoordinate = "fallbackCoordinate_example" // String | When using a fallback_speed, use the user-supplied coordinate (input), or the snapped location (snapped) for calculating distances. [ input (default), or snapped ] (optional) (default to "\"input\"")

// Matrix Service
MatrixAPI.matrix(coordinates: coordinates, bearings: bearings, radiuses: radiuses, generateHints: generateHints, approaches: approaches, exclude: exclude, annotations: annotations, sources: sources, destinations: destinations, fallbackSpeed: fallbackSpeed, fallbackCoordinate: fallbackCoordinate) { (response, error) in
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
 **annotations** | **String** | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] | [optional] 
 **sources** | **Int** | Use location with given index as source. [ {index};{index}[;{index} ...] or all (default) ] &#x3D;&gt; index  0 &lt;&#x3D; integer &lt; #locations | [optional] 
 **destinations** | **Int** | Use location with given index as destination. [ {index};{index}[;{index} ...] or all (default) ] | [optional] 
 **fallbackSpeed** | **Double** | If no route found between a source/destination pair, calculate the as-the-crow-flies distance,  then use this speed to estimate duration. double &gt; 0 | [optional] 
 **fallbackCoordinate** | **String** | When using a fallback_speed, use the user-supplied coordinate (input), or the snapped location (snapped) for calculating distances. [ input (default), or snapped ] | [optional] [default to &quot;\&quot;input\&quot;&quot;]

### Return type

[**DirectionsMatrix**](DirectionsMatrix.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

