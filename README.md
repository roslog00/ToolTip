# ToolTip for SwiftUI

![ToolTip](https://i.postimg.cc/bJwFbSLK/i-Phone-15-Pro-Screen-Recording.gif)
<p float="left">
  <img src="https://i.postimg.cc/XvJzByst/2024-06-08-15-33-49.png" width="45%">
</p>

**ToolTip with more customisation options**. In ToolTip you can adjust the colour, corner radius, cursor location. You can easily adjust the position of the ToolTip relative to the anchor

```swift
ToolTipAnchor() {
   //You can use any contet: view inside the rectangle..
} anchor: {
  //And you can use any anchor..
}
```

![ToolTip](https://i.postimg.cc/BnNzvCBx/Simulator-Screenshot-i-Phone-15-Pro-2024-06-08-at-17-31-18.png)


## Customisation
If you needs full сustomisation, use: 

```swift
public struct MessageRectangleConstants {
...
}

public struct CursorConstants {
...
}

public struct AnchorConstants {
...
}
```

These can be used to completely customise this ToolTip

## Present and dismiss
ToolTip has a dash inside that controls its behaviour on the screen. The user only needs to click on the anchor to open and hide it, so hiding works by clicking on the rectangle

![ToolTip](https://i.postimg.cc/bvVN1kpn/Jun-8.gif)
![ToolTip](https://i.postimg.cc/Y2WqmvV4/Convert-to-GIF-project-June-8.gif)

## Installation

**Use the Swift Package Manager to install the ToolTip library:**

In Xcode go to Project -> Your Project Name -> `Package Dependencies` -> Tap _Plus_. Insert url:

```
https://github.com/roslog00/ToolTip.git
```

