//
//  Constants.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 21..
//

import Foundation

struct Constants {
	static var API_KEY = "AIzaSyBkN8bmZXvRo1GoLLKgKbe_YnR2Z8sDSv0"
	static var PLAYLIST_ID = "PL5WoAmqn7WPaPVo5Vv_MP-p_oWHe5QgSg"
	static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
