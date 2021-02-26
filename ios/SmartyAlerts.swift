import SCLAlertView

@objc(SmartyAlerts)
class SmartyAlerts: NSObject {
  
  @objc(alert:withMessage:withBtnOneLabel:withBtnTwoLabel:withResolve:withReject:)
  func alert(title: String,
             message: String,
             btnOneLabel: String,
             btnTwoLabel: String,
             resolve: @escaping RCTResponseSenderBlock,
             reject: @escaping RCTResponseSenderBlock) -> Void {
    DispatchQueue.main.async {
      let appearance = SCLAlertView.SCLAppearance(showCloseButton: false, contentViewCornerRadius: CGFloat(16), fieldCornerRadius: CGFloat(25), buttonCornerRadius: CGFloat(16))
      let alertView = SCLAlertView(appearance: appearance)
      alertView.addButton(btnOneLabel, backgroundColor: UIColor.purple, textColor: UIColor.white) {
        resolve([])
      }
      if(btnTwoLabel != "") {
        alertView.addButton(btnTwoLabel, backgroundColor: UIColor.purple, textColor: UIColor.white) {
          reject([])
        }
      }
      alertView.showNotice(title, subTitle: message)
    }
  }
}
