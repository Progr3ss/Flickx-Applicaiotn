//
//  HomeViewController.swift
//  Flickx
//
//  Created by martin chibwe on 8/30/16.
//  Copyright © 2016 Martin Chibwe. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

	@IBOutlet weak var collectionView: UICollectionView!
	var collectionViewLayout: CustomImageFlowLayout!
	var appDelegate: AppDelegate!
	

    override func viewDidLoad() {
        super.viewDidLoad()
		collectionViewLayout = CustomImageFlowLayout()
		collectionView.collectionViewLayout = collectionViewLayout
		collectionView.backgroundColor = UIColor.blackColor()


        // Do any additional setup after loading the view.
    }


}
extension HomeViewController: UICollectionViewDataSource{
	
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCellWithReuseIdentifier("AnnotatedPhtoCell", forIndexPath: indexPath)
		
		
		return cell
		
	}
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 12
	}
	
	
}
