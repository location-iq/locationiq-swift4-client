# AutocompleteAPI

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete**](AutocompleteAPI.md#autocomplete) | **GET** /autocomplete.php | 


# **autocomplete**
```swift
    open class func autocomplete(q: String, normalizecity: Normalizecity_autocomplete, limit: Int? = nil, viewbox: String? = nil, bounded: Bounded_autocomplete? = nil, countrycodes: String? = nil, acceptLanguage: String? = nil, tag: String? = nil, completion: @escaping (_ data: [Any]?, _ error: Error?) -> Void)
```



The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LocationIQ

let q = "q_example" // String | Address to geocode
let normalizecity = 987 // Int | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
let limit = 987 // Int | Limit the number of returned results. Default is 10. (optional) (default to 10)
let viewbox = "viewbox_example" // String | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box.  (optional)
let bounded = 987 // Int | Restrict the results to only items contained with the viewbox (optional)
let countrycodes = "countrycodes_example" // String | Limit search to a list of countries. (optional)
let acceptLanguage = "acceptLanguage_example" // String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)
let tag = "tag_example" // String | Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag=place:city, To restrict the results to all of OSM class place: tag=place (optional)

AutocompleteAPI.autocomplete(q: q, normalizecity: normalizecity, limit: limit, viewbox: viewbox, bounded: bounded, countrycodes: countrycodes, acceptLanguage: acceptLanguage, tag: tag) { (response, error) in
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
 **q** | **String** | Address to geocode | 
 **normalizecity** | **Int** | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **limit** | **Int** | Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **viewbox** | **String** | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **bounded** | **Int** | Restrict the results to only items contained with the viewbox | [optional] 
 **countrycodes** | **String** | Limit search to a list of countries. | [optional] 
 **acceptLanguage** | **String** | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **tag** | **String** | Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag&#x3D;place:city, To restrict the results to all of OSM class place: tag&#x3D;place | [optional] 

### Return type

**[Any]**

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

