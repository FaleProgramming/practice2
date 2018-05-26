//
//  ViewController.swift
//  practice2
//
//  Created by 中原孟 on 2018/05/06.
//  Copyright © 2018年 HajimeNakahara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	//何行表示させるか
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	  return 10
	}
	
	//行に何を表示させるか
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")
		
		let myself = MySelf("えいじ", 20, 179)
		
		cell.textLabel?.text = myself.name
		cell.detailTextLabel?.text = "サブタイトルです"
		cell.imageView?.image = UIImage(named: "dog-01.png")
		return cell
	}
	
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
	
	
	@IBOutlet weak var myTableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		myTableView.delegate = self
		myTableView.dataSource = self
		
		
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@IBAction func tapButton(_ sender: Any) {
		//画面遷移処理
		let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
		self.navigationController?.pushViewController(vc, animated: true)
	}
	
	

}

