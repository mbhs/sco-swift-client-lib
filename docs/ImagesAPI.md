# ImagesAPI

All URIs are relative to *https://silverchips.mbhs.edu/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imagesList**](ImagesAPI.md#imageslist) | **GET** /images/ | 
[**imagesRead**](ImagesAPI.md#imagesread) | **GET** /images/{id}/ | 


# **imagesList**
```swift
    open class func imagesList(section: String? = nil, tags: String? = nil, authors: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: ContentListResponse?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SCOAPIClient

let section = "section_example" // String |  (optional)
let tags = "tags_example" // String |  (optional)
let authors = "authors_example" // String |  (optional)
let limit = 987 // Int | Number of results to return per page. (optional)
let offset = 987 // Int | The initial index from which to return the results. (optional)

ImagesAPI.imagesList(section: section, tags: tags, authors: authors, limit: limit, offset: offset) { (response, error) in
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
 **section** | **String** |  | [optional] 
 **tags** | **String** |  | [optional] 
 **authors** | **String** |  | [optional] 
 **limit** | **Int** | Number of results to return per page. | [optional] 
 **offset** | **Int** | The initial index from which to return the results. | [optional] 

### Return type

[**ContentListResponse**](ContentListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesRead**
```swift
    open class func imagesRead(id: Int, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SCOAPIClient

let id = 987 // Int | A unique integer value identifying this image.

ImagesAPI.imagesRead(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this image. | 

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

