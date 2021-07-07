//
//  Image.swift
//  Shopping List
//
//  Created by Craig Swanson on 10/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

//import UIKit
//
//public struct ImageWrapper: Codable {
//  public let image: UIImage
//
//  public enum CodingKeys: String, CodingKey {
//    case image
//  }
//
//  // Image is a standard UI/NSImage conditional typealias
//  public init(image: UIImage) {
//    self.image = image
//  }
//
//  public init(from decoder: Decoder) throws {
//    let container = try decoder.container(keyedBy: CodingKeys.self)
//    let data = try container.decode(Data.self, forKey: CodingKeys.image)
//    guard let image = UIImage(data: data) else {
//      return nil
//    }
//
//    self.image = image
//  }
//
//  // cache_toData() wraps UIImagePNG/JPEGRepresentation around some conditional logic with some whipped cream and sprinkles.
//  public func encode(to encoder: Encoder) throws {
//    var container = encoder.container(keyedBy: CodingKeys.self)
//    guard let data = UIImagePNGRepresentation(image) else {
//        return nil
//    }
//
//    try container.encode(data, forKey: CodingKeys.image)
//  }
//}

//public struct ImageWrapper: Codable {
//    public let image: Image
//
//    public init(withImage image: UIImage) {
//        self.imageData = UIImagePNGRepresentation(image)
//    }
//
//    func getImage() -> UIImage? {
//        guard let imageData = self.imageData else { return nil }
//        let image = UIImage(data: imageData)
//
//        return image
//    }
//}
