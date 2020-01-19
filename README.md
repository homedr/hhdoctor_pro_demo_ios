# hhdoctor_pro iOS demo


##  0. 更新日志

> 2.4.0.02 (2020-01-17)
   1. 初始化项目


## 1. 集成方式

``` ruby
pod 'HHDoctor_pro', :git => "git@code.hh-medic.com:hh_public/HHDoctorProSDK.ios.git"
```


## 2. 使用流程


### 1. 初始化
在使用 hhdoctor_pro 任何方法之前，都应该首先调用初始化方法。正常业务情况下，初始化方法有仅只应调用一次。

调用示例

```
HHDoctor.default.start(sdkProductId: "3000", title: "视频医生")
```

** 原型

```
/// 初始化 SDK
/// - Parameters:
///   - sdkProductId: 产品 id
///   - debug: 是否 debug 模式（debug 模式下控制台打印信息）
///   - develop: 是否是测试环境
///   - title: 服务名称（显示 title）
@objc public func start(sdkProductId: String, debug: Bool = true, develop: Bool = true, title: String = "视频医生")
```


### 2. 调用视频医生界面

调用示例

```
HHDoctor.default.callDoctor(mTextView.text, topVC: self.navigationController!) { [weak self] in
    print($0)
}
```

** 原型

```
/// 呼叫视频医生
/// - Parameters:
///   - token: 当前用户的唯一标识符
///   - topVC: 当前导航控制器
///   - finished: 回调结果, String 为空表示退出成功
@objc public func callDoctor(_ token: String, topVC: UINavigationController, finished: ((String?)->Void)? = nil)
```

### 3. 登出账户
请在退出您自身的账户体系时，调用 SDK 的登出功能。

调用示例

```
HHMSDK.default.logout { error in
    print(error)
}
```

** 原型

```
/// 退出登录(退出账号时请调用退出登录)
/// - Parameter callback: 回调结果, String 为空表示退出成功
@objc public func logout(callback: @escaping ((String?)->Void))
```


## demo 运行说明

- 修改签名信息
- 执行 `pod install` 或 `pod update`
