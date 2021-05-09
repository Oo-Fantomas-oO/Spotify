//
//  AuthManager.swift
//  Spotify
//
//  Created by Onopriienko.Sergii on 04.05.2021.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "c32f91463de44a03891a48a4afef407d"
        static let clientSecret = "c97c44c8d2c1422cb35d8c021401c3e5"
    }
    
    private init () {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURL = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURL)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignetIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, complition: @escaping ((Bool) -> Void)) {
        // Get token
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
