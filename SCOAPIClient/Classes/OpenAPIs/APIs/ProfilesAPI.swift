//
// ProfilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ProfilesAPI {
    /**

     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func profilesList(limit: Int? = nil, offset: Int? = nil, apiResponseQueue: DispatchQueue = SCOAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProfileListResponse?,_ error: Error?) -> Void)) {
        profilesListWithRequestBuilder(limit: limit, offset: offset).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /profiles/
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - returns: RequestBuilder<ProfileListResponse> 
     */
    open class func profilesListWithRequestBuilder(limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<ProfileListResponse> {
        let path = "/profiles/"
        let URLString = SCOAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ProfileListResponse>.Type = SCOAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter id: (path) A unique integer value identifying this profile. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func profilesRead(id: Int, apiResponseQueue: DispatchQueue = SCOAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Profile?,_ error: Error?) -> Void)) {
        profilesReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /profiles/{id}/
     - parameter id: (path) A unique integer value identifying this profile. 
     - returns: RequestBuilder<Profile> 
     */
    open class func profilesReadWithRequestBuilder(id: Int) -> RequestBuilder<Profile> {
        var path = "/profiles/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SCOAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Profile>.Type = SCOAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
