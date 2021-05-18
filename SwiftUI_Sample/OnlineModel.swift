//
//  OnlineModel.swift
//  SwiftUI_Sample
//
//  Created by Nick Yang on 2021/5/18.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let result: WelcomeResult
}

// MARK: - WelcomeResult
struct WelcomeResult: Codable {
    let limit, offset, count: Int
    let sort: String
    let results: [ResultElement]
}

// MARK: - ResultElement
struct ResultElement: Codable, Identifiable {
    let 管理單位: 管理單位
    let 組合遊具, 磨石滑梯, 其他, 翹翹板: String
    let 行政區: 行政區
    let 攀爬組, 鞦韆, 公園名稱, 擺盪船索: String
    let id: Int
    let 搖搖樂, 戲沙坑: String

    enum CodingKeys: String, CodingKey {
        case 管理單位, 組合遊具, 磨石滑梯, 其他, 翹翹板, 行政區, 攀爬組, 鞦韆, 公園名稱, 擺盪船索
        case id = "_id"
        case 搖搖樂, 戲沙坑
    }
}

enum 管理單位: String, Codable {
    case 南港所 = "南港所"
    case 南港所原園工隊 = "南港所(原園工隊)"
    case 園工隊 = "園工隊"
    case 園藝所 = "園藝所"
    case 園藝所原園工隊 = "園藝所(原園工隊)"
    case 園藝所原陽明所 = "園藝所(原陽明所)"
    case 圓山所 = "圓山所"
    case 花卉中心 = "花卉中心"
    case 陽明所 = "陽明所"
    case 青年所 = "青年所"
}

enum 行政區: String, Codable {
    case 中山 = "中山"
    case 中正 = "中正"
    case 信義 = "信義"
    case 內湖 = "內湖"
    case 北投 = "北投"
    case 南港 = "南港"
    case 園信義 = "園(信義)"
    case 士林 = "士林"
    case 大同 = "大同"
    case 大安 = "大安"
    case 文山景美 = "文山(景美)"
    case 文山木柵 = "文山(木柵)"
    case 松山 = "松山"
    case 萬華 = "萬華"
}
