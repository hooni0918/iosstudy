//
//  Model.swift
//  Rest_Api_GangNam
//
//  Created by 이지훈 on 2023/01/27.
//

import Foundation
import UIKit


// 실제 우리가 사용하게될 음악(Music) 모델 구조체
// (서버에서 가져온 데이터만 표시해주면 되기 때문에 일반적으로 구조체로 만듦)

struct Todo: Codable {
    
    let songName: String?
    let artistName: String?
    let albumName: String?
    let previewUrl: String?
    let imageUrl: String?
    private let releaseDate: String?
}
