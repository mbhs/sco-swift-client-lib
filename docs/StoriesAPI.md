# StoriesAPI

All URIs are relative to *https://silverchips.mbhs.edu/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storiesList**](StoriesAPI.md#storieslist) | **GET** /stories/ | 
[**storiesRead**](StoriesAPI.md#storiesread) | **GET** /stories/{id}/ | 


# **storiesList**
```swift
    open class func storiesList(section: String? = nil, tags: String? = nil, authors: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: InlineResponse200?, _ error: Error?) -> Void)
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

StoriesAPI.storiesList(section: section, tags: tags, authors: authors, limit: limit, offset: offset) { (response, error) in
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

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storiesRead**
```swift
    open class func storiesRead(id: Int, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SCOAPIClient

let id = 987 // Int | A unique integer value identifying this story.

StoriesAPI.storiesRead(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this story. | 

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

