# ReverseAPI

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](ReverseAPI.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
```swift
    open class func reverse(lat: Double, lon: Double, format: Format_reverse, normalizecity: Normalizecity_reverse, addressdetails: Addressdetails_reverse? = nil, acceptLanguage: String? = nil, namedetails: Namedetails_reverse? = nil, extratags: Extratags_reverse? = nil, statecode: Statecode_reverse? = nil, showdistance: Int? = nil, postaladdress: Int? = nil, completion: @escaping (_ data: Location?, _ error: Error?) -> Void)
```

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LocationIQ

let lat = 987 // Double | Latitude of the location to generate an address for.
let lon = 987 // Double | Longitude of the location to generate an address for.
let format = "format_example" // String | Format to geocode. Only JSON supported for SDKs
let normalizecity = 987 // Int | Normalizes village to city level data to city
let addressdetails = 987 // Int | Include a breakdown of the address into elements. Defaults to 1. (optional) (default to ._1)
let acceptLanguage = "acceptLanguage_example" // String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)
let namedetails = 987 // Int | Include a list of alternative names in the results. These may include language variants, references, operator and brand. (optional)
let extratags = 987 // Int | Include additional information in the result if available, e.g. wikipedia link, opening hours. (optional)
let statecode = 987 // Int | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 (optional)
let showdistance = 987 // Int | Returns the straight line distance (meters) between the input location and the result's location. Value is set in the distance key of the response. Defaults to 0 [0,1] (optional)
let postaladdress = 987 // Int | Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1] (optional)

// Reverse Geocoding
ReverseAPI.reverse(lat: lat, lon: lon, format: format, normalizecity: normalizecity, addressdetails: addressdetails, acceptLanguage: acceptLanguage, namedetails: namedetails, extratags: extratags, statecode: statecode, showdistance: showdistance, postaladdress: postaladdress) { (response, error) in
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
 **lat** | **Double** | Latitude of the location to generate an address for. | 
 **lon** | **Double** | Longitude of the location to generate an address for. | 
 **format** | **String** | Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **Int** | Normalizes village to city level data to city | 
 **addressdetails** | **Int** | Include a breakdown of the address into elements. Defaults to 1. | [optional] [default to ._1]
 **acceptLanguage** | **String** | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **namedetails** | **Int** | Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **extratags** | **Int** | Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 
 **statecode** | **Int** | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 | [optional] 
 **showdistance** | **Int** | Returns the straight line distance (meters) between the input location and the result&#39;s location. Value is set in the distance key of the response. Defaults to 0 [0,1] | [optional] 
 **postaladdress** | **Int** | Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1] | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

