import Foundation
import Flutter

public class SwiftMethodHandler: NSObject, FlutterPlugin {
    private var timer: Timer?
    private var eventSink: FlutterEventSink?

    public static func register(with registrar: FlutterPluginRegistrar) {
        let methodChannel = FlutterMethodChannel(name: "method_channel_example", binaryMessenger: registrar.messenger())
        let eventChannel = FlutterEventChannel(name: "event_channel_example", binaryMessenger: registrar.messenger())

        let instance = SwiftMethodHandler()
        registrar.addMethodCallDelegate(instance, channel: methodChannel)
        eventChannel.setStreamHandler(instance)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "startDataStream" {
            startSendingData()
            result(nil)
        } else if call.method == "stopDataStream" {
            stopSendingData()
            result(nil)
        } else {
            result("Hello from iOS!")
        }
    }
}

extension SwiftMethodHandler: FlutterStreamHandler {

    public func onListen(withArguments arguments: Any?, eventSink: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = eventSink
        startSendingData()
        return nil
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        stopSendingData()
        return nil
    }

    private func startSendingData() {
    timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { _ in
        let randomData = Int.random(in: 1...100)
        print("Sending data: \(randomData)")
        self.eventSink?(randomData)
    }
}

    private func stopSendingData() {
        timer?.invalidate()
        timer = nil
    }
}
