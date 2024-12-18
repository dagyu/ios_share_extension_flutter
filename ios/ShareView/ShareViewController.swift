import UIKit
import Flutter

class ShareViewController: UIViewController {
    override func viewDidLoad() {
      super.viewDidLoad()
      // To check if self.view is visible
      self.view.backgroundColor = .green
      showFlutter()
    }

    func showFlutter() {
      let flutterViewController = FlutterViewController(project: nil, nibName: nil, bundle: nil)
      
      flutterViewController.setFlutterViewDidRenderCallback {
        print("This code has never been executed")
      }
      
      addChild(flutterViewController)
      view.addSubview(flutterViewController.view)
      flutterViewController.view.frame = view.bounds
    }
}
