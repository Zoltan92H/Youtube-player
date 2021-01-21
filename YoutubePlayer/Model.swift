//
//  Model.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 21..
//

import Foundation

class Model {

	func getVideos() {
		//create a URL object
		let url = URL(string: Constants.API_URL)

		guard url != nil else {
			return
		}

		//get a URLSession object
		let session = URLSession.shared

		//get a data task from the URLSession object
		let dataTask = session.dataTask(with: url!) { (data, response, error) in
			if error != nil || data == nil {
				return
			}

		}

		//Kick off the task
		dataTask.resume()
	}

}
