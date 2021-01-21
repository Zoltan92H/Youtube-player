//
//  ViewController.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 21..
//

import UIKit

class ViewController: UIViewController {

	var model = Model()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		model.getVideos()
	}


}

