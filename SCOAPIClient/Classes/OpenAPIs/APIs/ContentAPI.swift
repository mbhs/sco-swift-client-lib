//
// ContentAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ContentAPI {
    /**

     - parameter section: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter authors: (query)  (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func contentList(section: String? = nil, tags: String? = nil, authors: String? = nil, limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = SCOAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ContentListResponse?,_ error: Error?) -> Void)) {
        contentListWithRequestBuilder(section: section, tags: tags, authors: authors, limit: limit, offset: offset).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }
    
    open class func contentList(url: URL, completion: @escaping ((_ data: ContentListResponse?,_ error: Error?) -> Void)) {
        

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            SCOAPIClientAPI.apiResponseQueue.async {
                if error != nil {
                    completion(nil, error)
                }
            }
            
            guard let data = data else { completion(nil, NSError(domain: "unknown error", code: 500, userInfo: nil)) }
            
            do {
                let contentList = JSONDecoder().decode(ContentListResponse.self, from: data)
                SCOAPIClientAPI.apiResponseQueue.async {
                    completion(contentList, nil)
                }
            } catch {
                SCOAPIClientAPI.apiResponseQueue.async {
                    completion(nil, NSError(domain: "unknown error", code: 500, userInfo: nil))
                }
            }
        }

        task.resume()
    }

    /**
     - GET /content/
     - parameter section: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter authors: (query)  (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - returns: RequestBuilder<ContentListResponse> 
     */
    open class func contentListWithRequestBuilder(section: String? = nil, tags: String? = nil, authors: String? = nil, limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<ContentListResponse> {
        let path = "/content/"
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

     - parameter id: (path) A unique integer value identifying this content. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func contentRead(id: Int, apiResponseQueue: DispatchQueue = SCOAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        contentReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /content/{id}/
     - parameter id: (path) A unique integer value identifying this content. 
     - returns: RequestBuilder<Content>
     */
    open class func contentReadWithRequestBuilder(id: Int) -> RequestBuilder<Content> {
        var path = "/content/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SCOAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Content>.Type = SCOAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
