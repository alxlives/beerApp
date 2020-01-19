//
//  HomeViewController+Extensions.swift
//  Autoparse
//
//  Created by Alexandre Abreu on 18/01/2020.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.beerList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cell.setupCell(beer: self.beerList[indexPath.row])
        return cell
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
         let sectionInset = (collectionViewLayout as! UICollectionViewFlowLayout).sectionInset
         let referenceHeight: CGFloat = 300
         let referenceWidth = collectionView.safeAreaLayoutGuide.layoutFrame.width
             - sectionInset.left
             - sectionInset.right
             - collectionView.contentInset.left
             - collectionView.contentInset.right
         return CGSize(width: referenceWidth, height: referenceHeight)
     }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedBeer = beerList[indexPath.row]
        router?.routeToDetails(beer: selectedBeer)
        
    }
    
}
