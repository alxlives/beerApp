//
//  HomeViewController+Extensions.swift
//  Autoparse
//
//  Created by Alexandre Abreu on 18/01/2020.
//

import UIKit
import Hero

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        guard let viewModel = self.viewModel else {
            return 0
        }
        
        return viewModel.list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        guard let viewModel = self.viewModel else {
             return UICollectionViewCell()
         }
        
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cell.setupCell(beer: viewModel.list[indexPath.row])
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
        
        guard let viewModel = self.viewModel else {
            return
        }
        
        guard let cell = collectionView.cellForItem(at: indexPath) as? ProductCollectionViewCell else {
            return
        }
        
        transitionImage = UIImageView()
        transitionImage?.contentMode = .scaleAspectFit
        transitionImage?.image = cell.imgView.image

        let attributes = self.collectionView.layoutAttributesForItem(at: indexPath)
        let cellRect = attributes!.frame
        let fixedFrame = self.collectionView.convert(cellRect, to: self.view)
        
        //Frame position = spacing + imageview origin + cell origin
        
        transitionImage?.frame = CGRect(x: 16 + cell.imgView.frame.origin.x + fixedFrame.origin.x,
                                        y: 8 + cell.imgView.frame.origin.y + fixedFrame.origin.y,
                                        width: cell.imgView.frame.size.width,
                                        height: cell.imgView.frame.size.height)
        
        
        self.view.addSubview(transitionImage!)
        
        transitionImage?.hero.id = "productAnimation"
        
        let selectedBeer = viewModel.list[indexPath.row]
        router?.routeToDetails(beer: selectedBeer)
    }
    
}
