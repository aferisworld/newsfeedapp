//
//  Helper.swift
//  newsfeedapp
//
//  Created by Nana Aferi on 2/12/20.
//  Copyright © 2020 Nana Aferi. All rights reserved.
//

import UIKit

class Helper {
    
    //MARK: New UI FONTS GUIDELINES
    static func title1()-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: 32.0)
    }
    
    static func title2()-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: 18.0)
    }
    
    static func title3()-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 17.0)
    }
    
    
    static func headline()-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 18.0)
    }
    
    static func bodyFont()-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 14.0)
    }
    
    static func action()-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: 14.0)
    }
    
    static func subhead()-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: 14.0)
        //return UIFont.systemFont(ofSize: 14.0, weight: .medium)
    }
    
    static func footnote()-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: 14.0)
        //return UIFont.systemFont(ofSize: 14.0, weight: .medium)
    }
    
    static func caption1()-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 14.0)
        //return UIFont.systemFont(ofSize: 14, weight: .regular)
    }
    
    static func caption2()-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 12.0)
        //return UIFont.systemFont(ofSize: 12, weight: .regular)
    }
    
    static func getBookWeightFont(fontSize: CGFloat)-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: fontSize)
        //return UIFont.systemFont(ofSize: fontSize, weight: .regular)
    }
    
    static func getMediumWeightFont(fontSize: CGFloat)-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: fontSize)
        //return UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }
    
    
    //MARK: New UI Color Guidelines
    
    
    static func pdBackground() -> UIColor{
        return UIColor(red: 245.0 / 255.0, green: 245.0 / 255.0, blue: 245.0 / 255.0, alpha: 1.0)
    }
    
    // ALL Screens background should cell background color HEX => #DDDDDD
    static func cellBackground() -> UIColor{
        return UIColor(red: 221.0 / 255.0, green: 221.0 / 255.0, blue: 221.0 / 255.0, alpha: 1.0)
    }
    
    // Background color for the news image
    static func newsMessageBgColor() -> UIColor {
        return UIColor(red: 240.0 / 255.0, green: 240.0 / 255.0, blue: 240.0 / 255.0, alpha: 1.0)
    }
    
    // ALL Content and sections dividers, lines should use this colors
    static func black10()-> UIColor{
        return UIColor(red:0.78, green:0.78, blue:0.80, alpha:1.0)
    }
    
    // ALL Footnote, comments and captions should use the steel color HEX => #8A8A8F
    static func steel()-> UIColor {
        return UIColor(red: 138.0 / 255.0, green: 138.0 / 255.0, blue: 143.0 / 255.0, alpha: 1.0)
    }
    
    // OI red
    static func oiRed() -> UIColor {
        return UIColor(red:1.00, green:0.29, blue:0.29, alpha:1.0)
    }
    
    // ALL Headlines, body, subheads should use the brownish gray color HEX => #232323
    static func generalColor()-> UIColor {
        return UIColor(white: 35.0 / 255.0, alpha: 1.0)
    }
    
    //ALL overlays popups
    static func black54()-> UIColor {
        return UIColor.black.withAlphaComponent(0.54)
    }
    
    //Link/URL colors used on comments
    static func linkColor()-> UIColor{
        return UIColor(red: 59.0 / 255.0, green: 89.0 / 255.0, blue: 152.0 / 255.0, alpha: 1.0)
    }
    
    //positive Star color
    static func positiveStarColor() -> UIColor {
        return UIColor(red: 164.0 / 255.0, green: 190.0 / 255.0, blue: 119.0 / 255.0, alpha: 1.0)
    }
    
    //negative Star color
    static func negativeStarColor() -> UIColor {
        return UIColor(red: 228.0 / 255.0, green: 136.0 / 255.0, blue: 106.0 / 255.0, alpha: 1.0)
    }
    
    //MARK: DIMENSION COLORS
    
    //health dimension color
    static func charcoalGrey() -> UIColor {
        return UIColor(red: 76.0 / 255.0, green: 77.0 / 255.0, blue: 79.0 / 255.0, alpha: 1.0)
    }
    
    //advertising dimension color HEX => #00CA9B
    static func greenBlue() -> UIColor {
        return UIColor(red: 0.0, green: 202.0 / 255.0, blue: 155.0 / 255.0, alpha: 1.0)
    }
    
    //hiring dimension color HEX => #B627A1
    static func barney() -> UIColor {
        return UIColor(red: 182.0 / 255.0, green: 39.0 / 255.0, blue: 161.0 / 255.0, alpha: 1.0)
    }
    
    //brand dimension color HEX => #28BBBB
    static func tealish() -> UIColor {
        return UIColor(red: 40.0 / 255.0, green: 187.0 / 255.0, blue: 187.0 / 255.0, alpha: 1.0)
    }
    
    //HEX => #28BBBB
    static func tealish(alpha:CGFloat) -> UIColor {
        return UIColor(red: 40.0 / 255.0, green: 187.0 / 255.0, blue: 187.0 / 255.0, alpha: alpha)
    }
    
    // Customer dimension color HEX => #FF6221
    static func orangeRed() -> UIColor {
        return UIColor(red: 255.0 / 255.0, green: 98.0 / 255.0, blue: 33.0 / 255.0, alpha: 1.0)
    }
    //HEX => #FFBC45
    static func butterscotch() -> UIColor {
        return UIColor(red: 255.0 / 255.0, green: 188.0 / 255.0, blue: 69.0 / 255.0, alpha: 1.0)
    }
    
    static func yellowOrange() -> UIColor {
        return UIColor(red: 255.0 / 255.0, green: 185.0 / 255.0, blue: 0.0, alpha: 1.0)
    }
    
    //Shareholder dimension color
    static func egyptianBlue() -> UIColor {
        //UIColor(red: 17.0 / 255.0, green: 70.0 / 255.0, blue: 159.0, alpha: 1.0)
        return Helper.hexStringToUIColor(hex: "#11469F")
    }
    
    //Mobile dimension color
    static func sandyBrown() -> UIColor {
        return Helper.hexStringToUIColor(hex: "#F4A983")
    }
    
    // END OF DIMENSION COLORS
    
    
    
    static func atMentionBackgroundColor() -> UIColor{
        return UIColor(red: 142.0 / 255.0, green: 207 / 255.0, blue: 206 / 255.0, alpha: 1.0)
    }
    
    
    //color to be used to show selected menu on the side menu
    static func lightBlue()-> UIColor{
        return UIColor(red: 196.0 / 255.0, green: 244.0 / 255.0, blue: 244.0 / 255.0, alpha: 1.0)
    }
    
    static func lightGreen()-> UIColor{
        return UIColor(red: 82.0 / 255.0, green: 199.0 / 255.0, blue: 203.0 / 255.0, alpha: 0.1)
    }
    
    static func thumbUpGreen()-> UIColor{
        return UIColor(red: 18.0 / 255.0, green: 171 / 255.0, blue: 118 / 255.0, alpha: 1)
    }
    
    static func newsHeaderBackground()-> UIColor{
        return UIColor(red: 164.0 / 255.0, green: 164 / 255.0, blue: 165 / 255.0, alpha: 1)
    }
    
    
    //rgba(236, 240, 241,1.0)
    
    
    
    static func buttonTextFont(size:CGFloat)-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: size)
    }
    
    static func chatMessageFont()-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 15.0)
    }
    
    static func articleTitles()-> UIFont?{
        return UIFont(name: "GothamNarrow-Medium", size: 15.0)
    }
    
    static func navbarButtonsFont()-> UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 18.0)
    }
    
    static func tagCellInitialsFont()->UIFont?{
        return UIFont(name: "GothamNarrow-Book", size: 16.0)
    }
    
    static func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
     
 
}

extension String {
    
    func slice(from: String, to: String) -> String? {
        
        return (range(of: from)?.upperBound).flatMap { substringFrom in
            (range(of: to, range: substringFrom..<endIndex)?.lowerBound).map { substringTo in
                substring(with: substringFrom..<substringTo)
            }
        }
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKey(_ input: NSAttributedString.Key) -> String {
    return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
    guard let input = input else { return nil }
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringKeyDictionary(_ input: [String: Any]) -> [NSAttributedString.Key: Any] {
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSTextTabOptionKeyDictionary(_ input: [String: Any]) -> [NSTextTab.OptionKey: Any] {
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSTextTab.OptionKey(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringDocumentReadingOptionKeyDictionary(_ input: [String: Any]) -> [NSAttributedString.DocumentReadingOptionKey: Any] {
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.DocumentReadingOptionKey(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringDocumentAttributeKey(_ input: NSAttributedString.DocumentAttributeKey) -> String {
    return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringDocumentType(_ input: NSAttributedString.DocumentType) -> String {
    return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToUIApplicationOpenExternalURLOptionsKeyDictionary(_ input: [String: Any]) -> [UIApplication.OpenExternalURLOptionsKey: Any] {
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (UIApplication.OpenExternalURLOptionsKey(rawValue: key), value)})
}

