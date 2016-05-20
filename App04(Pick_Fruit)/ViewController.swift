//
//  ViewController.swift
//  App04(Pick_Fruit)
//
//  Created by Aiman Abdullah Anees on 18/05/16.
//  Copyright © 2016 Aiman Abdullah Anees. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    var fruits = ["Pick A Fruit","Apples","Oranges","Lemons","Limes","Blueberries"]
    
    @IBOutlet var ImageView: UIImageView!
    
    @IBOutlet var MessageBox: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return fruits.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return fruits[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        var FruitSelected = fruits[row]
        
        switch(FruitSelected)
        {
            case "Apples":
            ImageView.image = UIImage(named: "apples.jpg")
            MessageBox.text = "Apples are red."
            MessageBox.textColor = UIColor.redColor()
            
            case "Oranges":
            ImageView.image = UIImage(named: "oranges.jpg")
            MessageBox.text = "Oranges are orange."
            MessageBox.textColor = UIColor.orangeColor()
            
            case "Lemons":
            ImageView.image = UIImage(named: "lemons.jpg")
            MessageBox.text = "Lemons are yellow."
            MessageBox.textColor = UIColor.yellowColor()
            
            case "Limes":
            ImageView.image = UIImage(named: "limes.jpg")
            MessageBox.text = "Limes are green."
            MessageBox.textColor = UIColor.greenColor()
            
            case "Blueberries":
            ImageView.image = UIImage(named: "blueberry.jpg")
            MessageBox.text = "Blueberries are blue."
            MessageBox.textColor = UIColor.blueColor()
            
            default:
                ImageView.image = UIImage(named: "fruits.jpg")
                MessageBox.text = "Pick Up A Fruit."
                MessageBox.textColor = UIColor.brownColor()
            
            
            
            
            
            
        }
    }
    
    
    


}

