# SearchAPI

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SearchAPI.md#search) | **GET** /search.php | Forward Geocoding


# **search**
```swift
    open class func search(q: String, format: Format_search, normalizecity: Normalizecity_search, addressdetails: Addressdetails_search? = nil, viewbox: String? = nil, bounded: Bounded_search? = nil, limit: Int? = nil, acceptLanguage: String? = nil, countrycodes: String? = nil, namedetails: Namedetails_search? = nil, dedupe: Dedupe_search? = nil, extratags: Extratags_search? = nil, statecode: Statecode_search? = nil, matchquality: Int? = nil, postaladdress: Int? = nil, completion: @escaping (_ data: [Location]?, _ error: Error?) -> Void)
```

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LocationIQ

let q = "q_example" // String | Address to geocode
let format = "format_example" // String | Format to geocode. Only JSON supported for SDKs
let normalizecity = 987 // Int | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
let addressdetails = 987 // Int | Include a breakdown of the address into elements. Defaults to 0. (optional)
let viewbox = "viewbox_example" // String | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box.  (optional)
let bounded = 987 // Int | Restrict the results to only items contained with the viewbox (optional)
let limit = 987 // Int | Limit the number of returned results. Default is 10. (optional) (default to 10)
let acceptLanguage = "acceptLanguage_example" // String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)
let countrycodes = "countrycodes_example" // String | Limit search to a list of countries. (optional)
let namedetails = 987 // Int | Include a list of alternative names in the results. These may include language variants, references, operator and brand. (optional)
let dedupe = 987 // Int | Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested. (optional)
let extratags = 987 // Int | Include additional information in the result if available, e.g. wikipedia link, opening hours. (optional)
let statecode = 987 // Int | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 (optional)
let matchquality = 987 // Int | Returns additional information about quality of the result in a matchquality object. Read more Defaults to 0 [0,1] (optional)
let postaladdress = 987 // Int | Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1] (optional)

// Forward Geocoding
SearchAPI.search(q: q, format: format, normalizecity: normalizecity, addressdetails: addressdetails, viewbox: viewbox, bounded: bounded, limit: limit, acceptLanguage: acceptLanguage, countrycodes: countrycodes, namedetails: namedetails, dedupe: dedupe, extratags: extratags, statecode: statecode, matchquality: matchquality, postaladdress: postaladdress) { (response, error) in
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
 **format** | **String** | Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **Int** | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **addressdetails** | **Int** | Include a breakdown of the address into elements. Defaults to 0. | [optional] 
 **viewbox** | **String** | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **bounded** | **Int** | Restrict the results to only items contained with the viewbox | [optional] 
 **limit** | **Int** | Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **acceptLanguage** | **String** | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **String** | Limit search to a list of countries. | [optional] 
 **namedetails** | **Int** | Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **dedupe** | **Int** | Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested. | [optional] 
 **extratags** | **Int** | Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 
 **statecode** | **Int** | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 | [optional] 
 **matchquality** | **Int** | Returns additional information about quality of the result in a matchquality object. Read more Defaults to 0 [0,1] | [optional] 
 **postaladdress** | **Int** | Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1] | [optional] 

### Return type

[**[Location]**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

