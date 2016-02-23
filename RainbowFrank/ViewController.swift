//
//  ViewController.swift
//  RainbowFrank
//
//  Created by south boske on 2/23/16.
//  Copyright © 2016 com.boske.south. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var colors = NSMutableArray()
    let red = Float32(RAND_MAX)
    let green = Float32(RAND_MAX)
    let blue = Float32(RAND_MAX)
    
    @IBOutlet weak var colorTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorTable.delegate = self
        colorTable.dataSource = self
        print("here I am")
        colors = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.yellowColor(), UIColor.orangeColor()]
        print(colors)
        print("Here at NSMutableArray")
        
        colorTable.reloadData()
        print(colorTable)
    }

    @IBAction func addRandomColor(sender: UIBarButtonItem) {
        
        print(red)
        let randomGreen:Float = Float(drand48())
        let randomBlue:Float = Float(drand48())
        let randomRed:Float = Float(drand48())
        print(randomGreen)
        
        let randomColor = UIColor(colorLiteralRed: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        self.colors.addObject(randomColor)
        self.colorTable.reloadData()
        print(randomColor)
    }
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellID")
        cell?.textLabel?.text = "Frank"
        print(cell?.textLabel?.text!)
        
        cell?.backgroundColor = colors.objectAtIndex(indexPath.row) as? UIColor
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
}

