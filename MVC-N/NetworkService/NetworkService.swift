//
//  NetworkService.swift
//  MVC-N
//
//  Created by Дмитрий Данилин on 06.11.2020.
//

import Foundation

class NetworkService {
    
    private init() {}
    
    static let shared = NetworkService()
    
    func getData(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
