//
//  Model.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 21..
//

import Foundation

protocol ModelDelegate {
	func videosFetched(_ videos:[Video])
}

class Model {

	var delegate: ModelDelegate?

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

			do {

				let decoder = JSONDecoder()
				decoder.dateDecodingStrategy = .iso8601

				let response = try decoder.decode(Response.self, from: data!)

				if response.items?.first != nil {

					DispatchQueue.main.async {
						self.delegate?.videosFetched(response.items!)
					}


				}


				dump(response)
			}
			catch {

			}



		}

		//Kick off the task
		dataTask.resume()
	}

}
