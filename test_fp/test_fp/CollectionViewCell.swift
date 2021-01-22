//
//  CollectionViewCell.swift
//  test_fp
//
//  Created by coper on 2021/01/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var texiView: UITextView!
    
    @IBOutlet weak var widthConstraints: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setCellWidth(UIScreen.main.bounds.width)
        texiView.isScrollEnabled = false
        texiView.isEditable = false
        texiView.isSelectable = true
        texiView.isUserInteractionEnabled = true
        texiView.dataDetectorTypes = .link
    }
    
    func setCellWidth(_ width: CGFloat) {
        widthConstraints?.constant = width
    }

}
