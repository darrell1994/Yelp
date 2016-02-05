//
//  YelpCell.swift
//  Yelp
//
//  Created by Darrell Shi on 2/2/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class YelpCell: UITableViewCell {
    @IBOutlet weak var businessImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var numberOfReviewsLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            distanceLabel.text = business.distance
            addressLabel.text = business.address
            categoryLabel.text = business.categories
            if let reviewCount = business.reviewCount {
                numberOfReviewsLabel.text = "\(reviewCount) Reviews"
            }
            if let imageURL = business.imageURL {
                businessImageView.setImageWithURL(imageURL)
            }
            if let ratingImageURL = business.ratingImageURL {
                ratingImageView.setImageWithURL(ratingImageURL)
            }

            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        businessImageView.layer.cornerRadius = 5
        businessImageView.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
