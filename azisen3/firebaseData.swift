//
//  firebaseData.swift
//  azisen3
//
//  Created by 伊藤倫 on 2020/11/25.
//  Copyright © 2020 michi.ito. All rights reserved.
//

import UIKit
import Firebase

class firebaseData: NSObject {
    
    var id: String
    var birthday: String?
    var code: String?
    var generation: String?
    var mailAdress: String?
    var nicName: String?
    var passward: String?
    var sex: String?
    var shop: String?
    
    init(document: QueryDocumentSnapshot){
        self.id = document.documentID
        let dataDic = document.data()
        
        self.birthday = dataDic["birthday"] as? String
        self.code = dataDic["code"] as? String
        self.generation = dataDic["generation"] as? String
        self.mailAdress = dataDic["mailAdress"] as? String
        self.nicName = dataDic["nicName"] as? String
        self.passward = dataDic["passward"] as? String
        self.sex = dataDic["sex"] as? String
        self.shop = dataDic["shop"] as? String
    }
}
