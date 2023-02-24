//
//  ThirdPage_ViewController.swift
//  New_Project
//
//  Created by Rifluxyss on 24/02/23.
//

import UIKit

class ThirdPage_ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyCollectionView.dataSource = self
        MyCollectionView.delegate = self
        //MyCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionView_Cell", for: indexPath)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (MyCollectionView.frame.height)/3
        return CGSize(width: size, height: size)
    }
}
