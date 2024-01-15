//
//  Message.swift
//  ElasticScroll
//
//  Created by FS on 2024/1/15.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    var image: String
    var name: String
    var message: String
    var online: Bool
    var read: Bool
}

let sampleMessages = [
    Message(image: "1", name: ":)", message: "你好，最近过得怎么样？", online: true, read: false),
    Message(image: "2", name: "郭洁", message: "嗨，我挺好的，谢谢！最近工作忙吗？", online: false, read: true),
    Message(image: "3", name: "覃覃子", message: "嘿，想请你一起去看电影，你有时间吗？", online: true, read: false),
    Message(image: "4", name: "鸭支支", message: "当然可以啊，有哪部电影你想看吗？", online: true, read: true),
    Message(image: "5", name: "芮睿", message: "嘿，你有空一起去喝咖啡吗？", online: false, read: false),
    Message(image: "6", name: "困得要死", message: "好的，我这就过来，你想去哪家咖啡厅？", online: true, read: true),
    Message(image: "7", name: "ssssss", message: "最近听说有一家新开的餐厅很不错，要不要一起去尝试一下？", online: true, read: false),
    Message(image: "8", name: "爱吃烧饼的小王", message: "好啊，我也想尝试新的餐厅，你知道地址吗？", online: true, read: true),
    Message(image: "9", name: "迷人C", message: "嘿，最近有没有什么好玩的活动，一起参加吧！", online: false, read: false),
    Message(image: "10", name: "小猫", message: "好啊，我也想多认识一些新朋友，你有什么活动推荐吗？", online: true, read: true),
    Message(image: "11", name: "宛宛", message: "你上次推荐的那本书太棒了，有没有新的推荐？", online: true, read: false),
    Message(image: "12", name: "曾曾超棒", message: "真的吗？我很高兴你喜欢。下次我再给你推荐一本好书！", online: true, read: true),
    Message(image: "13", name: "放飞小鸽", message: "周末要不要一起去爬山？", online: false, read: false),
    Message(image: "14", name: "alex", message: "好啊，我很久没爬山了，正好锻炼一下身体！", online: true, read: true),
    Message(image: "15", name: "yayaiiiii_", message: "最近天气不错，要不要一起去海边散步？", online: true, read: false),
]
