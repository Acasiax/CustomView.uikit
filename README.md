# 커스텀뷰 UIKit

```swift
import UIKit

class FocusView: UIView {

    override var canBecomeFocused: Bool {
           return true
       }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
        if context.previouslyFocusedView === self {
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
        
        if context.nextFocusedView === self {
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            })
        }
    }
}
```
- 이 코드는 Swift 언어를 사용하여 iOS 애플리케이션에서 사용되는 FocusView 클래스를 정의합니다. 이 클래스는 UIView를 상속하며, 포커스를 받을 수 있는 동작을 제어하는 데 사용됩니다. 주로 Apple TV 등 포커스 기능이 있는 디바이스에서 사용될 수 있습니다.

- 코드의 구조를 살펴보겠습니다:

1. FocusView 클래스는 UIView를 상속합니다.
2. canBecomeFocused 속성을 재정의하여 현재 뷰가 포커스를 받을 수 있는지 여부를 결정합니다. 여기서는 항상 true를 반환하도록 설정되어 있으므로 이 뷰는 언제든지 포커스를 받을 수 있습니다.

```swift
override var canBecomeFocused: Bool {
    return true
}

```
