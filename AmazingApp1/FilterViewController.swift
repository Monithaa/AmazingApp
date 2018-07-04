import UIKit

class FilterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data1: [String] = ["All", "Healthy Living", "Wealth Building", "Time Management", "Financial Management", "Motivation"]
 //   let img1: [String] = ["checkbox_line@=2x copy", "checkbox_line@=2x copy", "checkbox_line@=2x copy", "checkbox_line@=2x copy", "checkbox_line@=2x copy"]
    
    let cellReuseIdentifier1 = "cell4"
    
    @IBOutlet weak var filterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       filterTableView.register(UINib(nibName: "FilterCell", bundle: nil), forCellReuseIdentifier: "cell4")
        
        filterTableView.delegate = self
        filterTableView.dataSource = self
}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data1.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1: FilterCell = self.filterTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier1) as! FilterCell
        cell1.text2?.text = self.data1[indexPath.row]
        cell1.selectionStyle = .none
        cell1.image2.addTarget(self, action: #selector(checkMarkButtonClicked(sender:)), for: .touchUpInside)
        //cell.image1.setImage(UIImage[indexPath.row], for: .normal)
        return cell1
    }
    @objc func checkMarkButtonClicked (sender: UIButton){
        print("button pressed")
        
        if sender.isSelected{
            //uncheck the button
            sender.isSelected = false
        }else{
            //checkmark the button
            sender.isSelected = true
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
