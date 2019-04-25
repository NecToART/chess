//
//  main.swift
//  less
//
//  Created by Артём Колбасов on 22/04/2019.
//  Copyright © 2019 Артём Колбасов. All rights reserved.
//

import Foundation

typealias Chessman = [String:(alpha:Character,num:Int)?]

var Chessmans = ["Queen":nil,"Lord":(12,1),"Elef":nil] as [String : Any?]

for (charact,life) in Chessmans{
    if life == nil{
        print("DEAD")}
    else{
    print(charact)}
}
