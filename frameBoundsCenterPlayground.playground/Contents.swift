//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"




let canvasFrame = CGRect(x: 0, y: 0, width: 300, height: 500)
let view = UIView(frame: canvasFrame)
view.backgroundColor = UIColor.white

//let redFrame = CGRect(x: 0, y: 0, width: 300, height: 500)
//let redView = UIView(frame: redFrame)
//// set the margin of the redView by 20.
//redView.bounds = redFrame.insetBy(dx: 20, dy: 20)
//redView.backgroundColor = UIColor.red
//view.addSubview(redView)

let boardFrame = CGRect(x: 0, y: 0, width: canvasFrame.width, height: canvasFrame.height / 2)
let boardView = UIView(frame: boardFrame)
boardView.backgroundColor = UIColor.clear
view.addSubview(boardView)


func setup() {
    // define the width of each chessView
    let width: CGFloat = boardFrame.width / 8
    // define the height of each chessView
    let height: CGFloat = boardFrame.height / 8
    
//    for column in 0..<8 {
//        let realFrame = CGRect(x: column as CGFloat, y: 20, width: 20, height: 20)
//    }
    
    for col in 0 ..< 8 {
        for row in 0 ..< 8 {
            let frame = CGRect(x: CGFloat(row) * width, y: CGFloat(col) * height, width: width, height: height)
            // make frame x = i * w
            // make view
            let eachView = UIView(frame: frame)
            boardView.addSubview(eachView)
            if col % 2 == 0 && row % 2 == 0 || (col % 2 != 0 && row % 2 != 0) {
                eachView.backgroundColor = UIColor.gray
            } else if (col % 2 == 0 && row % 2 != 0) || (col % 2 != 0 && row % 2 == 0){
                eachView.backgroundColor = UIColor.black
            }
        }
    }
}

setup()

PlaygroundPage.current.liveView = view