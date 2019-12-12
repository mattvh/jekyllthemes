##JS方法里 UIWebView 和 WKWebView区别（看👇）

```
	//按钮点击事件
	function buttonClick() {
		// 传递的信息
		var jsonStr = '{"Action", "", "Message":"这是消息"}'
		
		// WebView使用
		getMessage(jsonStr);
		
		// WKWebView使用
		// 使用下方方法,会报错,为使界面执行逻辑通畅,因此使用try-catch
		try {
			window.webkit.messageHandlers.getMessage.postMessage(jsonStr)
		} catch(error) {
			console.log(error)
		}
	}
	
	function getMessage(json){
   		//空方法
 	}
```

##iOS用到的JS交互方法

```
// 打开3D页面  imgUrl  户型图连接
- (void)toUnity:(NSString *)imgUrl;
// 返回原生
- (void)toBack;
-(void)houseForwardSettingId:(NSString *)mesid;
// 获取用户信息
- (NSString *)getUserInfo;
// 获取经纬度
- (NSString *)getLocation;
// 保存图片
- (void )saveImage:(NSString *)imgUrl;
// 登录
- (void)toLogin;
// 下载户型
- (void)downloadHouseDetail:(NSString *)houseId;
//一键导出邮件导出
-(void)exportForEmail:(NSString *)quotationUserId;
//一键导出分享
-(void)offerShare:(NSString *)appUrl;
// 下载模型
- (void)loadAllPlanModel:(NSString *)strJson;
//分享关系网详情右上角编辑
-(void)editShare;
//分享关系网详情分享按钮
-(void)shareOfConnect;
//关系网浏览关系线路图
-(void)downLoadImage:(NSString*)str;

//热门主题H5页面分享
-(void)shareDialog:(NSString *)title :(NSString *)subtitle :(NSString *)imgUrl :(NSString *)appUrl;
```

**建议可以在传递信息里这么写👇**

```
	// 传递的信息
	var jsonStr = '{"Action", "方法名", "Message":"用到的参数"}'
```

##谁在用该网页
使用WKWebView的 `customUserAgent` 属性。

##JS 调用WKWebView需要👇的设置
`- (void)addScriptMessageHandler:(id <WKScriptMessageHandler>)scriptMessageHandler name:(NSString *)name`

name是定义好的交互 名称。

##WebView 调用 JS方法
```
NSString *jsStr = @"transferPrama('123')"
[self.webView evaluateJavaScript:jsStr completionHandler:^(id _Nullable result, NSError * _Nullable error) {
                
}];
```

Angular里的：

```
(window as any).transferPrama = function(str) {
	// 处理传给 js端的 str
}
```

##alert弹窗在 WKWebView的适配

需要设置 `WKUIDelegate` 代理，实现👇三个方法。

```
// 显示一个按钮。点击后调用completionHandler回调
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:message message:nil preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

        completionHandler();
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}

// 显示两个按钮，通过completionHandler回调判断用户点击的确定还是取消按钮
- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL))completionHandler{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:message message:nil preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        completionHandler(YES);
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        completionHandler(NO);
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

// 显示一个带有输入框和一个确定按钮的，通过completionHandler回调用户输入的内容
- (void)webView:(WKWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * _Nullable))completionHandler{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"" message:nil preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        
    }];
    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        completionHandler(alertController.textFields.lastObject.text);
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}
```
##evaluateJavaScript 里参数是dic时的处理

```
	//👇这句是重点 转换成JS能识别的
	NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:kNilOptions error:nil];
	NSString *strJson = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
```
