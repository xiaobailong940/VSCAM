

import UIKit
import MJRefresh

class ImageDetailController: UIViewController {

    var tableView: ImageDetailTableView!
    var model: ImageDetailModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        addModel()
        addControls()
    }

    func addModel() {
        model = ImageDetailModel()
    }

    func addControls() {
        //addHeadView
        if let _ = self.view.viewWithTag(Tag.make(0)) as? ImageDetailHeadView {

        } else {
            let view = ImageDetailHeadView(self)
            view.layer.masksToBounds = false
            view.tag = Tag.make(0)
            self.view.addSubview(view)
            view.snp.makeConstraints {
                (make) -> Void in
                make.top.left.right.equalTo(0)
                make.height.equalTo(55)
            }
        }

        //addCollectionView
        if let _ = self.view.viewWithTag(Tag.make(1)) as? ImageDetailTableView {

        } else {
            let view = ImageDetailTableView(self)
            view.tag = Tag.make(1)
            self.view.addSubview(view)
            view.snp.makeConstraints {
                (make) -> Void in
                make.top.left.right.bottom.equalTo(0)
            }
            self.view.sendSubview(toBack: view)
            self.tableView = view
        }
    }
}

