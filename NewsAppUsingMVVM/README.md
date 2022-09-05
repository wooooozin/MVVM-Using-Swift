## AppDelegate 에서 네비게이션 바 백그라운드 및 텍스트 컬러 설정하기 (iOS 13.0 이상부터)
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBarAppearance.backgroundColor = .darkGray
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        
        return true
    }
```
<br>

## StatusBar style 변경
```Text
프로젝트 설정 -> Light Content 변경 
info.plist 항목 추가 -> View controller-based status bar appearance - NO 추가
```
