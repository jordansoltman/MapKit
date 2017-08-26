import MapKit
#if !PMKCocoaPods
import PromiseKit
#endif

/**
 To import the `MKMapSnapshotter` category:

    use_frameworks!
    pod "PromiseKit/MapKit"

 And then in your sources:

    import PromiseKit
*/
extension MKMapSnapshotter {
    /// Starts generating the snapshot using the options set in this object.
    public func start() -> Promise<MKMapSnapshot> {
        return Promise(.pending) { start(completionHandler: $0.resolve) }
    }
}
