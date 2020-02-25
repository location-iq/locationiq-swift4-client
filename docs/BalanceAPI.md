# BalanceAPI

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BalanceAPI.md#balance) | **GET** /balance.php | 


# **balance**
```swift
    open class func balance(completion: @escaping (_ data: Balance?, _ error: Error?) -> Void)
```



The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LocationIQ


BalanceAPI.balance() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**Balance**](Balance.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

