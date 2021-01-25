//
//  CacheManager.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 25..
//

import Foundation

class CacheManager {

	static var cache = [String:Data]()

	static func setVideoCache(_ url: String, _ data:Data?) {
		cache[url] = data
	}

	static func getVideoCache(_ url:String) -> Data? {
		return cache[url]
	}
}
