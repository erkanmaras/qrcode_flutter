## 1.0.8

1. Plugin can register many time
2. [Improvement: allow mocking of plugin method channel](https://github.com/xuzhongpeng/qrcode_flutter/pull/4)

## 1.0.6

1. fix small qrcode images scanning correct

## 1.0.5

1.fix requestPermissions callback error(cause open camera error when agree permissions)

## 1.0.4

1. change `implementation "com.journeyapps:zxing-android-embedded:3.5.0"` to `api "com.journeyapps:zxing-android-embedded:3.5.0"`(because the library `zxing-android-embedded` has built the class `CameraConfigurationUtils` the same as `com.google.zxing:android-core:3.2.1`)
2. fix Android clear bugs

## ~~1.0.3~~

1. fix iOS errors
2. Support Android V2 embedding.
3. Change the result of the scanned album to List

## ~~1.0.2~~

1. Support Android V2 embedding.
2. Change the result of the scanned album to List


## 1.0.1

Modify the document

## 1.0.0

提供相机扫码功能，提供照片解析功能（通过相册选择照片或者网络下载照片）

You can customize your page using by PlatformView.Scanning Picture from path(photo album).


