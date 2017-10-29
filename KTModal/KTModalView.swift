//
//  KTModalView.swift
//  KTModal
//
//  Created by Kelvin Leung on 28/10/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

public class KTModalView: UIView {

    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headlineLabel: UILabel!
    @IBOutlet private weak var subheadLabel: UILabel!
    
    let nibName = "KTModalView"
    var contentView: UIView!
    var timer: Timer?
    
    // MARK: Set up view
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    public override func didMoveToSuperview() {
        timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(3), repeats: false) { timer in
            self.removeFromSuperview()
        }
    }
    
    public override func layoutSubviews() {
        layoutIfNeeded()
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(contentView)
        contentView.center = center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        headlineLabel.text = ""
        subheadLabel.text = ""
    }
    
    // MARK: Customize view
    public func set(image: UIImage) {
        statusImage.image = image
    }
    
    public func set(headline: String) {
        headlineLabel.text = headline
    }
    
    public func set(subhead: String) {
        subheadLabel.text = subhead
    }
    
}
