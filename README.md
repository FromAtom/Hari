# Hari

## Usage

```swift
import Hari

enum HariKeys: String, HariKey {
    case someKeyName1
    case someKeyName2
}

Hari.shared.setup(suiteName: "com.example.app.group", bundleID: "com.example.app")

// do-catch pattern
do {
    let value = try Hari.shared.bool(forKey: HariKeys.someKeyName1)
    print(value)
} catch let error {
    print(error)
}

// optional return value pattern
let value2 = Hari.shared.bool(forKey: HariKeys.someKeyName2)
```
