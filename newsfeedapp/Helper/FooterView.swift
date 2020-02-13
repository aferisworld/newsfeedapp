//
//  FooterView.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/12/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import UIKit

class FooterView: UIView {
    
    // var footerViewActionsDelegate: FooterViewDelegate?
    
    var discussIcon = UIButton()
    var discussLabel = UIButton()
    var highlightLabel = UIButton()
    var discussButton = UIButton()
    private var highlightIconButton = DOFavoriteButton()
    
    private var shareIcon = UIButton()
    private var shareLabel = UIButton()
    
    private var mainFooterView = UIView()
    private var miniFooterView = UIView()
    private var lineDivider = UIView()
    
    let normalImage = UIImage(named: "star-outline")
    let selectedImage = UIImage(named: "footer_star_filled")
    let commentImage = UIImage(named: "comment")
    
    //var comments: Int?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    func setupView(){
        // Set up the highlight icon
        self.initializeHighlightIcon()
        
        // Set up the comment icon
        self.initializeCommentIcon()
        
        // Set up the share icon
        self.initializeShareIcon()
        
        self.addSubviewToMainFooterView()
        
        //add subviews to the main view
        self.addSubview(lineDivider)
        self.addSubview(mainFooterView)
        
        // Apply constraints after initializing the views
        self.setupConstraints()
    }
    
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
            self.lineDivider.topAnchor.constraint(equalTo: self.topAnchor),
            self.lineDivider.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.lineDivider.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.lineDivider.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        NSLayoutConstraint.activate([
            self.mainFooterView.topAnchor.constraint(equalTo: self.lineDivider.bottomAnchor),
            self.mainFooterView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.mainFooterView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.mainFooterView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        NSLayoutConstraint.activate([
            self.highlightIconButton.leadingAnchor.constraint(equalTo: self.mainFooterView.leadingAnchor, constant: 16),
            self.highlightIconButton.topAnchor.constraint(equalTo: self.mainFooterView.topAnchor, constant: 12),
            self.highlightIconButton.widthAnchor.constraint(equalToConstant: 16),
            self.highlightIconButton.heightAnchor.constraint(equalToConstant: 16)
            ])
        
        NSLayoutConstraint.activate([
            self.highlightLabel.leadingAnchor.constraint(equalTo: self.highlightIconButton.trailingAnchor, constant: 4),
            self.highlightLabel.topAnchor.constraint(equalTo: self.mainFooterView.topAnchor),
            self.highlightLabel.bottomAnchor.constraint(equalTo: self.mainFooterView.bottomAnchor),
            self.highlightLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 120)
            ])
        //discuss icon button constraint
        NSLayoutConstraint.activate([
            //self.discussIcon.leadingAnchor.constraint(equalTo: self.highlightLabel.trailingAnchor, constant: 50),
            self.discussIcon.topAnchor.constraint(equalTo: self.mainFooterView.topAnchor, constant: 14),
            self.discussIcon.heightAnchor.constraint(equalToConstant: 14),
            self.discussIcon.widthAnchor.constraint(equalToConstant: 14)
            ])
        
        //discuss label constraint
        NSLayoutConstraint.activate([
            self.discussLabel.topAnchor.constraint(equalTo: self.mainFooterView.topAnchor),
            self.discussLabel.bottomAnchor.constraint(equalTo: self.mainFooterView.bottomAnchor),
            self.discussLabel.widthAnchor.constraint(equalToConstant: 70),
            self.discussLabel.centerXAnchor.constraint(equalTo: self.mainFooterView.centerXAnchor, constant: 28),
            self.discussIcon.centerXAnchor.constraint(equalTo: self.discussLabel.centerXAnchor, constant: -48)
            ])
        
        //self.discussLabel.backgroundColor = UIColor.cyan
        
        //share label constraint
        NSLayoutConstraint.activate([
            self.shareLabel.trailingAnchor.constraint(equalTo: self.mainFooterView.trailingAnchor, constant: -16),
            self.shareLabel.topAnchor.constraint(equalTo: self.mainFooterView.topAnchor),
            self.shareLabel.bottomAnchor.constraint(equalTo: self.mainFooterView.bottomAnchor),
            self.shareLabel.widthAnchor.constraint(equalToConstant: 40)
            ])
        
        //share icon button constraint Width = 40, spacing between icon and label is 4
        let iconTrailingConstant: CGFloat = 40
        
        NSLayoutConstraint.activate([
            self.shareIcon.trailingAnchor.constraint(equalTo: self.shareLabel.trailingAnchor, constant: -iconTrailingConstant),
            self.shareIcon.topAnchor.constraint(equalTo: self.mainFooterView.topAnchor, constant: 14),
            self.shareIcon.heightAnchor.constraint(equalToConstant: 14),
            self.shareIcon.widthAnchor.constraint(equalToConstant: 14)
            ])
    }
    
    
    fileprivate func initializeHighlightIcon() {
        self.highlightIconButton.setImage(normalImage, for: UIControl.State.normal)
        self.highlightIconButton.setImage(selectedImage, for: UIControl.State.selected)
        self.highlightIconButton.imageColorOff =  Helper.charcoalGrey()
        self.highlightIconButton.imageColorOn = Helper.charcoalGrey()
        self.highlightIconButton.circleColor = Helper.charcoalGrey()
        self.highlightIconButton.lineColor = Helper.charcoalGrey()
        self.highlightIconButton.duration = 1.0
        // self.highlightIconButton.addTarget(self, action: #selector(FooterView.handleHighlightLabelTapped), for: .touchUpInside)
        
        //Highlight Label button properties
        self.highlightLabel.contentHorizontalAlignment = .left
        self.highlightLabel.contentVerticalAlignment = .center
        self.highlightLabel.setTitleColor(Helper.generalColor(), for: .normal)
        self.highlightLabel.titleLabel?.font = Helper.caption1()
        self.highlightLabel.setTitle("Highlight", for: UIControl.State.normal)
        // self.highlightLabel.addTarget(self, action: #selector(FooterView.handleHighlightLabelTapped), for: .touchUpInside)
        
        self.highlightIconButton.translatesAutoresizingMaskIntoConstraints = false
        self.highlightLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    fileprivate func initializeCommentIcon() {
        //Discuss Icon properties
        self.discussIcon.setImage(commentImage, for: UIControl.State.normal)
        self.discussIcon.setImage(commentImage, for: UIControl.State.selected)
        
        // self.discussIcon.addTarget(self, action: #selector(OIFooterView.commentTapped), for: .touchUpInside)
        
        //Discuss label button properties
        self.discussLabel.contentHorizontalAlignment = .left
        self.discussLabel.contentVerticalAlignment = .center
        self.discussLabel.setTitleColor(Helper.generalColor(), for: .normal)
        self.discussLabel.titleLabel?.font = Helper.caption1()
        self.discussLabel.setTitle("Comment", for: UIControl.State.normal)
       //  self.discussLabel.addTarget(self, action: #selector(OIFooterView.commentTapped), for: .touchUpInside)
        
        self.discussIcon.translatesAutoresizingMaskIntoConstraints = false
        self.discussLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    fileprivate func initializeShareIcon() {
        // Share Icon properties
        let shareImage = UIImage(named: "share-white")?.withRenderingMode(.alwaysTemplate)
        self.shareIcon.setImage(shareImage, for: UIControl.State.normal)
        self.shareIcon.setImage(shareImage, for: UIControl.State.selected)
        self.shareIcon.tintColor = UIColor.darkGray
        // self.shareIcon.addTarget(self, action: #selector(OIFooterView.showShareActivities), for: .touchUpInside)
        
        
        // Share Label Properties
        self.shareLabel.contentHorizontalAlignment = .trailing
        self.shareLabel.contentVerticalAlignment = .center
        self.shareLabel.setTitleColor(Helper.generalColor(), for: .normal)
        self.shareLabel.titleLabel?.font = Helper.caption1()
        self.shareLabel.setTitle("Share", for: UIControl.State.normal)
        // self.shareLabel.addTarget(self, action: #selector(OIFooterView.showShareActivities), for: .touchUpInside)
        
        self.shareIcon.translatesAutoresizingMaskIntoConstraints = false
        self.shareLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    fileprivate func addSubviewToMainFooterView() {
        self.mainFooterView.addSubview(highlightIconButton)
        self.mainFooterView.addSubview(highlightLabel)
        self.mainFooterView.addSubview(discussLabel)
        
        self.mainFooterView.addSubview(discussIcon)
        self.mainFooterView.addSubview(shareIcon)
        self.mainFooterView.addSubview(shareLabel)
        
        //set auto resizing mask into constrainst on all our subviews
        self.mainFooterView.translatesAutoresizingMaskIntoConstraints = false
        
        lineDivider.backgroundColor = Helper.black10()
        self.lineDivider.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    
    
//    @objc func showShareActivities() {
//        self.footerViewActionsDelegate?.shareIconTapped(sender: self)
//    }
    
    
    
    
//    @objc func handleHighlightLabelTapped(){
//        self.footerViewActionsDelegate?.highlightIconTapped(sender: self)
//    }
    
    func setHighlightButtonState(selected: Bool){
        (selected == true) ? showFilledStar() : showEmptyStar()
    }
    
    
    
    
    /*func addTapRecognizerForHighlight(view: UIView) {
     let singleTap = UITapGestureRecognizer(target: self, action: #selector(OIFooterView.showShareActivities))
     singleTap.numberOfTapsRequired = 1
     view.addGestureRecognizer(singleTap)
     
     }*/
    
    
    // MARK: Send notification for discuss view
//    @objc func commentTapped(sender: UIButton) {
//        self.footerViewActionsDelegate?.discussLabelTapped(sender: self)
//    }
    
    
    func setCommentLabel(numberOfComments:Int){
        //self.comments = numberOfComments
        
        if numberOfComments > 0 {
            self.discussLabel.setTitle("\(numberOfComments)", for: .normal)
        }else {
            self.discussLabel.setTitle("Comment", for: UIControl.State.normal)
        }
    }
    
    func setHighlightLabel(numberOfHighlights:Int){
        
        if numberOfHighlights > 0 {
            self.highlightLabel.setTitle("\(numberOfHighlights)", for: .normal)
            //self.miniComment.text = "\(numberOfComments) Comments"
        }else {
            self.highlightLabel.setTitle("Highlight", for: UIControl.State.normal)
        }
        
    }
    
    
    func showEmptyStar(){
        self.highlightIconButton.isSelected = false
        self.highlightIconButton.setImage(normalImage, for: UIControl.State.normal)
    }
    
    func showFilledStar(){
        highlightIconButton.isSelected = true
        self.highlightIconButton.setImage(selectedImage, for: UIControl.State.selected)
    }
    
    func highlightIconCurrentState() -> Bool {
        return self.highlightIconButton.isSelected
    }
    
    /*func hideShareIcon() {
     self.shareIcon.isHidden = true
     self.shareLabel.isHidden = true
     }*/
    
    
    deinit {
        //debugPrint("OIFooterView deinit called")
    }
}
