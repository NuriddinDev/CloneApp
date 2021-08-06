//
//  HomeViewController.swift
//  CloneApp
//
//  Created by Nuriddin Musojonov on 31/07/21.
//

import UIKit

class HomeViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
        
    @IBOutlet weak var tableview: UITableView!
    var items:Array<Post> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }

    
    // MARK: - function
    
    func initView(){
        setNavigationBar()
        tableview.delegate = self
        tableview.dataSource = self
        items.append(Post(name: "Nuriddin", imgAvatar: "ic_person1", imgPost1: "ic_post1", imgPost2: "ic_post2"))
        items.append(Post(name: "Chilanzar_098", imgAvatar: "ic_person2", imgPost1: "ic_post1", imgPost2: "ic_post2"))
        
    }

    func setNavigationBar(){
        
        let camera = UIImage(named: "ic_camera")
        let direct = UIImage(named: "ic_direct")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, landscapeImagePhone: nil, style: .plain, target: self, action: #selector(leftTapped) )
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: direct, landscapeImagePhone: nil, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"

    }

    @objc func leftTapped(){
        
    }
    @objc func rightTapped(){
        
    }
    
    // MARK: - Action
    
    // MARK: - Tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.imgAvatar.image = UIImage(named: item.imgAvatar!)
        cell.lblUsername.text = item.name
        cell.imgPost1.image = UIImage(named: item.imgPost1!)
        cell.imgPost2.image = UIImage(named: item.imgPost2!)
      
        
        return cell    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }

}
