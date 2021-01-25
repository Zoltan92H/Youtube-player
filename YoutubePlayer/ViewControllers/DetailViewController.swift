//
//  DetailViewController.swift
//  YoutubePlayer
//
//  Created by Hidegkuti Zoltán on 2021. 01. 25..
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

	@IBOutlet weak var dateLabel: UILabel!
	@IBOutlet weak var textView: UITextView!

	@IBOutlet weak var webView: WKWebView!

	@IBOutlet weak var titleLabel: UILabel!


	var video:Video?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	override func viewWillAppear(_ animated: Bool) {


		titleLabel.text = ""
		dateLabel.text = ""
		textView.text = ""

		guard video != nil else { return }

		let embedUrlString = Constants.YT_EMBED_URL + video!.videoID

		let url = URL(string: embedUrlString)
		let request = URLRequest(url: url!)
		webView.load(request)

		titleLabel.text = video!.title


		let df = DateFormatter()
		df.dateFormat = "EEEE, MMM d, yyyy"
		dateLabel.text = df.string(from: video!.published)
		textView.text = video?.description

	}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
