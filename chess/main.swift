//
//  main.swift
//  less
//
//  Created by Артём Колбасов on 22/04/2019.
//  Copyright © 2019 Артём Колбасов. All rights reserved.
//

import Foundation

typealias Chessman = [String:(alpha:Character,num:Int)?]

//____________________________________________________________________________________________________________
//Проверка на наличие фишки на игровом поле
//
func cheesAnalizer(_ Chess: Chessman) -> (){

    for (charact,life) in Chess{
        if life == nil{
            print("\(charact) DEAD")}
        else{
            print(charact,life as Any)}
    }
}
//____________________________________________________________________________________________________________
//
//Добавление новой фигуры и обновление старой
func changeValues( _ Chess:  inout Chessman, _ newChess: Chessman) -> (){
    for (charact,_) in Chess{
        for (charactNew,lifeNew) in newChess{
            if charact != charactNew{
                Chess[charactNew] = lifeNew
            } else {
                Chess[charact] = lifeNew
                }
            }
        }
    }
//____________________________________________________________________________________________________________


var Chessmans: Chessman = ["Queen":("2",12),"Lord":("1",2),"Elef":nil]
var newChess: Chessman = ["Elef":("3",7),"PeshkaWhite":(nil),"Peshka":nil]

changeValues(&Chessmans,newChess)
print(".....................")
cheesAnalizer(Chessmans)
