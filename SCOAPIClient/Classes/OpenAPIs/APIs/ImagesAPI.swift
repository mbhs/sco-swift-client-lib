//
// ImagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ImagesAPI {
    /**

     - parameter section: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter authors: (query)  (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func imagesList(section: String? = nil, tags: String? = nil, authors: String? = nil, limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = SCOAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ContentListResponse?,_ error: Error?) -> Void)) {
        imagesListWithRequestBuilder(section: section, tags: tags, authors: authors, limit: limit, offset: offset).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /images/
     - parameter section: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter authors: (query)  (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - returns: RequestBuilder<ContentListResponse> 
     */
    open class func imagesListWithRequestBuilder(section: String? = nil, tags: String? = nil, authors: String? = nil, limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<ContentListResponse> {
        let path = "/images/"
        let URLString = SCOAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "section": section?.encodeToJSON(), 
            "tags": tags?.encodeToJSON(), 
            "authors": authors?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ContentListResponse>.Type = SCOAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter id: (path) A unique integer value identifying this image. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func imagesRead(id: Int, apiResponseQueue: DispatchQueue = SCOAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        imagesReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /images/{id}/
     - parameter id: (path) A unique integer value identifying this image. 
     - returns: RequestBuilder<Any> 
     */
    open class func imagesReadWithRequestBuilder(id: Int) -> RequestBuilder<Any> {
        var path = "/images/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SCOAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = SCOAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
