//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"




let canvasFrame = CGRect(x: 0, y: 0, width: 300, height: 500)
let view = UIView(frame: canvasFrame)
view.backgroundColor = UIColor.red

//let redFrame = CGRect(x: 0, y: 0, width: 300, height: 500)
//let redView = UIView(frame: redFrame)
//// set the margin of the redView by 20.
//redView.bounds = redFrame.insetBy(dx: 20, dy: 20)
//redView.backgroundColor = UIColor.red
//view.addSubview(redView)

let boardFrame = CGRect(x: 0, y: 0, width: canvasFrame.width, height: canvasFrame.height / 2)
let boardView = UIView(frame: boardFrame)
boardView.backgroundColor = UIColor.clear
//view.addSubview(boardView)

func concentric() {
    for i in 1..<7 {
        let frame = view.frame.insetBy(dx: CGFloat(i) * 10, dy: CGFloat(i) * 10)
        let conView = UIView(frame: frame)
        conView.backgroundColor = UIColor(hue: 1, saturation: 1 - (CGFloat(i) / 10) , brightness: 1, alpha: 1)
        view.addSubview(conView)
    }
}

func rainBow() {
    let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    
    let height = canvasFrame.height / 6
    for col in 0..<colors.count {
        let frame = CGRect(x: 0, y: CGFloat(col) * height, width: canvasFrame.width, height: height)
        let rainbowView = UIView(frame: frame)
        rainbowView.backgroundColor = colors[col]
        view.addSubview(rainbowView)
    }
}

// this setup function generate the chessview
func setup() {
    // define the width of each chessView
    let width: CGFloat = boardFrame.width / 8
    // define the height of each chessView
    let height: CGFloat = boardFrame.height / 8
    
    
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

concentric()
//setup()
//rainBow()

PlaygroundPage.current.liveView = view
