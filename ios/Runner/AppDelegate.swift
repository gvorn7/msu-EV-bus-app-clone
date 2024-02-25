import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSSServices.ProvideAPIKey("AIzaSyCxeeRsufn3O8mAU5tc9f3zt8Ka6npUmnI")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
