//
//  Constants.swift
//  Pixel City
//
//  Created by Raghav Vashisht on 29/08/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation

let API_KEY = "f75c7e60b85a1e544bd37e8549cf21e9"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DropablePin, numberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    return url
}

