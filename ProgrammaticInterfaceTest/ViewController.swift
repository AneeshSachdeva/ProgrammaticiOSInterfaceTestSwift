//
//  ViewController.swift
//  ProgrammaticInterfaceTest
//
//  Created by Aneesh Sachdeva on 1/31/15.
//  Copyright (c) 2015 Applos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //var myView
    
    var services = ["Twitter", "Flickr", "Github", "Instagram", "Foursquare", "Fitbit", "Withings", "Linkedin", "Dropbox", "Dribbble"]
    
    var firstNameText: UITextField = UITextField()
    var lastNameText: UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.navigationItem.title = "Nav Title"
        let label : UILabel = UILabel(frame: CGRect(origin: CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height / 2), size: CGSize(width: UIScreen.mainScreen().bounds.width / 4, height: UIScreen.mainScreen().bounds.height / 4)))
        self.view.addSubview(label)
        //self.view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1, alpha: 1.0)
        //Make a view
        

//        let tableView : UITableView = UITableView(frame: self.view.bounds, style: .Plain)
//        tableView.delegate = self
//        tableView.dataSource = self
//        self.view.addSubview(tableView)
    }
    
    override func loadView() {
        super.loadView()
        println(self.view.bounds)
        self.navigationItem.title = "Nav Title"
        
        let label : UILabel = UILabel(frame: CGRect(origin: CGPoint(x: self.view.bounds.width / 2, y: self.view.bounds.height / 2), size: CGSize(width: self.view.bounds.width / 4, height: self.view.bounds.height / 4)))
//        label.text = "yo mama"
//        self.view.addSubview(label)
//        println(label.bounds)
        
        var button : UIButton = UIButton(frame: CGRectMake(self.view.bounds.width/2, self.view.bounds.height/2, self.view.bounds.width/4, self.view.bounds.height/6))
        button.center = CGPointMake(self.view.bounds.width / 2, self.view.bounds.height / 2)
        button.backgroundColor=UIColor.blueColor();
        button.setTitle("yo", forState: .Normal)
        button.setTitleColor(UIColor.yellowColor(), forState: .Normal);
        button.alpha=0.6;
        button.layer.borderWidth=0.3;
        button.layer.cornerRadius=10;
        button.titleLabel?.textAlignment = NSTextAlignment.Center
        self.view.addSubview(button)
//        let tableView : UITableView = UITableView(frame: self.view.bounds, style: .Plain)
//        tableView.delegate = self
//        tableView.dataSource = self
//        self.view.addSubview(tableView)
        
//        let view1 = UIView()
//        view1.setTranslatesAutoresizingMaskIntoConstraints(false)
//        view1.backgroundColor = UIColor.redColor()
//        
//        //Make a second view
//        let view2 = UIView()
//        view2.setTranslatesAutoresizingMaskIntoConstraints(false)
//        view2.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 0.1, alpha: 1.0)
//        
//        self.view.addSubview(view1)
//        self.view.addSubview(view2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return services.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = services[indexPath.row]
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        var service: String = services[indexPath.row]
        switch service {
        case "Twitter":
            //doOAuthTwitter()
            println("Twitter")
        case "Flickr":
            //doOAuthFlickr()
            println("Flickr")
        case "Github":
            //doOAuthGithub()
            println("Github")
        case "Instagram":
            //doOAuthInstagram()
            println("Instagram")
        case "Foursquare":
            //doOAuthFoursquare()
            println("Foursquare")
        case "Fitbit":
            //doOAuthFitbit()
            println("Fitbit")
        case "Withings":
            //doOAuthWithings()
            println("Withings")
        case "Linkedin":
            //doOAuthLinkedin()
            println("Linkedin")
        case "Dropbox":
            //doOAuthDropbox()
            println("Dropbox")
        case "Dribbble":
            //doOAuthDribbble();
            println("Dribble")
        default:
            println("default (check ViewController tableView)")
        }
        tableView.deselectRowAtIndexPath(indexPath, animated:true)
    }


}

