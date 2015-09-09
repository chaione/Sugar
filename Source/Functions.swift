import Foundation

public func delay(delay:Double, closure: () -> Void) {
  dispatch_after(
    dispatch_time(
      DISPATCH_TIME_NOW,
      Int64(delay * Double(NSEC_PER_SEC))
    ),
    dispatch_get_main_queue(), closure)
}

public func localizedString(key: String, comment: String? = nil) -> String {
  return NSLocalizedString(key, comment: (comment != nil) ? comment! : key)
}

public func dispatch(queue: dispatch_queue_t = dispatch_get_main_queue(), closure: () -> Void) {
  dispatch_async(queue, {
    closure()
  })
}
