//
//  Constants.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 21..
//

import Foundation

struct Constants {
	static var API_KEY = "AIzaSyDkvWouuhfSleOI6tLF24CSnVUB7mWe0q8"
	static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
	static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
	static var VIDEOCELL_ID = "VideoCell"
}
