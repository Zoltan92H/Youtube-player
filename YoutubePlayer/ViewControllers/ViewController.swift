//
//  ViewController.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 21..
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {



	@IBOutlet weak var tableView: UITableView!

	var model = Model()
	var videos = [Video]()

	override func viewDidLoad() {
		super.viewDidLoad()

		tableView.dataSource = self
		tableView.dataSource = self
		model.delegate = self
		model.getVideos()
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard tableView.indexPathForSelectedRow != nil else { return }

		let selectedVideo = videos[tableView.indexPathForSelectedRow!.row]

		let detailVC = segue.destination as! DetailViewController
		detailVC.video = selectedVideo

	}

	// MARK: - ModelDelegate methods

	func videosFetched(_ videos: [Video]) {
		self.videos = videos
		tableView.reloadData()
	}


	// MARK: - Tableview Methods

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return videos.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell

		let video = self.videos[indexPath.row]

		cell.setCell(video)

		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
	}

}

