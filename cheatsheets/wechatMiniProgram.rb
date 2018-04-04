cheatsheet do
  title '微信小程序 API'
  docset_file_name 'wechatMiniProgram'
  keyword 'mina'
  source_url 'https://developers.weixin.qq.com/miniprogram/dev/api/'
  introduction '这是一个用来罗列小程序的 API 文档索引的一个列表，需要通过联网才能看到具体的内容信息。'

  category do
    id '网络'

    entry do
      name '[网络](https://developers.weixin.qq.com/miniprogram/dev/api/api-network.html)'
      notes <<-'END'
        关于微信小程序中网络相关 API 的说明
        在微信小程序中使用网络相关的 API 时，需要注意下列问题，请开发者提前了解。

        1. 服务器域名配置
          * 配置流程
          * HTTPS 证书
          * 跳过域名校验
        2. 关于请求
        3. 关于服务器返回
          * 返回值编码
          * 回调
       END
    end
    entry do
      name '★ [发起请求](https://developers.weixin.qq.com/miniprogram/dev/api/network-request.html)'
      notes '发起网络请求。'
    end
    entry do
      command 'wx.request'
      notes <<-'END'
        发起网络请求
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/network-request.html](https://developers.weixin.qq.com/miniprogram/dev/api/network-request.html)
      END
    end
    entry do
      name '★ [上传、下载](https://developers.weixin.qq.com/miniprogram/dev/api/network-file.html)'
    end
    entry do
      command 'wx.uploadFile'
      notes <<-'END'
        上传文件

        [https://developers.weixin.qq.com/miniprogram/dev/api/network-file.html#wxuploadfileobject](https://developers.weixin.qq.com/miniprogram/dev/api/network-file.html#wxuploadfileobject)
      END
    end
    entry do
      command 'wx.downloadFile'
      notes <<-'END'
        下载文件

        [https://developers.weixin.qq.com/miniprogram/dev/api/network-file.html#wxdownloadfileobject](https://developers.weixin.qq.com/miniprogram/dev/api/network-file.html#wxdownloadfileobject)
      END
    end
    entry do
      name '★ [WebSocket](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html)'
    end
    entry do
      command 'wx.connectSocket'
      notes <<-'END'
        创建 WebSocket 连接

        [https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxconnectsocketobject](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxconnectsocketobject)
      END
    end
    entry do
      command 'wx.onSocketOpen'
      notes <<-'END'
        监听 WebSocket 打开
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketopencallback](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketopencallback)
      END
    end
    entry do
      command 'wx.onSocketError'
      notes <<-'END'
        监听 WebSocket 错误

        [https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketerrorcallback](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketerrorcallback)
      END
    end
    entry do
      command 'wx.sendSocketMessage'
      notes <<-'END'
        发送 WebSocket 消息

        [https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxsendsocketmessageobject](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxsendsocketmessageobject)
      END
    end
    entry do
      command 'wx.onSocketMessage'
      notes <<-'END'
        接受 WebSocket 消息
        [https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketmessagecallback](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketmessagecallback)
      END
    end
    entry do
      command 'wx.closeSocket'
      notes <<-'END'
        关闭 WebSocket 连接

        [https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxclosesocket](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxclosesocket)
      END
    end
    entry do
      command 'wx.onSocketClose'
      notes <<-'END'
        监听 WebSocket 关闭

        [https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketclosecallback](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html#wxonsocketclosecallback)
      END
    end
    entry do
      command 'SocketTask'
      notes <<-'END'
        WebSocket 任务，可通过 [wx.connectSocket()](https://developers.weixin.qq.com/miniprogram/dev/api/network-socket.html) 接口创建返回。
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/socket-task.html](https://developers.weixin.qq.com/miniprogram/dev/api/socket-task.html)
      END
    end
  end
  category do
    id '媒体'
    entry do
      name '[媒体](https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html)'
      notes '对图片、音频以及视频的处理。'
    end
    entry do
      name '★ [图片](https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html)'
    end
    entry do
      command 'wx.chooseImage'
      notes <<-'END'
        从本地相册选择图片或使用相机拍照。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxchooseimageobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxchooseimageobject)
      END
    end
    entry do
      command 'wx.previewImage'
      notes <<-'END'
        预览图片。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxpreviewimageobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxpreviewimageobject)
      END
    end
    entry do
      command 'wx.getImageInfo'
      notes <<-'END'
        获取图片信息。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxgetimageinfoobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxgetimageinfoobject)
      END
    end
    entry do
      command 'wx.saveImageToPhotosAlbum'
      notes <<-'END'
        保存图片到系统相册。

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.writePhotosAlbum

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxsaveimagetophotosalbumobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-picture.html#wxsaveimagetophotosalbumobject)
      END
    end
    entry do
      name '★ [录音](https://developers.weixin.qq.com/miniprogram/dev/api/media-record.html)'
    end
    entry do
      command 'wx.startRecord'
      notes <<-'END'
        开始录音。

        **注意：1.6.0 版本开始，本接口不再维护。建议使用能力更强的 [wx.getRecorderManager](https://developers.weixin.qq.com/miniprogram/dev/api/getRecorderManager.html) 接口**

        开始录音。当主动调用 `wx.stopRecord`，或者录音超过1分钟时自动结束录音，返回录音文件的临时文件路径。当用户离开小程序时，此接口无法调用。

        需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.record

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-record.html#wxstartrecordobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-record.html#wxstartrecordobject)
      END
    end
    entry do
      command 'wx.stopRecord'
      notes <<-'END'
        ​主动调用停止录音。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-record.html#wxstoprecord](https://developers.weixin.qq.com/miniprogram/dev/api/media-record.html#wxstoprecord)
      END
    end
    entry do
      name '★ [录音管理](https://developers.weixin.qq.com/miniprogram/dev/api/getRecorderManager.html)'
    end
    entry do
      command 'wx.getRecorderManager'
      notes <<-'END'
        获取全局唯一的录音管理器 `recorderManager`。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/getRecorderManager.html](https://developers.weixin.qq.com/miniprogram/dev/api/getRecorderManager.html)
      END
    end
    entry do
      name '★ [音频播放控制](https://developers.weixin.qq.com/miniprogram/dev/api/media-voice.html)'
    end
    entry do
      command 'wx.playVoice'
      notes <<-'END'
        开始播放语音，同时只允许一个语音文件正在播放，如果前一个语音文件还没播放完，将中断前一个语音播放。

        **注意：1.6.0 版本开始，本接口不再维护。建议使用能力更强的 [wx.createInnerAudioContext](https://developers.weixin.qq.com/miniprogram/dev/api/createInnerAudioContext.html) 接口**

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-voice.html#wxplayvoiceobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-voice.html#wxplayvoiceobject)
      END
    end
    entry do
      command 'wx.pauseVoice'
      notes <<-'END'
        暂停正在播放的语音。再次调用 `wx.playVoice` 播放同一个文件时，会从暂停处开始播放。如果想从头开始播放，需要先调用 `wx.stopVoice`。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-voice.html#wxpausevoice](https://developers.weixin.qq.com/miniprogram/dev/api/media-voice.html#wxpausevoice)
      END
    end
    entry do
      command 'wx.stopVoice'
      notes <<-'END'
        结束播放语音。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-voice.html#wxstopvoice](https://developers.weixin.qq.com/miniprogram/dev/api/media-voice.html#wxstopvoice)
      END
    end
    entry do
      name '★ [音乐播放控制](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html)'
    end
    entry do
      command 'wx.getBackgroundAudioPlayerState'
      notes <<-'END'
        获取后台音乐播放状态

        **注意：1.2.0 版本开始，本接口不再维护。建议使用能力更强的 [wx.getBackgroundAudioManager](https://developers.weixin.qq.com/miniprogram/dev/api/getBackgroundAudioManager.html) 接口**

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxgetbackgroundaudioplayerstateobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxgetbackgroundaudioplayerstateobject)
      END
    end
    entry do
      command 'wx.playBackgroundAudio'
      notes <<-'END'
        使用后台播放器播放音乐，对于微信客户端来说，只能同时有一个后台音乐在播放。当用户离开小程序后，音乐将暂停播放；当用户点击“显示在聊天顶部”时，音乐不会暂停播放；当用户在其他小程序占用了音乐播放器，原有小程序内的音乐将停止播放。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxplaybackgroundaudioobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxplaybackgroundaudioobject)
      END
    end
    entry do
      command 'wx.pauseBackgroundAudio'
      notes <<-'END'
        暂停播放音乐。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxpausebackgroundaudio](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxpausebackgroundaudio)
      END
    end
    entry do
      command 'wx.seekBackgroundAudio'
      name '控制音乐播放进度。'
      notes 'https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxseekbackgroundaudioobject'
    end
    entry do
      command 'wx.stopBackgroundAudio'
      notes <<-'END'
        停止播放音乐。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxstopbackgroundaudio](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxstopbackgroundaudio)
      END
    end
    entry do
      command 'wx.onBackgroundAudioPlay'
      notes <<-'END'
        监听音乐播放。

        ```
        wx.onBackgroundAudioPlay(CALLBACK)
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxonbackgroundaudioplaycallback](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxonbackgroundaudioplaycallback)
      END
    end
    entry do
      command 'wx.onBackgroundAudioPause'
      notes <<-'END'
        监听音乐暂停。

        ```
        wx.onBackgroundAudioPause(CALLBACK)
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxonbackgroundaudiopausecallback](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxonbackgroundaudiopausecallback)
      END
    end
    entry do
      command 'wx.onBackgroundAudioStop'
      notes <<-'END'
        监听音乐停止。

        ```
        wx.onBackgroundAudioStop(CALLBACK)
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxonbackgroundaudiostopcallback](https://developers.weixin.qq.com/miniprogram/dev/api/media-background-audio.html#wxonbackgroundaudiostopcallback)
      END
    end
    entry do
      name '★ [背景音频播放管理](https://developers.weixin.qq.com/miniprogram/dev/api/getBackgroundAudioManager.html)'
    end
    entry do
      command 'wx.getBackgroundAudioManager'
      notes <<-'END'
        监听音乐停止。获取全局唯一的背景音频管理器 `backgroundAudioManager`。

        **基础库 1.2.0 开始支持，低版本需做兼容处理。**
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/getBackgroundAudioManager.html](https://developers.weixin.qq.com/miniprogram/dev/api/getBackgroundAudioManager.html)
      END
    end
    entry do
      name '★ [音频组件控制](https://developers.weixin.qq.com/miniprogram/dev/api/api-audio.html)'
    end
    entry do
      command 'wx.createAudioContext'
      notes <<-'END'
        ```
        wx.createAudioContext(audioId, this)
        ```

        创建并返回 audio 上下文 `audioContext` 对象。在自定义组件下，第二个参数传入组件实例this，以操作组件内 `<audio/>` 组件

        **注意：1.6.0 版本开始，本接口不再维护。建议使用能力更强的 `wx.createInnerAudioContext` 接口**
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/api-audio.html#wxcreateaudiocontextaudioid](https://developers.weixin.qq.com/miniprogram/dev/api/api-audio.html#wxcreateaudiocontextaudioid)
      END
    end
    entry do
      command 'wx.createInnerAudioContext'
      notes <<-'END'
        ```
        wx.createInnerAudioContext()
        ```

        创建并返回内部 audio 上下文 `innerAudioContext` 对象。*本接口是 `wx.createAudioContext` 升级版。*

        **基础库 1.6.0 开始支持，低版本需做兼容处理**
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/createInnerAudioContext.html](https://developers.weixin.qq.com/miniprogram/dev/api/createInnerAudioContext.html)
      END
    end
    entry do
      name '★ [视频](https://developers.weixin.qq.com/miniprogram/dev/api/media-video.html)'
    end
    entry do
      command 'wx.chooseVideo'
      notes <<-'END'
        拍摄视频或从手机相册中选视频，返回视频的临时文件路径。

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-video.html#wxchoosevideoobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-video.html#wxchoosevideoobject)
      END
    end
    entry do
      command 'wx.saveVideoToPhotosAlbum'
      notes <<-'END'
        保存视频到系统相册。

        需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.writePhotosAlbum

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/media-video.html#wxsavevideotophotosalbumobject](https://developers.weixin.qq.com/miniprogram/dev/api/media-video.html#wxsavevideotophotosalbumobject)
      END
    end
    entry do
      name '★ [视频组件控制](https://developers.weixin.qq.com/miniprogram/dev/api/api-video.html)'
    end
    entry do
      command 'wx.createVideoContext'
      notes <<-'END'
        ```
        wx.createVideoContext(videoId, this)
        ```

        创建并返回 video 上下文 `videoContext` 对象。在自定义组件下，第二个参数传入组件实例this，以操作组件内 `<video/>` 组件

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-video.html#wxcreatevideocontextvideoid](https://developers.weixin.qq.com/miniprogram/dev/api/api-video.html#wxcreatevideocontextvideoid)
      END
    end
    entry do
      name '★ [相机组件控制](https://developers.weixin.qq.com/miniprogram/dev/api/api-camera.html)'
    end
    entry do
      command 'wx.createCameraContext'
      notes <<-'END'
        ```
        wx.createCameraContext(this)
        ```

        创建并返回 camera 上下文 `cameraContext` 对象，`cameraContext` 与页面的 `camera` 组件绑定，一个页面只能有一个camera，通过它可以操作对应的 `<camera/>` 组件。 在自定义组件下，第一个参数传入组件实例this，以操作组件内 `<camera/>` 组件

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-camera.html](https://developers.weixin.qq.com/miniprogram/dev/api/api-camera.html)
      END
    end
    entry do
      name '★ [实时音视频](https://developers.weixin.qq.com/miniprogram/dev/api/api-live-player.html)'
    end
    entry do
      command 'wx.createLivePlayerContext'
      notes <<-'END'
        ```
        wx.createLivePlayerContext(domId, this)
        ```

        操作对应的 `<live-player/>` 组件。 创建并返回 `live-player` 上下文 `LivePlayerContext` 对象。在自定义组件下，第二个参数传入组件实例this，以操作组件内 `<live-player/>` 组件

        **基础库 1.7.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-live-player.html](https://developers.weixin.qq.com/miniprogram/dev/api/api-live-player.html)
      END
    end
    entry do
      command 'wx.createLivePusherContext'
      notes <<-'END'
        创建并返回 `live-pusher` 上下文 `LivePusherContext` 对象，`LivePusherContext` 与页面的 `<live-pusher />` 组件绑定，一个页面只能有一个 `live-pusher`，通过它可以操作对应的 `<live-pusher/>` 组件。 在自定义组件下，第一个参数传入组件实例this，以操作组件内 `<live-pusher/>` 组件

        **基础库 1.7.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-live-pusher.html](https://developers.weixin.qq.com/miniprogram/dev/api/api-live-pusher.html)
      END
    end
  end

  category do
    id '文件'
    entry do
      name '[文件](https://developers.weixin.qq.com/miniprogram/dev/api/file.html)'
    end
    entry do
      command 'wx.saveFile'
      notes <<-'END'
        保存文件到本地。**注意：saveFile 会把临时文件移动，因此调用成功后传入的 tempFilePath 将不可用**

        [https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxsavefileobject](https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxsavefileobject)
      END
    end
    entry do
      command 'wx.getFileInfo'
      notes <<-'END'
        获取文件信息

        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/getFileInfo.html](https://developers.weixin.qq.com/miniprogram/dev/api/getFileInfo.html)
      END
    end
    entry do
      command 'wx.getSavedFileList'
      notes <<-'END'
        获取本地已保存的文件列表

        [https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxgetsavedfilelistobject](https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxgetsavedfilelistobject)
      END
    end
    entry do
      command 'wx.getSavedFileInfo'
      notes <<-'END'
        获取本地文件的文件信息。此接口只能用于获取已保存到本地的文件，若需要获取临时文件信息，请使用 [wx.getFileInfo](https://developers.weixin.qq.com/miniprogram/dev/api/getFileInfo.html) 接口。

        [https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxgetsavedfileinfoobject](https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxgetsavedfileinfoobject)
      END
    end
    entry do
      command 'wx.removeSavedFile'
      notes <<-'END'
        删除本地存储的文件

        [https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxremovesavedfileobject](https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxremovesavedfileobject)
      END
    end
    entry do
      command 'wx.openDocument'
      notes <<-'END'
        新开页面打开文档，支持格式：`doc`, `xls`, `ppt`, `pdf`, `docx`, `xlsx`, `pptx`

        [https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxopendocumentobject](https://developers.weixin.qq.com/miniprogram/dev/api/file.html#wxopendocumentobject)
      END
    end
  end

  category do
    id '数据缓存'
    entry do
      name '[数据缓存](https://developers.weixin.qq.com/miniprogram/dev/api/data.html)'
      notes <<-'END'
        每个微信小程序都可以有自己的本地缓存，可以通过 `wx.setStorage`（`wx.setStorageSync`）、`wx.getStorage`（`wx.getStorageSync`）、`wx.clearStorage`（`wx.clearStorageSync`）可以对本地缓存进行设置、获取和清理。同一个微信用户，同一个小程序 storage 上限为 **10MB**。localStorage 以用户维度隔离，同一台设备上，A 用户无法读取到 B 用户的数据。

        **注意：** 如果用户储存空间不足，我们会清空最近最久未使用的小程序的本地缓存。我们不建议将关键信息全部存在 localStorage，以防储存空间不足或用户换设备的情况。
      END
    end
    entry do
      command 'wx.setStorage'
      notes <<-'END'
        将数据存储在本地缓存中指定的 key 中，会覆盖掉原来该 key 对应的内容，这是一个异步接口。

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxsetstorageobject](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxsetstorageobject)
      END
    end
    entry do
      command 'wx.setStorageSync'
      notes <<-'END'
        将 data 存储在本地缓存中指定的 key 中，会覆盖掉原来该 key 对应的内容，这是一个同步接口。

        ```
        wx.setStorageSync(KEY,DATA)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxsetstoragesynckeydata](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxsetstoragesynckeydata)
      END
    end
    entry do
      command 'wx.getStorage'
      notes <<-'END'
        从本地缓存中异步获取指定 key 对应的内容。

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstorageobject](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstorageobject)
      END
    end
    entry do
      command 'wx.getStorageSync'
      notes <<-'END'
        从本地缓存中同步获取指定 key 对应的内容。

        ```
        wx.getStorageSync(KEY)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstoragesynckey](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstoragesynckey)
      END
    end
    entry do
      command 'wx.getStorageInfo'
      notes <<-'END'
        异步获取当前storage的相关信息

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstorageinfoobject](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstorageinfoobject)
      END
    end
    entry do
      command 'wx.getStorageInfoSync'
      notes <<-'END'
        同步获取当前storage的相关信息

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstorageinfosync](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxgetstorageinfosync)
      END
    end
    entry do
      command 'wx.removeStorage'
      notes <<-'END'
        从本地缓存中异步移除指定 key 。

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxremovestorageobject](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxremovestorageobject)
      END
    end
    entry do
      command 'wx.removeStorageSync'
      notes <<-'END'
        从本地缓存中同步移除指定 key 。

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxremovestoragesynckey](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxremovestoragesynckey)
      END
    end
    entry do
      command 'wx.clearStorage'
      notes <<-'END'
        清理本地数据缓存。

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxclearstorage](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxclearstorage)
      END
    end
    entry do
      command 'wx.clearStorageSync'
      notes <<-'END'
        同步清理本地数据缓存

        [https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxclearstoragesync](https://developers.weixin.qq.com/miniprogram/dev/api/data.html#wxclearstoragesync)
      END
    end
  end
  category do
    id '位置'
    entry do
      name '[位置](https://developers.weixin.qq.com/miniprogram/dev/api/location.html)'
    end
    entry do
      name '★ [获取位置](https://developers.weixin.qq.com/miniprogram/dev/api/location.html)'
    end
    entry do
      command 'wx.getLocation'
      notes <<-'END'
        获取当前的地理位置、速度。当用户离开小程序后，此接口无法调用；当用户点击“显示在聊天顶部”时，此接口可继续调用。

        [https://developers.weixin.qq.com/miniprogram/dev/api/location.html#wxgetlocationobject](https://developers.weixin.qq.com/miniprogram/dev/api/location.html#wxgetlocationobject)
      END
    end
    entry do
      command 'wx.chooseLocation'
      notes <<-'END'
        打开地图选择位置。

        **需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.userLocation**

        [https://developers.weixin.qq.com/miniprogram/dev/api/location.html#wxchooselocationobject](https://developers.weixin.qq.com/miniprogram/dev/api/location.html#wxchooselocationobject)
      END
    end
    entry do
      name '★ [查看位置](https://developers.weixin.qq.com/miniprogram/dev/api/location.html#wxopenlocationobject)'
    end
    entry do
      command 'wx.openLocation'
      notes <<-'END'
        ​使用微信内置地图查看位置。

        **需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.userLocation**

        [https://developers.weixin.qq.com/miniprogram/dev/api/location.html#wxopenlocationobject](https://developers.weixin.qq.com/miniprogram/dev/api/location.html#wxopenlocationobject)
      END
    end
    entry do
      name '★ [地图组件控制](https://developers.weixin.qq.com/miniprogram/dev/api/api-map.html)'
    end
    entry do
      command 'wx.createMapContext'
      notes <<-'END'
        ​创建并返回 map 上下文 `mapContext` 对象。在自定义组件下，第二个参数传入组件实例this，以操作组件内 `<map/>` 组件

        ```
        wx.createMapContext(mapId, this)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-map.html#wxcreatemapcontextmapid](https://developers.weixin.qq.com/miniprogram/dev/api/api-map.html#wxcreatemapcontextmapid)
      END
    end
  end

  category do
    id '设备'
    entry do
      name '[设备](https://developers.weixin.qq.com/miniprogram/dev/api/systeminfo.html)'
    end
    entry do
      name '★ [系统信息](https://developers.weixin.qq.com/miniprogram/dev/api/systeminfo.html)'
    end
    entry do
      command 'wx.getSystemInfo'
      notes <<-'END'
        获取系统信息。

        [https://developers.weixin.qq.com/miniprogram/dev/api/systeminfo.html#wxgetsysteminfoobject](https://developers.weixin.qq.com/miniprogram/dev/api/systeminfo.html#wxgetsysteminfoobject)
      END
    end
    entry do
      command 'wx.getSystemInfoSync'
      notes <<-'END'
        获取系统信息同步接口

        [https://developers.weixin.qq.com/miniprogram/dev/api/systeminfo.html#wxgetsysteminfosync](https://developers.weixin.qq.com/miniprogram/dev/api/systeminfo.html#wxgetsysteminfosync)
      END
    end
    entry do
      command 'wx.canIUse'
      notes <<-'END'
        判断小程序的API，回调，参数，组件等是否在当前版本可用。

        **注意：此接口从基础库 1.1.1 版本开始支持。**

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-caniuse.html](https://developers.weixin.qq.com/miniprogram/dev/api/api-caniuse.html)
      END
    end
    entry do
      name '★ [网络状态](https://developers.weixin.qq.com/miniprogram/dev/api/device.html)'
    end
    entry do
      command 'wx.getNetworkType'
      notes <<-'END'
        获取网络类型。

        [https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxgetnetworktypeobject](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxgetnetworktypeobject)
      END
    end
    entry do
      command 'wx.onNetworkStatusChange'
      notes <<-'END'
        监听网络状态变化。

        ```
        wx.onNetworkStatusChange(CALLBACK)
        ```

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxonnetworkstatuschangecallback](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxonnetworkstatuschangecallback)
      END
    end
    entry do
      name '★ [加速度计](https://developers.weixin.qq.com/miniprogram/dev/api/accelerometer.html)'
    end
    entry do
      command 'wx.onAccelerometerChange'
      notes <<-'END'
        监听加速度数据，频率：`5次/秒`，接口调用后会自动开始监听，可使用 `wx.stopAccelerometer` 停止监听。

        ```
        wx.onAccelerometerChange(CALLBACK)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/accelerometer.html#wxonaccelerometerchangecallback](https://developers.weixin.qq.com/miniprogram/dev/api/accelerometer.html#wxonaccelerometerchangecallback)
      END
    end
    entry do
      command 'wx.startAccelerometer'
      notes <<-'END'
        开始监听加速度数据。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/accelerometer.html#wxstartaccelerometerobject](https://developers.weixin.qq.com/miniprogram/dev/api/accelerometer.html#wxstartaccelerometerobject)
      END
    end
    entry do
      command 'wx.stopAccelerometer'
      notes <<-'END'
        停止监听加速度数据。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/accelerometer.html#wxstopaccelerometerobject](https://developers.weixin.qq.com/miniprogram/dev/api/accelerometer.html#wxstopaccelerometerobject)
      END
    end
    entry do
      name '★ [罗盘](https://developers.weixin.qq.com/miniprogram/dev/api/compass.html)'
    end
    entry do
      command 'wx.onCompassChange'
      notes <<-'END'
        监听罗盘数据，频率：`5次/秒`，接口调用后会自动开始监听，可使用`wx.stopCompass`停止监听。

        ```
        wx.onCompassChange(CALLBACK)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/compass.html#wxoncompasschangecallback](https://developers.weixin.qq.com/miniprogram/dev/api/compass.html#wxoncompasschangecallback)
      END
    end
    entry do
      command 'wx.startCompass'
      notes <<-'END'
        开始监听罗盘数据。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/compass.html#wxstartcompassobject](https://developers.weixin.qq.com/miniprogram/dev/api/compass.html#wxstartcompassobject)
      END
    end
    entry do
      command 'wx.stopCompass'
      notes <<-'END'
        停止监听罗盘数据。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/compass.html#wxstopcompassobject](https://developers.weixin.qq.com/miniprogram/dev/api/compass.html#wxstopcompassobject)
      END
    end
    entry do
      name '★ [拨打电话](https://developers.weixin.qq.com/miniprogram/dev/api/phonecall.html)'
    end
    entry do
      command 'wx.makePhoneCall'
      notes 'https://developers.weixin.qq.com/miniprogram/dev/api/phonecall.html#wxmakephonecallobject'
    end
    entry do
      name '★ [扫码](https://developers.weixin.qq.com/miniprogram/dev/api/scancode.html)'
    end
    entry do
      command 'wx.scanCode'
      notes <<-'END'
        调起客户端扫码界面，扫码成功后返回对应的结果

        [https://developers.weixin.qq.com/miniprogram/dev/api/scancode.html#wxscancodeobject](https://developers.weixin.qq.com/miniprogram/dev/api/scancode.html#wxscancodeobject)
      END
    end
    entry do
      name '★ [剪贴板](https://developers.weixin.qq.com/miniprogram/dev/api/clipboard.html)'
    end
    entry do
      command 'wx.setClipboardData'
      notes <<-'END'
        设置系统剪贴板的内容

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/clipboard.html#wxsetclipboarddataobject](https://developers.weixin.qq.com/miniprogram/dev/api/clipboard.html#wxsetclipboarddataobject)
      END
    end
    entry do
      command 'wx.getClipboardData'
      notes <<-'END'
        获取系统剪贴板内容

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/clipboard.html#wxgetclipboarddataobject](https://developers.weixin.qq.com/miniprogram/dev/api/clipboard.html#wxgetclipboarddataobject)
      END
    end
    entry do
      name '★ [蓝牙](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html)'
      notes <<-'END'
        **基础库版本 1.1.0 开始支持，低版本需做兼容处理**

        目前不支持在开发者工具上进行调试，需要使用真机才能正常调用小程序蓝牙接口

        **iOS 微信客户端 6.5.6 版本开始支持，Android 6.5.7 版本开始支持**
      END
    end
    entry do
      command 'wx.openBluetoothAdapter'
      notes <<-'END'
        初始化小程序蓝牙模块，生效周期为调用`wx.openBluetoothAdapter`至调用`wx.closeBluetoothAdapter`或小程序被销毁为止。 在小程序蓝牙适配器模块生效期间，开发者可以正常调用下面的小程序API，并会收到蓝牙模块相关的on回调。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxopenbluetoothadapterobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxopenbluetoothadapterobject)
      END
    end
    entry do
      command 'wx.closeBluetoothAdapter'
      notes <<-'END'
        关闭蓝牙模块，使其进入未初始化状态。调用该方法将断开所有已建立的链接并释放系统资源。建议在使用小程序蓝牙流程后调用，与`wx.openBluetoothAdapter`成对调用。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxclosebluetoothadapterobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxclosebluetoothadapterobject)
      END
    end
    entry do
      command 'wx.getBluetoothAdapterState'
      notes <<-'END'
        获取本机蓝牙适配器状态

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbluetoothadapterstateobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbluetoothadapterstateobject)
      END
    end
    entry do
      command 'wx.onBluetoothAdapterStateChange'
      notes <<-'END'
        监听蓝牙适配器状态变化事件

        ```
        wx.onBluetoothAdapterStateChange(CALLBACK)
        ```

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonbluetoothadapterstatechangecallback](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonbluetoothadapterstatechangecallback)
      END
    end
    entry do
      command 'wx.startBluetoothDevicesDiscovery'
      notes <<-'END'
        开始搜寻附近的蓝牙外围设备。注意，该操作比较耗费系统资源，请在搜索并连接到设备后调用 stop 方法停止搜索。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxstartbluetoothdevicesdiscoveryobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxstartbluetoothdevicesdiscoveryobject)
      END
    end
    entry do
      command 'wx.stopBluetoothDevicesDiscovery'
      notes <<-'END'
        停止搜寻附近的蓝牙外围设备。若已经找到需要的蓝牙设备并不需要继续搜索时，建议调用该接口停止蓝牙搜索。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxstopbluetoothdevicesdiscoveryobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxstopbluetoothdevicesdiscoveryobject)
      END
    end
    entry do
      command 'wx.getBluetoothDevices'
      notes <<-'END'
        获取在小程序蓝牙模块生效期间所有已发现的蓝牙设备，包括已经和本机处于连接状态的设备。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbluetoothdevicesobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbluetoothdevicesobject)
      END
    end
    entry do
      command 'wx.getConnectedBluetoothDevices'
      notes <<-'END'
        根据 uuid 获取处于已连接状态的设备

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetconnectedbluetoothdevicesobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetconnectedbluetoothdevicesobject)
      END
    end
    entry do
      command 'wx.onBluetoothDeviceFound'
      notes <<-'END'
        监听寻找到新设备的事件

        ```
        wx.onBluetoothDeviceFound(CALLBACK)
        ```

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonbluetoothdevicefoundcallback](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonbluetoothdevicefoundcallback)
      END
    end
    entry do
      command 'wx.createBLEConnection'
      notes <<-'END'
        连接低功耗蓝牙设备。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        若小程序在之前已有搜索过某个蓝牙设备，并成功建立链接，可直接传入之前搜索获取的deviceId直接尝试连接该设备，无需进行搜索操作。

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxcreatebleconnectionobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxcreatebleconnectionobject)
      END
    end
    entry do
      command 'wx.closeBLEConnection'
      notes <<-'END'
        断开与低功耗蓝牙设备的连接

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxclosebleconnectionobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxclosebleconnectionobject)
      END
    end
    entry do
      command 'wx.getBLEDeviceServices'
      notes <<-'END'
        获取蓝牙设备所有 service（服务）

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbledeviceservicesobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbledeviceservicesobject)
      END
    end
    entry do
      command 'wx.getBLEDeviceCharacteristics'
      notes <<-'END'
        获取蓝牙设备某个服务中的所有 characteristic（特征值）

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbledevicecharacteristicsobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxgetbledevicecharacteristicsobject)
      END
    end
    entry do
      command 'wx.readBLECharacteristicValue'
      notes <<-'END'
        读取低功耗蓝牙设备的特征值的二进制数据值。注意：必须设备的特征值支持read才可以成功调用，具体参照 characteristic 的 properties 属性

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxreadblecharacteristicvalueobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxreadblecharacteristicvalueobject)
      END
    end
    entry do
      command 'wx.writeBLECharacteristicValue'
      notes <<-'END'
        向低功耗蓝牙设备特征值中写入二进制数据。注意：必须设备的特征值支持write才可以成功调用，具体参照 characteristic 的 properties 属性

        *tips: 并行调用多次读写接口存在读写失败的可能性*

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxwriteblecharacteristicvalueobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxwriteblecharacteristicvalueobject)
      END
    end
    entry do
      command 'wx.notifyBLECharacteristicValueChange'
      notes <<-'END'
        启用低功耗蓝牙设备特征值变化时的 notify 功能，订阅特征值。注意：必须设备的特征值支持`notify`或者`indicate`才可以成功调用，具体参照 `characteristic` 的 `properties` 属性

        另外，必须先启用`notify`才能监听到设备 `characteristicValueChange` 事件

        **基础库 1.1.1 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxnotifyblecharacteristicvaluechangeobject](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxnotifyblecharacteristicvaluechangeobject)
      END
    end
    entry do
      command 'wx.onBLEConnectionStateChange'
      notes <<-'END'
        监听低功耗蓝牙连接状态的改变事件，包括开发者主动连接或断开连接，设备丢失，连接异常断开等等

        ```
        wx.onBLEConnectionStateChange(CALLBACK)
        ```

        **基础库 1.1.1 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonbleconnectionstatechangecallback](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonbleconnectionstatechangecallback)
      END
    end
    entry do
      command 'wx.onBLECharacteristicValueChange'
      notes <<-'END'
        监听低功耗蓝牙设备的特征值变化。必须先启用`notify`接口才能接收到设备推送的notification。

        ```
        wx.onBLECharacteristicValueChange(CALLBACK)
        ```

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonblecharacteristicvaluechangecallback](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#wxonblecharacteristicvaluechangecallback)
      END
    end
    entry do
      name '[蓝牙错误码（errCode）列表](https://developers.weixin.qq.com/miniprogram/dev/api/bluetooth.html#%E8%93%9D%E7%89%99%E9%94%99%E8%AF%AF%E7%A0%81errcode%E5%88%97%E8%A1%A8)'
      notes <<-'END'
        ```
        | 错误码  | 说明                  | 备注                                         
        | ------ | -------------------- | -------------------------------------------- 
        | 0      | ok                   | 正常                              
        | ------ | -------------------- | --------------------------------------------            
        | 10000  | not init             | 未初始化蓝牙适配器                   
        | ------ | -------------------- | --------------------------------------------         
        | 10001  | not available        | 当前蓝牙适配器不可用                  
        | ------ | -------------------- | --------------------------------------------        
        | 10002  | no device            | 没有找到指定设备                             
        | ------ | -------------------- | -------------------------------------------- 
        | 10003  | connection fail      | 连接失败                                     
        | ------ | -------------------- | -------------------------------------------- 
        | 10004  | no service           | 没有找到指定服务                             
        | ------ | -------------------- | -------------------------------------------- 
        | 10005  | no characteristic    | 没有找到指定特征值                           
        | ------ | -------------------- | -------------------------------------------- 
        | 10006  | no connection        | 当前连接已断开                               
        | ------ | -------------------- | -------------------------------------------- 
        | 10007  | property not support | 当前特征值不支持此操作                       
        | ------ | -------------------- | -------------------------------------------- 
        | 10008  | system error         | 其余所有系统上报的异常                       
        | ------ | -------------------- | -------------------------------------------- 
        | 10009  | system not support   | Android 系统特有，系统版本低于 4.3 不支持BLE 
        ```
      END
    end
    entry do
      name '★ [iBeacon](https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html)'
    end
    entry do
      command 'wx.startBeaconDiscovery'
      notes <<-'END'
        开始搜索附近的`iBeacon`设备

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxstartbeacondiscoveryobject](https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxstartbeacondiscoveryobject)
      END
    end
    entry do
      command 'wx.stopBeaconDiscovery'
      notes <<-'END'
        停止搜索附近的`iBeacon`设备

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxstopbeacondiscoveryobject](https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxstopbeacondiscoveryobject)
      END
    end
    entry do
      command 'wx.getBeacons'
      notes <<-'END'
        获取所有已搜索到的`iBeacon`设备

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxgetbeaconsobject](https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxgetbeaconsobject)
      END
    end
    entry do
      command 'wx.onBeaconUpdate'
      notes <<-'END'
        监听 `iBeacon` 设备的更新事件

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxonbeaconupdatecallback](https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxonbeaconupdatecallback)
      END
    end
    entry do
      command 'wx.onBeaconServiceChange'
      notes <<-'END'
        监听 `iBeacon` 服务的状态变化

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxonbeaconservicechangecallback](https://developers.weixin.qq.com/miniprogram/dev/api/iBeacon.html#wxonbeaconservicechangecallback)
      END
    end
    entry do
      name 'iBeacon 错误码（errCode）列表'
      notes <<-'END'
        ```
        | 错误码  | 说明                           | 备注             
        | ------ | ----------------------------- | ----------------
        | 0      | ok                            | 正常             
        | ------ | ----------------------------- | ----------------
        | 11000  | unsupport                     | 系统或设备不支持 
        | ------ | ----------------------------- | ----------------
        | 11001  | bluetooth service unavailable | 蓝牙服务不可用   
        | ------ | ----------------------------- | ----------------
        | 11002  | location service unavailable  | 位置服务不可用   
        | ------ | ----------------------------- | ----------------
        | 11003  | already start                 | 已经开始搜索     
        ```
      END
    end
    entry do
      name '[屏幕亮度](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxsetscreenbrightnessobject)'
    end
    entry do
      command 'wx.setScreenBrightness'
      notes <<-'END'
        设置屏幕亮度。

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxsetscreenbrightnessobject](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxsetscreenbrightnessobject)
      END
    end
    entry do
      command 'wx.getScreenBrightness'
      notes <<-'END'
        获取屏幕亮度。

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxgetscreenbrightnessobject](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxgetscreenbrightnessobject)
      END
    end
    entry do
      command 'wx.setKeepScreenOn'
      notes <<-'END'
        设置是否保持常亮状态。仅在当前小程序生效，离开小程序后设置失效。

        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/setKeepScreenOn.html](https://developers.weixin.qq.com/miniprogram/dev/api/setKeepScreenOn.html)
      END
    end
    entry do
      name '[用户截屏事件](https://developers.weixin.qq.com/miniprogram/dev/api/onUserCaptureScreen.html)'
    end
    entry do
      command 'wx.onUserCaptureScreen'
      notes <<-'END'
        监听用户主动截屏事件，用户使用系统截屏按键截屏时触发此事件

        ```
        wx.onUserCaptureScreen(CALLBACK)
        ```

        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/onUserCaptureScreen.html](https://developers.weixin.qq.com/miniprogram/dev/api/onUserCaptureScreen.html)
      END
    end
    entry do
      name '[振动](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxvibratelongobject)'
    end
    entry do
      command 'wx.vibrateLong'
      notes <<-'END'
        使手机发生较长时间的振动（400ms）

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxvibratelongobject](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxvibratelongobject)
      END
    end
    entry do
      command 'wx.vibrateShort'
      notes <<-'END'
        使手机发生较短时间的振动（15ms）

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxvibrateshortobject](https://developers.weixin.qq.com/miniprogram/dev/api/device.html#wxvibrateshortobject)
      END
    end
    entry do
      name '[手机联系人](https://developers.weixin.qq.com/miniprogram/dev/api/phone-contact.html)'
    end
    entry do
      command 'wx.addPhoneContact'
      notes <<-'END'
        调用后，用户可以选择将该表单以“新增联系人”或“添加到已有联系人”的方式，写入手机系统通讯录，完成手机通讯录联系人和联系方式的增加。

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/phone-contact.html#wxaddphonecontactobject](https://developers.weixin.qq.com/miniprogram/dev/api/phone-contact.html#wxaddphonecontactobject)
      END
    end
    entry do
      name '[NFC](https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html)'
      notes <<-'END'
        暂仅支持 HCE（基于主机的卡模拟）模式，即将安卓手机模拟成实体智能卡。

        适用机型：支持 NFC 功能，且系统版本为Android5.0及以上的手机

        适用卡范围：符合ISO 14443-4标准的CPU卡
      END
    end
    entry do
      command 'wx.getHCEState'
      notes <<-'END'
        判断当前设备是否支持 HCE 能力。

        **基础库 1.7.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxgethcestateobject](https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxgethcestateobject)
      END
    end
    entry do
      command 'wx.startHCE'
      notes <<-'END'
        初始化 NFC 模块。

        **基础库 1.7.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxstarthceobject](https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxstarthceobject)
      END
    end
    entry do
      command 'wx.stopHCE'
      notes <<-'END'
        关闭 NFC 模块。仅在安卓系统下有效。

        **基础库 1.7.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxstophceobject](https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxstophceobject)
      END
    end
    entry do
      command 'wx.onHCEMessage'
      notes <<-'END'
        监听 NFC 设备的消息回调，并在回调中处理。返回参数中 `messageType` 表示消息类型，目前有如下值：

          * 1：消息为HCE Apdu Command类型，小程序需对此指令进行处理，并调用 `sendHCEMessage` 接口返回处理指令；
          * 2：消息为设备离场事件

        ```
        wx.onHCEMessage(CALLBACK)
        ```

        **基础库 1.7.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxonhcemessagecallback](https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wxonhcemessagecallback)
      END
    end
    entry do
      command 'wx.sendHCEMessage'
      notes <<-'END'
        发送 NFC 消息。仅在安卓系统下有效。

        **基础库 1.7.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wx.sendhcemessageobject](https://developers.weixin.qq.com/miniprogram/dev/api/nfc.html#wx.sendhcemessageobject)
      END
    end
    entry do
      name 'NFC 错误码（errCode）列表'
      notes <<-'END'
        每个接口调用的时候，都会返回 `errCode` 字段。

        ```
        | 错误码 | 说明                                  
        | ------ | -------------------------------------
        | 0      | Ok                                    
        | ------ | -------------------------------------
        | 13000  | 当前设备不支持 NFC                    
        | ------ | -------------------------------------
        | 13001  | 当前设备支持 NFC，但系统NFC开关未开启 
        | ------ | -------------------------------------
        | 13002  | 当前设备支持 NFC，但不支持HCE         
        | ------ | -------------------------------------
        | 13003  | AID 列表参数格式错误                  
        | ------ | -------------------------------------
        | 13004  | 未设置微信为默认NFC支付应用           
        | ------ | -------------------------------------
        | 13005  | 返回的指令不合法                      
        | ------ | -------------------------------------
        | 13006  | 注册 AID 失败                         
        ```
      END
    end
    entry do
      name '[Wi-Fi](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html)'
      notes <<-'END'
        在小程序中支持搜索周边的 Wi-Fi，同时可以针对指定 Wi-Fi，传入密码发起连接。

        该系列接口为系统原生能力，如需查看“微信连Wi-Fi”能力及配置跳转小程序，请参考文档。

        **连接指定 Wi-Fi 接口调用时序：**

        * Android： startWifi —> connectWifi —> onWifiConnected
        * iOS（仅iOS 11及以上版本支持）：startWifi —> connectWifi —> onWifiConnected

        **连周边 Wi-Fi 接口调用时序：**

        * Android startWifi —> getWifiList —> onGetWifiList —> connectWifi —> onWifiConnected
        * iOS（iOS 11.0及11.1版本因系统原因暂不支持）：startWifi —> getWifiList —> onGetWifiList —> setWifiList —> onWifiConnected

        **注意：**

        * Wi-Fi 相关接口暂不可用 wx.canIUse 接口判断。
        * Android 6.0 以上版本，在没有打开定位开关的时候会导致设备不能正常获取周边的 Wi-Fi 信息。
      END
    end
    entry do
      command 'wx.startWifi'
      notes <<-'END'
        初始化 Wi-Fi 模块。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxstartwifiobject](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxstartwifiobject)
      END
    end
    entry do
      command 'wx.stopWifi'
      notes <<-'END'
        关闭 Wi-Fi 模块。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxstopwifiobject](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxstopwifiobject)
      END
    end
    entry do
      command 'wx.connectWifi'
      notes <<-'END'
        连接 Wi-Fi。若已知 Wi-Fi 信息，可以直接利用该接口连接。仅 Android 与 iOS 11 以上版本支持。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxconnectwifiobject](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxconnectwifiobject)
      END
    end
    entry do
      command 'wx.getWifiList'
      notes <<-'END'
        请求获取 Wi-Fi 列表，在 onGetWifiList 注册的回调中返回 wifiList 数据。iOS 将跳转到系统的 Wi-Fi 界面，Android 不会跳转。 **iOS 11.0 及 iOS 11.1 两个版本因系统问题，该方法失效。但在 iOS 11.2 中已修复。**

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxgetwifilistobject](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxgetwifilistobject)
      END
    end
    entry do
      command 'wx.onGetWifiList'
      notes <<-'END'
        监听在获取到 Wi-Fi 列表数据时的事件，在回调中将返回 wifiList。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxongetwifilistcallback](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxongetwifilistcallback)
      END
    end
    entry do
      command 'wx.setWifiList'
      notes <<-'END'
        **iOS特有接口** 在 `onGetWifiList` 回调后，利用接口设置 wifiList 中 AP 的相关信息。

        注意：

        * 该接口只能在 `onGetWifiList` 回调之后才能调用。
        * 此时客户端会挂起，等待小程序设置 Wi-Fi 信息，请务必尽快调用该接口，若无数据请传入一个空数组。
        * 有可能随着周边 Wi-Fi 列表的刷新，单个流程内收到多次带有存在重复的 Wi-Fi 列表的回调。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxsetwifilistobject](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxsetwifilistobject)
      END
    end
    entry do
      command 'wx.onWifiConnected'
      notes <<-'END'
        监听连接上 Wi-Fi 的事件。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxonwificonnectedcallback](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxonwificonnectedcallback)
      END
    end
    entry do
      command 'wx.getConnectedWifi'
      notes <<-'END'
        获取已连接中的 Wi-Fi 信息

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxgetconnectedwifiobject](https://developers.weixin.qq.com/miniprogram/dev/api/wifi.html#wxgetconnectedwifiobject)
      END
    end
    entry do
      name 'Wi-Fi 错误码（errCode）列表'
      notes <<-'END'
        每个接口调用的时候，都会返回 `errCode` 字段。

        ```
        | 错误码  | 说明                   | 备注                                         
        | ------ | --------------------- | --------------------------------------------
        | 0      | ok                    | 正常                                         
        | ------ | --------------------- | --------------------------------------------
        | 12000  | not init              | 未先调用startWifi接口                        
        | ------ | --------------------- | --------------------------------------------
        | 12001  | system not support    | 当前系统不支持相关能力                       
        | ------ | --------------------- | --------------------------------------------
        | 12002  | password error        | Wi-Fi 密码错误                               
        | ------ | --------------------- | --------------------------------------------
        | 12003  | connection timeout    | 连接超时                                     
        | ------ | --------------------- | --------------------------------------------
        | 12004  | duplicate request     | 重复连接 Wi-Fi                               
        | ------ | --------------------- | --------------------------------------------
        | 12005  | wifi not turned on    | Android特有，未打开 Wi-Fi 开关               
        | ------ | --------------------- | --------------------------------------------
        | 12006  | gps not turned on     | Android特有，未打开 GPS 定位开关             
        | ------ | --------------------- | --------------------------------------------
        | 12007  | user denied           | 用户拒绝授权链接 Wi-Fi                       
        | ------ | --------------------- | --------------------------------------------
        | 12008  | invalid SSID          | 无效SSID                                     
        | ------ | --------------------- | --------------------------------------------
        | 12009  | system config err     | 系统运营商配置拒绝连接 Wi-Fi                 
        | ------ | --------------------- | --------------------------------------------
        | 12010  | system internal error | 系统其他错误，需要在errmsg打印具体的错误原因 
        | ------ | --------------------- | --------------------------------------------
        | 12011  | weapp in background   | 应用在后台无法配置 Wi-Fi                                           
        ```
      END
    end
  end

  category do
    id '界面'
    entry do
      name '[界面](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html)'
    end
    entry do
      name '★ [交互反馈](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html)'
    end
    entry do
      command 'wx.showToast'
      notes <<-'END'
        显示消息提示框

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowtoastobject](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowtoastobject)
      END
    end
    entry do
      command 'wx.showLoading'
      notes <<-'END'
        显示 loading 提示框, 需主动调用 [wx.hideLoading](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxhideloading) 才能关闭提示框

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowloadingobject](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowloadingobject)
      END
    end
    entry do
      command 'wx.hideToast'
      notes <<-'END'
        隐藏消息提示框

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxhidetoast](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxhidetoast)
      END
    end
    entry do
      command 'wx.hideLoading'
      notes <<-'END'
        隐藏 loading 提示框

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxhideloading](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxhideloading)
      END
    end
    entry do
      command 'wx.showModal'
      notes <<-'END'
        显示模态弹窗

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowmodalobject](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowmodalobject)
      END
    end
    entry do
      command 'wx.showActionSheet'
      notes <<-'END'
        显示操作菜单

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowactionsheetobject](https://developers.weixin.qq.com/miniprogram/dev/api/api-react.html#wxshowactionsheetobject)
      END
    end
    entry do
      name '★ [设置导航条](https://developers.weixin.qq.com/miniprogram/dev/api/ui.html)'
    end
    entry do
      command 'wx.setNavigationBarTitle'
      notes <<-'END'
        动态设置当前页面的标题。

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxsetnavigationbartitleobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxsetnavigationbartitleobject)
      END
    end
    entry do
      command 'wx.showNavigationBarLoading'
      notes <<-'END'
        在当前页面显示导航条加载动画。

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxshownavigationbarloading](https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxshownavigationbarloading)
      END
    end
    entry do
      command 'wx.hideNavigationBarLoading'
      notes <<-'END'
        隐藏导航条加载动画。

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxhidenavigationbarloading](https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxhidenavigationbarloading)
      END
    end
    entry do
      command 'wx.setNavigationBarColor'
      notes <<-'END'
        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/setNavigationBarColor.html](https://developers.weixin.qq.com/miniprogram/dev/api/setNavigationBarColor.html)
      END
    end
    entry do
      name '★ [设置tabBar](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html)'
    end
    entry do
      command 'wx.setNavigationBarColor'
      notes <<-'END'
        为 tabBar 某一项的右上角添加文本
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxsettabbarbadgeobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxsettabbarbadgeobject)
      END
    end
    entry do
      command 'wx.removeTabBarBadge'
      notes <<-'END'
        移除 tabBar 某一项右上角的文本
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxremovetabbarbadgeobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxremovetabbarbadgeobject)
      END
    end
    entry do
      command 'wx.showTabBarRedDot'
      notes <<-'END'
        显示 tabBar 某一项的右上角的红点
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxshowtabbarreddotobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxshowtabbarreddotobject)
      END
    end
    entry do
      command 'wx.hideTabBarRedDot'
      notes <<-'END'
        隐藏 tabBar 某一项的右上角的红点
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxhidetabbarreddotobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxhidetabbarreddotobject)
      END
    end
    entry do
      command 'wx.setTabBarStyle'
      notes <<-'END'
        动态设置 tabBar 的整体样式
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxsettabbarstyleobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxsettabbarstyleobject)
      END
    end
    entry do
      command 'wx.setTabBarItem'
      notes <<-'END'
        动态设置 tabBar 某一项的内容
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxsettabbaritemobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxsettabbaritemobject)
      END
    end
    entry do
      command 'wx.showTabBar'
      notes <<-'END'
        显示 tabBar
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxshowtabbarobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxshowtabbarobject)
      END
    end
    entry do
      command 'wx.hideTabBar'
      notes <<-'END'
        隐藏 tabBar
        
        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxhidetabbarobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-tabbar.html#wxhidetabbarobject)
      END
    end
    entry do
      name '★ [设置置顶信息](https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxsettopbartextobject)'
    end
    entry do
      command 'wx.setTopBarText'
      notes <<-'END'
        动态设置置顶栏文字内容，只有当前小程序被置顶时能生效，如果当前小程序没有被置顶，也能调用成功，但是不会立即生效，只有在用户将这个小程序置顶后才换上设置的文字内容。**注意：调用成功后，需间隔 5s 才能再次调用此接口，如果在 5s 内再次调用此接口，会回调 fail，errMsg："setTopBarText: fail invoke too frequently"**

        **基础库 1.4.3 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxsettopbartextobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui.html#wxsettopbartextobject)
      END
    end
    entry do
      name '★ [导航](https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html)'
    end
    entry do
      command 'wx.navigateTo'
      notes <<-'END'
        保留当前页面，跳转到应用内的某个页面，使用`wx.navigateBack`可以返回到原页面。

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxnavigatetoobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxnavigatetoobject)
      END
    end
    entry do
      command 'wx.redirectTo'
      notes <<-'END'
        关闭当前页面，跳转到应用内的某个页面。

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxredirecttoobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxredirecttoobject)
      END
    end
    entry do
      command 'wx.switchTab'
      notes <<-'END'
        跳转到 tabBar 页面，并关闭其他所有非 tabBar 页面

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxswitchtabobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxswitchtabobject)
      END
    end
    entry do
      command 'wx.navigateBack'
      notes <<-'END'
        关闭当前页面，返回上一页面或多级页面。可通过 `getCurrentPages()` 获取当前的页面栈，决定需要返回几层。

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxnavigatebackobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxnavigatebackobject)
      END
    end
    entry do
      command 'wx.reLaunch'
      notes <<-'END'
        关闭所有页面，打开到应用内的某个页面。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxrelaunchobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxrelaunchobject)
      END
    end
    entry do
      name '★ [动画](https://developers.weixin.qq.com/miniprogram/dev/api/api-animation.html)'
    end
    entry do
      command 'wx.createAnimation'
      notes <<-'END'
        创建一个动画实例[animation](https://developers.weixin.qq.com/miniprogram/dev/api/api-animation.html#animation)。调用实例的方法来描述动画。最后通过动画实例的`export`方法导出动画数据传递给组件的`animation`属性。

        **注意: `export` 方法每次调用后会清掉之前的动画操作**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxrelaunchobject](https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html#wxrelaunchobject)
      END
    end
    entry do
      name '★ [位置](https://developers.weixin.qq.com/miniprogram/dev/api/scroll.html)'
    end
    entry do
      command 'wx.pageScrollTo'
      notes <<-'END'
        将页面滚动到目标位置。

        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/scroll.html](https://developers.weixin.qq.com/miniprogram/dev/api/scroll.html)
      END
    end
    entry do
      name '★ [绘图 canvas](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/reference.html)'
    end
    entry do
      command 'intro'
      name 'canvas intro'
      notes <<-'END'
        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/intro.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/intro.html)

        **在 Canvas 上画图**

        所有在 `<canvas/>` 中的画图必须用 JavaScript 完成

        ![intro](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/fill-rect.png?t=201842)
      END
    end
    entry do
      command 'coordinates'
      name 'canvas coordinates'
      notes <<-'END'
        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/coordinates.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/coordinates.html)

        **Canvas 坐标系**

        ![coordinates](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/coordinates.gif?t=201842)
      END
    end
    entry do
      command 'gradient'
      name 'canvas gradient'
      notes <<-'END'
        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/gradient.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/gradient.html)

        **渐变**

        渐变能用于填充一个矩形，圆，线，文字等。填充色可以不固定位固定的一种颜色。

        我们提供了两种颜色渐变的方式：

        * `createLinearGradient(x, y, x1, y1)` - 创建一个线性的渐变
        * `createCircularGradient(x, y, r)` - 创建一个从圆心开始的渐变

        ![createLinearGradient](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/linear-gradient.png?t=201842)
        ![createCircularGradient](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/circular-gradient.png?t=201842)
      END
    end
    entry do
      command 'reference'
      name 'canvas reference'
      notes <<-'END'
        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/reference.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/reference.html)

        ### API 接口

        * [createCanvasContext](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-canvas-context.html) | 创建 canvas 绘图上下文(指定 canvasId)
        * [createContext](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-context.html)(不推荐使用) | 创建 canvas 绘图上下文
        * [drawCanvas](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw-canvas.html)(不推荐使用) | 进行绘图
        * [canvasToTempFilePath](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/temp-file.html) | 导出图片

        ### context 对象的方法列表

        #### 颜色，样式，阴影

        * [setFillStyle](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-fill-style.html) | 设置填充样式
        * [setStrokeStyle](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-stroke-style.html) | 设置线条样式
        * [setShadow](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html) | 设置阴影

        #### 渐变

        * [createLinearGradient](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-linear-gradient.html) | 创建一个线性渐变
        * [createCircularGradient](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-circular-gradient.html) | 创建一个圆形渐变
        * [addColorStop](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/add-color-stop.html) | 在渐变中的某一点添加一个颜色变化

        #### 线条样式

        * [setLineWidth](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-width.html) | 设置线条宽度
        * [setLineCap](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-cap.html) | 设置线条端点的样式
        * [setLineJoin](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-join.html) | 设置两线相交处的样式
        * [setMiterLimit](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-miter-limit.html) | 设置最大倾斜

        #### 矩形

        * [rect](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/rect.html) | 创建一个矩形
        * [fillRect](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-rect.html) | 填充一个矩形
        * [strokeRect](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/stroke-rect.html) | 画一个矩形（不填充）
        * [clearRect](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/clear-rect.html) | 在给定的矩形区域内，清除画布上的像素

        #### 路径

        * [fill](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill.html) | 对当前路径进行填充
        * [stroke](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/stroke.html) | 对当前路径进行描边
        * [beginPath](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/begin-path.html) | 开始一个路径
        * [closePath](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/close-path.html) | 关闭一个路径
        * [moveTo](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/move-to.html) | 把路径移动到画布中的指定点，但不创建线条
        * [lineTo](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/line-to.html) | 添加一个新点，然后在画布中创建从该点到最后指定点的线条
        * [arc](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/arc.html) | 添加一个弧形路径到当前路径，顺时针绘制
        * [quadraticCurveTo](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/quadratic-curve-to.html) | 创建二次方贝塞尔曲线
        * [bezierCurveTo](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/bezier-curve-to.html) | 创建三次方贝塞尔曲线

        #### 变形

        * [scale](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/scale.html) | 对横纵坐标进行缩放
        * [rotate](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/rotate.html) | 对坐标轴进行顺时针旋转
        * [translate](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/translate.html) | 对坐标原点进行缩放

        #### 文字

        * [fillText](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-text.html) | 在画布上绘制被填充的文本
        * [setFontSize](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-font-size.html) | 设置字体大小
        * [setTextBaseline](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-text-baseline.html) | 设置字体基准线
        * [setTextAlign](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-text-align.html) | 设置字体对齐方式 

        #### 图片

        * [drawImage](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw-image.html) | 在画布上绘制图像

        #### 混合

        * [setGlobalAlpha](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-global-alpha.html) | 设置全局画笔透明度

        #### 其他

        * [save](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/save-restore.html#save) | 保存当前绘图上下文
        * [restore](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/save-restore.html#restore) | 恢复之前保过的绘图上下文
        * [draw](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw.html) | 进行绘图
        * [getActions](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/get-actions.html)(不推荐使用) | 获取当前`context`上存储的绘图动作
        * [clearActions](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/clear-actions.html)(不推荐使用) | 清空当前的存储绘图动作
      END
    end
    entry do
      command 'color'
      name 'canvas color'
      notes <<-'END'
        可以用以下几种方式来表示 canvas 中使用的颜色：

        * RGB 颜色： 如 'rgb(255, 0, 0)'
        * RGBA 颜色：如 'rgba(255, 0, 0, 0.3)'
        * 16 进制颜色： 如 '#FF0000'
        * 预定义的颜色： 如 'red'

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/color.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/color.html)
      END
    end
    entry do
      command 'wx.createCanvasContext'
      notes <<-'END'
        创建 canvas 绘图上下文（指定 canvasId）。在自定义组件下，第二个参数传入组件实例this，以操作组件内 `<canvas/>` 组件

        **Tip:** 需要指定 canvasId，该绘图上下文只作用于对应的 `<canvas/>`

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-canvas-context.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-canvas-context.html)
      END
    end
    entry do
      command 'wx.createContext'
      notes <<-'END'
        **(不推荐使用)**

        创建并返回绘图上下文。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-context.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-context.html)
      END
    end
    entry do
      command 'wx.drawCanvas'
      notes <<-'END'
        **(不推荐使用)**

        用所提供的 actions 在所给的 canvas-id 对应的 canvas 上进行绘图。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw-canvas.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw-canvas.html)
      END
    end
    entry do
      command 'wx.canvasToTempFilePath'
      notes <<-'END'
        把当前画布指定区域的内容导出生成指定大小的图片，并返回文件路径。

        ```
        wx.canvasToTempFilePath(OBJECT, this)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/temp-file.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/temp-file.html)
      END
    end
    entry do
      command 'wx.canvasGetImageData'
      notes <<-'END'
        返回一个数组，用来描述 canvas 区域隐含的像素数据

        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/get-image-data.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/get-image-data.html)
      END
    end
    entry do
      command 'wx.canvasPutImageData'
      notes <<-'END'
        将像素数据绘制到画布的方法

        **基础库 1.9.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/put-image-data.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/put-image-data.html)
      END
    end
    entry do
      command 'canvasContext.setFillStyle'
      notes <<-'END'
        设置填充色。

        **Tip:** 如果没有设置 `fillStyle`，默认颜色为 `black`。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-fill-style.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-fill-style.html)

        ![setFillStyle](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/fill-rect.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setStrokeStyle'
      notes <<-'END'
        设置边框颜色。

        **Tip:** 如果没有设置 `fillStyle`，默认颜色为 `black`。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-stroke-style.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-stroke-style.html)

        ![setStrokeStyle](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/stroke-rect.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setShadow'
      notes <<-'END'
        设置阴影样式。

        **Tip:** 如果没有设置，offsetX 默认值为0， offsetY 默认值为0， blur 默认值为0，color 默认值为 `black`。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html)

        ![setShadow](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/shadow.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.shadowBlur'
      notes <<-'END'
        设置阴影的模糊级别

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowblur](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowblur)
      END
    end
    entry do
      command 'canvasContext.shadowColor'
      notes <<-'END'
        设置阴影的颜色

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowcolor](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowcolor)
      END
    end
    entry do
      command 'canvasContext.shadowOffsetX'
      notes <<-'END'
        设置阴影相对于形状在水平方向的偏移

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowoffsetx](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowoffsetx)
      END
    end
    entry do
      command 'canvasContext.shadowOffsetY'
      notes <<-'END'
        设置阴影相对于形状在竖直方向的偏移

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowoffsety](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-shadow.html#canvascontextshadowoffsety)
      END
    end
    entry do
      command 'canvasContext.createLinearGradient'
      notes <<-'END'
        创建一个线性的渐变颜色。

        **Tip:** 需要使用 `addColorStop()` 来指定渐变点，至少要两个。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-linear-gradient.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-linear-gradient.html)

        ![createLinearGradient](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/linear-gradient.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.createCircularGradient'
      notes <<-'END'
        创建一个圆形的渐变颜色。

        **Tips:** 起点在圆心，终点在圆环。

        **Tip:** 需要使用 `addColorStop()` 来指定渐变点，至少要两个。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-circular-gradient.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-circular-gradient.html)

        ![createCircularGradient](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/circular-gradient.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.addColorStop'
      notes <<-'END'
        创建一个颜色的渐变点。

        **Tips:** 小于最小 stop 的部分会按最小 stop 的 color 来渲染，大于最大 stop 的部分会按最大 stop 的 color 来渲染。

        **Tip:** 需要使用 `addColorStop()` 来指定渐变点，至少要两个。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/add-color-stop.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/add-color-stop.html)

        ![addColorStop](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/color-stop.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setLineWidth'
      notes <<-'END'
        设置线条的宽度。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-width.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-width.html)

        ![setLineWidth](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/line-width.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setLineCap'
      notes <<-'END'
        设置线条的端点样式。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-cap.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-cap.html)

        ![setLineCap](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/line-cap.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setLineJoin'
      notes <<-'END'
        设置线条的交点样式。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-join.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-join.html)

        ![setLineJoin](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/line-join.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setLineDash'
      notes <<-'END'
        设置线条的宽度。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-dash.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-line-dash.html)

        ![setLineDash](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/set-line-dash.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setMiterLimit'
      notes <<-'END'
        设置最大斜接长度，斜接长度指的是在两条线交汇处内角和外角之间的距离。 当 `setLineJoin()` 为 miter 时才有效。超过最大倾斜长度的，连接处将以 lineJoin 为 bevel 来显示

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-miter-limit.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-miter-limit.html)

        ![setMiterLimit](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/miter-limit.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.rect'
      notes <<-'END'
        创建一个矩形。

        **Tip:** 用 `fill()` 或者 `stroke()` 方法将矩形真正的画到 canvas 中。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-miter-limit.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-miter-limit.html)

        ![rect](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/fill-rect.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.fillRect'
      notes <<-'END'
        填充一个矩形。

        **Tip:** 用 `setFillStyle()` 设置矩形的填充色，如果没设置默认是黑色。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-rect.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-rect.html)

        ![fillRect](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/fill-rect.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.strokeRect'
      notes <<-'END'
        画一个矩形(非填充)。

        **Tip:** 用 `setFillStroke()` 设置矩形线条的颜色，如果没设置默认是黑色。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-rect.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-rect.html)

        ![strokeRect](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/stroke-rect.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.clearRect'
      notes <<-'END'
        清除画布上在该矩形区域内的内容。

        **Tip:** clearRect 并非画一个白色的矩形在地址区域，而是清空，为了有直观感受，对 canvas 加了一层背景色。

        ```
        <canvas canvas-id="myCanvas" style="border: 1px solid; background: #123456;"/>
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-rect.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-rect.html)

        ![clearRect](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/clear-rect.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.fill'
      notes <<-'END'
        对当前路径中的内容进行填充。默认的填充色为黑色。

        **Tip:** 如果当前路径没有闭合，`fill()` 方法会将起点和终点进行连接，然后填充，详情见例一。

        ![fill](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/fill-line.png?t=201842)

        **Tip:** `fill()` 填充的的路径是从 `beginPath()` 开始计算，但是不会将 `fillRect()` 包含进去，详情见例二。

        ![fill](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/fill-path.png?t=201842)

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill.html)
      END
    end
    entry do
      command 'canvasContext.stroke'
      notes <<-'END'
        画出当前路径的边框。默认颜色色为黑色。

        ![stroke](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/stroke-line.png?t=201842)

        **Tip:** `stroke()` 描绘的的路径是从 `beginPath()` 开始计算，但是不会将 `strokeRect()` 包含进去，详情见例二。

        ![stroke](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/stroke-path.png?t=201842)

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/stroke.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/stroke.html)
      END
    end
    entry do
      command 'canvasContext.beginPath'
      notes <<-'END'
        开始创建一个路径，需要调用fill或者stroke才会使用路径进行填充或描边。

        **Tip:** 在最开始的时候相当于调用了一次 `beginPath()`。

        **Tip:** 同一个路径内的多次`setFillStyle()`、`setStrokeStyle()`、`setLineWidth()`等设置，以最后一次设置为准。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/begin-path.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/begin-path.html)

        ![beginPath](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/fill-path.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.closePath'
      notes <<-'END'
        关闭一个路径

        **Tip:** 关闭路径会连接起点和终点。

        **Tip:** 如果关闭路径后没有调用 `fill()` 或者 `stroke()` 并开启了新的路径，那之前的路径将不会被渲染。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/close-path.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/close-path.html)

        ![closePath](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/close-line.png?t=201842)

        ![closePath](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/close-path.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.moveTo'
      notes <<-'END'
        把路径移动到画布中的指定点，不创建线条。

        **Tip:** 用 `stroke()` 方法来画线条

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/move-to.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/move-to.html)

        ![moveTo](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/move-to.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.lineTo'
      notes <<-'END'
        `lineTo` 方法增加一个新点，然后创建一条从上次指定点到目标点的线。

        **Tip:** 用 `stroke()` 方法来画线条

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/line-to.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/line-to.html)

        ![lineTo](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/line-to.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.arc'
      notes <<-'END'
        画一条弧线。

        **Tip:** 创建一个圆可以用 `arc()` 方法指定其实弧度为0，终止弧度为 `2 * Math.PI`。

        **Tip:** 用 `stroke()` 或者 `fill()` 方法来在 canvas 中画弧线。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/arc.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/arc.html)

        ![arc](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/arc.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.bezierCurveTo'
      notes <<-'END'
        创建三次方贝塞尔曲线路径。

        **Tip:** 曲线的起始点为路径中前一个点。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/bezier-curve-to.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/bezier-curve-to.html)

        ![bezierCurveTo](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/bezier-curve.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.quadraticCurveTo'
      notes <<-'END'
        创建二次贝塞尔曲线路径。

        **Tip:** 曲线的起始点为路径中前一个点。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/quadratic-curve-to.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/quadratic-curve-to.html)

        ![quadraticCurveTo](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/quadratic-curve-to.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.scale'
      notes <<-'END'
        在调用`scale`方法后，之后创建的路径其横纵坐标会被缩放。多次调用`scale`，倍数会相乘。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/scale.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/scale.html)

        ![scale](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/scale.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.rotate'
      notes <<-'END'
        以原点为中心，原点可以用 translate 方法修改。顺时针旋转当前坐标轴。多次调用`rotate`，旋转的角度会叠加。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/rotate.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/rotate.html)

        ![rotate](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/rotate.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.translate'
      notes <<-'END'
        对当前坐标系的原点(0, 0)进行变换，默认的坐标系原点为页面左上角。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/translate.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/translate.html)

        ![translate](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/translate.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.clip'
      notes <<-'END'
        clip() 方法从原始画布中剪切任意形状和尺寸。一旦剪切了某个区域，则所有之后的绘图都会被限制在被剪切的区域内（不能访问画布上的其他区域）。可以在使用 clip() 方法前通过使用 save() 方法对当前画布区域进行保存，并在以后的任意时间对其进行恢复（通过 restore() 方法）。

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/clip.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/clip.html)

        ![clip](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/clip.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setFontSize'
      notes <<-'END'
        设置字体的字号。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-font-size.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-font-size.html)

        ![setFontSize](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/font-size.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.fillText'
      notes <<-'END'
        在画布上绘制被填充的文本。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-text.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/fill-text.html)

        ![fillText](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/text.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setTextAlign'
      notes <<-'END'
        用于设置文字的对齐

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-text-align.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-text-align.html)

        ![setTextAlign](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/set-text-align.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setTextBaseline'
      notes <<-'END'
        用于设置文字的水平对齐

        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-text-baseline.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-text-baseline.html)

        ![setTextBaseline](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/set-text-baseline.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.drawImage'
      notes <<-'END'
        绘制图像到画布。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw-image.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw-image.html)

        ![drawImage](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/draw-image.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.setGlobalAlpha'
      notes <<-'END'
        设置全局画笔透明度。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-global-alpha.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-global-alpha.html)

        ![setGlobalAlpha](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/global-alpha.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.save'
      notes <<-'END'
        保存当前的绘图上下文。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/save-restore.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/save-restore.html)

        ![save](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/save-restore.png?t=201842)
      END
    end
    entry do
      command 'canvasContext.draw'
      notes <<-'END'
        将之前在绘图上下文中的描述（路径、变形、样式）画到 canvas 中。

        **Tip:** 绘图上下文需要由 `wx.createCanvasContext(canvasId)` 来创建。

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/draw.html)

        ![draw](https://mp.weixin.qq.com/debug/wxadoc/dev/image/canvas/reserve.png?t=201842)
      END
    end
    entry do
      command 'getActions'
      notes <<-'END'
        返回绘图上下文的绘图动作。

        **不推荐使用**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/get-actions.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/get-actions.html)
      END
    end
    entry do
      command 'canvasContext.clearActions'
      notes <<-'END'
        清空绘图上下文的绘图动作。

        **不推荐使用**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/clear-actions.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/clear-actions.html)
      END
    end
    entry do
      command 'canvasContext.measureText'
      notes <<-'END'
        测量文本尺寸信息，目前仅返回文本宽度。同步接口。

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/measure-text.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/measure-text.html)
      END
    end
    entry do
      command 'canvasContext.globalCompositeOperation'
      notes <<-'END'
        该属性是设置要在绘制新形状时应用的合成操作的类型。

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/global-composite-operation.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/global-composite-operation.html)
      END
    end
    entry do
      command 'canvasContext.arcTo'
      notes <<-'END'
        根据控制点和半径绘制圆弧路径。

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/arc-to.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/arc-to.html)
      END
    end
    entry do
      command 'canvasContext.strokeText'
      notes <<-'END'
        给定的 (x, y) 位置绘制文本描边的方法

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/stroke-text.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/stroke-text.html)
      END
    end
    entry do
      command 'canvasContext.lineDashOffset'
      notes <<-'END'
        设置虚线偏移量的属性

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/line-dash-offset.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/line-dash-offset.html)
      END
    end
    entry do
      command 'canvasContext.createPattern'
      notes <<-'END'
        对指定的图像创建模式的方法，可在指定的方向上重复元图像

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-pattern.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/create-pattern.html)
      END
    end
    entry do
      command 'canvasContext.font'
      notes <<-'END'
        设置当前字体样式的属性

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/font.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/font.html)
      END
    end
    entry do
      command 'canvasContext.setTransform'
      notes <<-'END'
        使用矩阵重新设置（覆盖）当前变换的方法

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-transform.html](https://developers.weixin.qq.com/miniprogram/dev/api/canvas/set-transform.html)
      END
    end
    entry do
      name '★ [下拉刷新](https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html)'
    end
    entry do
      command 'Page.onPullDownRefresh'
      notes <<-'END'
        在 Page 中定义 onPullDownRefresh 处理函数，监听该页面用户下拉刷新事件。

        * 需要在 config 的[window](https://developers.weixin.qq.com/miniprogram/dev/framework/config.html#window)选项中开启 `enablePullDownRefresh`。
        * 当处理完数据刷新后，[wx.stopPullDownRefresh](https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html#

        [https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html#onpulldownrefresh](https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html#onpulldownrefresh)
      END
    end
    entry do
      command 'wx.startPullDownRefresh'
      notes <<-'END'
        开始下拉刷新，调用后触发下拉刷新动画，效果与用户手动下拉刷新一致

        **基础库 1.5.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html#wxstartpulldownrefresh](https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html#wxstartpulldownrefresh)
      END
    end
    entry do
      command 'wx.stopPullDownRefresh'
      notes <<-'END'
        停止当前页面下拉刷新。

        [https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html#wxstoppulldownrefresh](https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html#wxstoppulldownrefresh)
      END
    end
    entry do
      name '★ [WXML节点信息](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html)'
    end
    entry do
      command 'wx.createSelectorQuery'
      notes <<-'END'
        返回一个SelectorQuery对象实例。可以在这个实例上使用`select`等方法选择节点，并使用`boundingClientRect`等方法选择需要查询的信息。

        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#wxcreateselectorquery](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#wxcreateselectorquery)
      END
    end
    entry do
      command 'selectorQuery.in'
      notes <<-'END'
        将选择器的选取范围更改为自定义组件`component`内。（初始时，选择器仅选取页面范围的节点，不会选取任何自定义组件中的节点。）

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        ```
        selectorQuery.in(component)
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryincomponent](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryincomponent)
      END
    end
    entry do
      command 'selectorQuery.select'
      notes <<-'END'
        在当前页面下选择第一个匹配选择器`selector`的节点，返回一个`NodesRef`对象实例，可以用于获取节点信息。

        ```
        selectorQuery.select(selector)
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryselectselector](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryselectselector)
      END
    end
    entry do
      command 'selectorQuery.selectAll'
      notes <<-'END'
        在当前页面下选择匹配选择器`selector`的节点，返回一个`NodesRef`对象实例。 与`selectorQuery.selectNode(selector)`不同的是，它选择所有匹配选择器的节点。

        ```
        selectorQuery.selectAll(selector)
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryselectallselector](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryselectallselector)
      END
    end
    entry do
      command 'selectorQuery.selectViewport'
      notes <<-'END'
        选择显示区域，可用于获取显示区域的尺寸、滚动位置等信息，返回一个`NodesRef`对象实例。
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryselectviewport](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryselectviewport)
      END
    end
    entry do
      command 'nodesRef.boundingClientRect'
      notes <<-'END'
        添加节点的布局位置的查询请求，相对于显示区域，以像素为单位。其功能类似于DOM的`getBoundingClientRect`。返回值是`nodesRef`对应的`selectorQuery`。

        返回的节点信息中，每个节点的位置用`left`、`right`、`top`、`bottom`、`width`、`height`字段描述。如果提供了callback回调函数，在执行selectQuery的exec方法后，节点信息会在callback中返回。

        ```
        nodesRef.boundingClientRect([callback])
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#nodesrefboundingclientrectcallback](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#nodesrefboundingclientrectcallback)
      END
    end
    entry do
      command 'nodesRef.scrollOffset'
      notes <<-'END'
        添加节点的滚动位置查询请求，以像素为单位。节点必须是`scroll-view`或者viewport。返回值是nodesRef对应的selectorQuery。

        返回的节点信息中，每个节点的滚动位置用`scrollLeft`、`scrollTop`字段描述。如果提供了callback回调函数，在执行selectQuery的exec方法后，节点信息会在callback中返回。
        
        ```
        nodesRef.scrollOffset([callback])
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#nodesrefscrolloffsetcallback](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#nodesrefscrolloffsetcallback)
      END
    end
    entry do
      command 'nodesRef.fields'
      notes <<-'END'
        获取节点的相关信息，需要获取的字段在`fields`中指定。返回值是nodesRef对应的selectorQuery。
        
        ```
        nodesRef.fields(fields, [callback])
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#nodesreffieldsfieldscallback](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#nodesreffieldsfieldscallback)
      END
    end
    entry do
      command 'selectorQuery.exec'
      notes <<-'END'
        执行所有的请求，请求结果按请求次序构成数组，在callback的第一个参数中返回。
        
        ```
        selectorQuery.exec([callback])
        ```
        
        [https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryexeccallback](https://developers.weixin.qq.com/miniprogram/dev/api/wxml-nodes-info.html#selectorqueryexeccallback)
      END
    end
    entry do
      name '★ [WXML节点布局相交状态](https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html)'
      notes '节点布局交叉状态API可用于监听两个或多个组件节点在布局位置上的相交状态。这一组API常常可以用于推断某些节点是否可以被用户看见、有多大比例可以被用户看见。'
    end
    entry do
      command 'wx.createIntersectionObserver'
      notes <<-'END'
        创建并返回一个 IntersectionObserver 对象实例。在自定义组件中，可以使用 `this.createIntersectionObserver([options])` 来代替。

        ```
        wx.createIntersectionObserver([this], [options])
        ```

        **基础库 1.9.3 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#wxcreateintersectionobserverthisoptions](https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#wxcreateintersectionobserverthisoptions)
      END
    end
    entry do
      command 'intersectionObserver.relativeTo'
      notes <<-'END'
        使用选择器指定一个节点，作为参照区域之一。 `margins` 可以用来扩展（或收缩）参照节点布局区域的边界，可包含 `left` 、 `right` 、 `top` 、 `bottom` 四项。

        ```
        intersectionObserver.relativeTo(selector, [margins])
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverrelativetoselectormargins](https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverrelativetoselectormargins)
      END
    end
    entry do
      command 'intersectionObserver.relativeToViewport'
      notes <<-'END'
        指定页面显示区域作为参照区域之一。 `margins` 可以用来扩展（或收缩）参照节点布局区域的边界，可包含 `left` 、 `right` 、 `top` 、 `bottom` 四项。

        ```
        intersectionObserver.relativeToViewport([margins])
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverrelativetoviewportmargins](https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverrelativetoviewportmargins)
      END
    end
    entry do
      command 'intersectionObserver.observe'
      notes <<-'END'
        指定目标节点并开始监听相交状态变化情况。回调函数 `callback` 包含一个参数 `result` 。

        ```
        intersectionObserver.observe(targetSelector, callback)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverobservetargetselectorcallback](https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverobservetargetselectorcallback)
      END
    end
    entry do
      command 'intersectionObserver.disconnect'
      notes <<-'END'
        停止监听。回调函数将不再触发。

        [https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverdisconnect](https://developers.weixin.qq.com/miniprogram/dev/api/intersection-observer.html#intersectionobserverdisconnect)
      END
    end
  end

  category do
    id '第三方平台'
    entry do
      command 'wx.getExtConfig'
      notes <<-'END'
        获取[第三方平台](https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/ext.html?t=201842)自定义的数据字段。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ext-api.html#wxgetextconfigobject](https://developers.weixin.qq.com/miniprogram/dev/api/ext-api.html#wxgetextconfigobject)
      END
    end
    entry do
      command 'wx.getExtConfigSync'
      notes <<-'END'
        获取[第三方平台](https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/ext.html?t=201842)自定义的数据字段的同步接口。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/ext-api.html#wxgetextconfigsync](https://developers.weixin.qq.com/miniprogram/dev/api/ext-api.html#wxgetextconfigsync)
      END
    end
  end

  category do
    id '开放接口'
    entry do
      name '[小程序登录](https://developers.weixin.qq.com/miniprogram/dev/api/api-login.html)'
      notes <<-'END'
        小程序可以通过微信官方提供的登录能力方便地获取微信提供的用户身份标识，快速建立小程序内的用户体系。

        #### 登录流程时序

        ![登录流程时序](https://mp.weixin.qq.com/debug/wxadoc/dev/image/api-login.jpg?t=201842)

        #### 说明：

        * 小程序调用`wx.login()` 获取 **临时登录凭证code** ，并回传到开发者服务器。
        * 开发者服务器以code换取 **用户唯一标识openid** 和 **会话密钥session_key**。

        之后开发者服务器可以根据用户标识来生成自定义登录态，用于后续业务逻辑中前后端交互时识别用户身份。
      END
    end
    entry do
      command 'wx.login'
      notes <<-'END'
        调用接口`wx.login()` 获取**临时登录凭证（code）**

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-login.html#wxloginobject](https://developers.weixin.qq.com/miniprogram/dev/api/api-login.html#wxloginobject)
      END
    end
    entry do
      command 'wx.checkSession'
      notes <<-'END'
        校验用户当前session_key是否有效。

        [https://developers.weixin.qq.com/miniprogram/dev/api/signature.html#wxchecksessionobject](https://developers.weixin.qq.com/miniprogram/dev/api/signature.html#wxchecksessionobject)
      END
    end
    entry do
      name '签名加密'
      notes <<-'END'
        小程序可以通过各种前端接口获取微信提供的开放数据。 考虑到开发者服务器也需要获取这些开放数据，微信会对这些数据做签名和加密处理。 开发者后台拿到开放数据后可以对数据进行校验签名和解密，来保证数据不被篡改。

        ![签名加密](https://mp.weixin.qq.com/debug/wxadoc/dev/image/signature.jpg?t=201842)

        签名校验以及数据加解密涉及用户的会话密钥session_key。 开发者应该事先通过 [wx.login](https://developers.weixin.qq.com/miniprogram/dev/api/api-login.html) 登录流程获取会话密钥 session_key 并保存在服务器。为了数据不被篡改，开发者不应该把session_key传到小程序客户端等服务器外的环境。

        * 数据签名校验
        * 加密数据解密算法
        * 会话密钥session_key有效性

        [https://developers.weixin.qq.com/miniprogram/dev/api/signature.html](https://developers.weixin.qq.com/miniprogram/dev/api/signature.html)
      END
    end
    entry do
      name '授权'
      notes <<-'END'
        部分接口需要获得用户授权同意后才能调用。此类接口调用时：

        * 如果用户未接受或拒绝过此权限，会弹窗询问用户，用户点击同意后方可调用接口；
        * 如果用户已授权，可以直接调用接口；
        * 如果用户已拒绝授权，则短期内不会出现弹窗，而是直接进入接口 fail 回调。**请开发者兼容用户拒绝授权的场景。**

        ### 获取授权信息

        开发者可以使用 [wx.getSetting](https://developers.weixin.qq.com/miniprogram/dev/api/setting.html#wxgetsettingobject) 获取用户当前的授权状态。

        ### 打开设置界面

        用户可以在小程序设置界面（右上角 - 关于 - 右上角 - 设置）中控制对该小程序的授权状态。

        开发者可以调用 [wx.openSetting](https://developers.weixin.qq.com/miniprogram/dev/api/setting.html#wxopensettingobject) 打开设置界面，引导用户开启授权。

        ### 提前发起授权请求

        开发者可以使用 [wx.authorize](https://developers.weixin.qq.com/miniprogram/dev/api/authorize.html#wxauthorizeobject) 在调用需授权 API 之前，提前向用户发起授权请求。

        ### scope 列表

        ```
        | scope                  | 对应接口                                             | 描述         
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.userInfo         | wx.getUserInfo                                       | 用户信息     
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.userLocation     | wx.getLocation, wx.chooseLocation                    | 地理位置     
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.address          | wx.chooseAddress                                     | 通讯地址     
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.invoiceTitle     | wx.chooseInvoiceTitle                                | 发票抬头     
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.werun            | wx.getWeRunData                                      | 微信运动步数 
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.record           | wx.startRecord                                       | 录音功能     
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.writePhotosAlbum | wx.saveImageToPhotosAlbum, wx.saveVideoToPhotosAlbum | 保存到相册   
        | ---------------------- | ---------------------------------------------------- | ------------
        | scope.camera           |                                                      | 摄像头       
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html)
      END
    end
    entry do
      command 'wx.authorize'
      notes <<-'END'
        提前向用户发起授权请求。调用后会立刻弹窗询问用户是否同意授权小程序使用某项功能或获取用户的某些数据，但不会实际调用对应接口。如果用户之前已经同意授权，则不会出现弹窗，直接返回成功。

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/authorize.html](https://developers.weixin.qq.com/miniprogram/dev/api/authorize.html)
      END
    end
    entry do
      name '[用户信息](https://developers.weixin.qq.com/miniprogram/dev/api/open.html)'
    end
    entry do
      command 'wx.getUserInfo'
      notes <<-'END'
        获取用户信息，withCredentials 为 true 时需要先调用 `wx.login` 接口。

        需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.userInfo

        [https://developers.weixin.qq.com/miniprogram/dev/api/open.html#wxgetuserinfoobject](https://developers.weixin.qq.com/miniprogram/dev/api/open.html#wxgetuserinfoobject)
      END
    end
    entry do
      command 'getPhoneNumber'
      notes <<-'END'
        ### 说明

        获取微信用户绑定的手机号，需先调用login接口。

        因为需要用户主动触发才能发起获取手机号接口，所以该功能不由 API 来调用，需用 <button> 组件的点击来触发。

        **注意：目前该接口针对非个人开发者，且完成了认证的小程序开放。需谨慎使用，若用户举报较多或被发现在不必要场景下使用，微信有权永久回收该小程序的该接口权限。**

        ### 使用方法

        需要将 `<button>` 组件 `open-type` 的值设置为 `getPhoneNumber`，当用户点击并同意之后，可以通过 `bindgetphonenumber` 事件回调获取到微信服务器返回的加密数据， 然后在第三方服务端结合 `session_key` 以及 `app_id` 进行解密获取手机号。

        ### 注意

        在回调中调用 `wx.login` 登录，可能会刷新登录态。此时服务器使用 code 换取的 sessionKey 不是加密时使用的 sessionKey，导致解密失败。建议开发者提前进行 `login`；或者在回调中先使用 `checkSession` 进行登录态检查，避免 `login` 刷新登录态。
      END
    end
    entry do
      name '[UnionID机制说明](https://developers.weixin.qq.com/miniprogram/dev/api/uinionID.html)'
      notes <<-'END'
        如果开发者拥有多个移动应用、网站应用、和公众帐号（包括小程序），可通过unionid来区分用户的唯一性，因为只要是同一个微信开放平台帐号下的移动应用、网站应用和公众帐号（包括小程序），用户的unionid是唯一的。换句话说，同一用户，对同一个微信开放平台下的不同应用，unionid是相同的。

        * UnionID获取途径
        * 微信开放平台绑定小程序流程
      END
    end
    entry do
      name '[微信支付](https://developers.weixin.qq.com/miniprogram/dev/api/api-pay.html)'
    end
    entry do
      command 'wx.requestPayment'
      notes <<-'END'
        发起微信支付。

        了解更多信息，请查看[微信支付接口文档](https://pay.weixin.qq.com/wiki/doc/api/wxa/wxa_api.php?chapter=7_3&index=1)

        [https://developers.weixin.qq.com/miniprogram/dev/api/api-pay.html#wxrequestpaymentobject](https://developers.weixin.qq.com/miniprogram/dev/api/api-pay.html#wxrequestpaymentobject)
      END
    end
    entry do
      name '[模板消息](https://developers.weixin.qq.com/miniprogram/dev/api/notice.html)'
      notes <<-'END'
        基于微信的通知渠道，我们为开发者提供了可以高效触达用户的模板消息能力，以便实现服务的闭环并提供更佳的体验。

        模板推送位置：服务通知

        模板下发条件：用户本人在微信体系内与页面有交互行为后触发，详见[下发条件说明](https://developers.weixin.qq.com/miniprogram/dev/api/notice.html#%E4%B8%8B%E5%8F%91%E6%9D%A1%E4%BB%B6%E8%AF%B4%E6%98%8E)

        模板跳转能力：点击查看详情仅能跳转下发模板的该帐号的各个页面

        * [使用说明](https://developers.weixin.qq.com/miniprogram/dev/api/notice.html#%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E)
        * [模板消息管理](https://developers.weixin.qq.com/miniprogram/dev/api/notice.html#%E6%A8%A1%E7%89%88%E6%B6%88%E6%81%AF%E7%AE%A1%E7%90%86)
        * [发送模板消息](https://developers.weixin.qq.com/miniprogram/dev/api/notice.html#%E5%8F%91%E9%80%81%E6%A8%A1%E6%9D%BF%E6%B6%88%E6%81%AF)
      END
    end
    entry do
      name '[客服消息](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html)'
    end
    entry do
      td_command '接收消息和事件'
      notes <<-'END'
        在页面中使用 [button open-type="contact"](https://developers.weixin.qq.com/miniprogram/dev/component/button.html) 可以显示进入客服会话按钮。

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E6%8E%A5%E6%94%B6%E6%B6%88%E6%81%AF%E5%92%8C%E4%BA%8B%E4%BB%B6](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E6%8E%A5%E6%94%B6%E6%B6%88%E6%81%AF%E5%92%8C%E4%BA%8B%E4%BB%B6)
      END
    end
    entry do
      td_command '文本消息'
      notes <<-'END'
        用户在客服会话中发送文本消息时将产生如下数据包

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E6%96%87%E6%9C%AC%E6%B6%88%E6%81%AF](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E6%96%87%E6%9C%AC%E6%B6%88%E6%81%AF)
      END
    end
    entry do
      td_command '图片消息'
      notes <<-'END'
        用户在客服会话中发送图片消息时将产生如下数据包

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E5%9B%BE%E7%89%87%E6%B6%88%E6%81%AF](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E5%9B%BE%E7%89%87%E6%B6%88%E6%81%AF)
      END
    end
    entry do
      td_command '小程序卡片消息'
      notes <<-'END'
        用户在客服会话中发送小程序卡片消息时将产生如下数据包

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E5%B0%8F%E7%A8%8B%E5%BA%8F%E5%8D%A1%E7%89%87%E6%B6%88%E6%81%AF](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E5%B0%8F%E7%A8%8B%E5%BA%8F%E5%8D%A1%E7%89%87%E6%B6%88%E6%81%AF)
      END
    end
    entry do
      td_command '进入会话事件'
      notes <<-'END'
        用户在小程序“客服会话按钮”进入客服会话时将产生如下数据包

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E8%BF%9B%E5%85%A5%E4%BC%9A%E8%AF%9D%E4%BA%8B%E4%BB%B6](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/receive.html#%E8%BF%9B%E5%85%A5%E4%BC%9A%E8%AF%9D%E4%BA%8B%E4%BB%B6)
      END
    end
    entry do
      td_command '发送客服消息'
      notes <<-'END'
        当用户和小程序客服产生特定动作的交互时（具体动作列表请见下方说明），微信将会把消息数据推送给开发者，开发者可以在一段时间内（目前修改为48小时）调用客服接口，通过POST一个JSON数据包来发送消息给普通用户。此接口主要用于客服等有人工消息处理环节的功能，方便开发者为用户提供更加优质的服务。

        ### 返回码说明

        ```
        | 参数  | 说明                                                         
        | ----- | ------------------------------------------------------------
        | -1    | 系统繁忙，此时请开发者稍候再试                               
        | ----- | ------------------------------------------------------------
        | 0     | 请求成功                                                     
        | ----- | ------------------------------------------------------------
        | 40001 | 获取 access_token 时 AppSecret 错误，或者 access_token 无效。请开发者认真比对 AppSecret 的正确性，或查看是否正在为恰当的小程序调用接口 
        | ----- | ------------------------------------------------------------
        | 40002 | 不合法的凭证类型                                             
        | ----- | ------------------------------------------------------------
        | 40003 | 不合法的 OpenID，请开发者确认OpenID否是其他小程序的 OpenID   
        | ----- | ------------------------------------------------------------
        | 45015 | 回复时间超过限制                                             
        | ----- | ------------------------------------------------------------
        | 45047 | 客服接口下行条数超过上限                                     
        | ----- | ------------------------------------------------------------
        | 48001 | api功能未授权，请确认小程序已获得该接口                      
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/conversation.html](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/conversation.html)
      END
    end
    entry do
      td_command '转发消息'
      notes <<-'END'
        如果小程序设置了消息推送，普通微信用户向小程序客服发消息时，微信服务器会先将消息 POST 到开发者填写的 url 上，如果希望将消息转发到网页版客服工具，则需要开发者在响应包中返回 MsgType 为 transfer_customer_service 的消息，微信服务器收到响应后会把当次发送的消息转发至客服系统。

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/trans.html](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/trans.html)
      END
    end
    entry do
      name '[临时素材接口](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/material.html)'
    end
    entry do
      td_command '获取临时素材'
      notes <<-'END'
        小程序可以使用本接口获取客服消息内的临时素材（即下载临时的多媒体文件）。目前小程序仅支持下载图片文件。

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/material.html#%E8%8E%B7%E5%8F%96%E4%B8%B4%E6%97%B6%E7%B4%A0%E6%9D%90](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/material.html#%E8%8E%B7%E5%8F%96%E4%B8%B4%E6%97%B6%E7%B4%A0%E6%9D%90)
      END
    end
    entry do
      td_command '新增临时素材'
      notes <<-'END'
        小程序可以使用本接口把媒体文件（目前仅支持图片）上传到微信服务器，用户发送客服消息或被动回复用户消息。

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/material.html#%E6%96%B0%E5%A2%9E%E4%B8%B4%E6%97%B6%E7%B4%A0%E6%9D%90](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/material.html#%E6%96%B0%E5%A2%9E%E4%B8%B4%E6%97%B6%E7%B4%A0%E6%9D%90)
      END
    end
    entry do
      name '[客服输入状态](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/typing.html)'
      notes <<-'END'
        开发者可通过调用“客服输入状态接口”，返回客服当前输入状态给用户。

        * 此接口需要客服消息接口权限。
        * 如果不满足发送客服消息的触发条件，则无法下发输入状态。
        * 下发输入状态，需要客服之前30秒内跟用户有过消息交互。
        * 在输入状态中（持续15s），不可重复下发输入态。
        * 在输入状态中，如果向用户下发消息，会同时取消输入状态。

        ### 返回码说明

        ```
        | 参数  | 说明                                           
        | ----- | ----------------------------------------------
        | 45072 | command字段取值不对                            
        | ----- | ----------------------------------------------
        | 45080 | 下发输入状态，需要之前30秒内跟用户有过消息交互 
        | ----- | ----------------------------------------------
        | 45081 | 已经在输入状态，不可重复下发                   
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/typing.html](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/typing.html)
      END
    end
    entry do
      name '[接入指引](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/callback_help.html)'
      notes <<-'END'
        接入微信小程序消息服务，开发者需要按照如下步骤完成：

        1、填写服务器配置

        2、验证服务器地址的有效性

        3、依据接口文档实现业务逻辑

        [https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/callback_help.html](https://developers.weixin.qq.com/miniprogram/dev/api/custommsg/callback_help.html)
      END
    end
    entry do
      name '[转发](https://developers.weixin.qq.com/miniprogram/dev/api/share.html)'
    end
    entry do
      command 'Page.onShareAppMessage'
      notes <<-'END'
        在 Page 中定义 onShareAppMessage 函数，设置该页面的转发信息。

        * 只有定义了此事件处理函数，右上角菜单才会显示 “转发” 按钮
        * 用户点击转发按钮的时候会调用
        * 此事件需要 return 一个 Object，用于自定义转发内容

        [https://developers.weixin.qq.com/miniprogram/dev/api/share.html#onshareappmessageoptions](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#onshareappmessageoptions)
      END
    end
    entry do
      command 'wx.showShareMenu'
      notes <<-'END'
        显示当前页面的转发按钮

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxshowsharemenuobject](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxshowsharemenuobject)
      END
    end
    entry do
      command 'wx.hideShareMenu'
      notes <<-'END'
        隐藏转发按钮

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxhidesharemenuobject](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxhidesharemenuobject)
      END
    end
    entry do
      command 'wx.updateShareMenu'
      notes <<-'END'
        更新转发属性

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxupdatesharemenuobject](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxupdatesharemenuobject)
      END
    end
    entry do
      command 'wx.getShareInfo'
      notes <<-'END'
        获取转发详细信息

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxgetshareinfoobject](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxgetshareinfoobject)
      END
    end
    entry do
      td_command '获取更多转发信息'
      notes <<-'END'
        通常开发者希望转发出去的小程序被二次打开的时候能够获取到一些信息，例如群的标识。现在通过调用 `wx.showShareMenu` 并且设置 `withShareTicket` 为 `true` ，当用户将小程序转发到任一群聊之后，可以获取到此次转发的 `shareTicket`，此转发卡片在群聊中被其他用户打开时，可以在 [App.onLaunch()](https://developers.weixin.qq.com/miniprogram/dev/framework/app-service/app.html) 或 [App.onShow](https://developers.weixin.qq.com/miniprogram/dev/framework/app-service/app.html) 获取到另一个 `shareTicket`。这两步获取到的 `shareTicket` 均可通过 [wx.getShareInfo()](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#wxgetshareinfoobject) 接口可以获取到相同的转发信息。

          [https://developers.weixin.qq.com/miniprogram/dev/api/share.html#%E8%8E%B7%E5%8F%96%E6%9B%B4%E5%A4%9A%E8%BD%AC%E5%8F%91%E4%BF%A1%E6%81%AF](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#%E8%8E%B7%E5%8F%96%E6%9B%B4%E5%A4%9A%E8%BD%AC%E5%8F%91%E4%BF%A1%E6%81%AF)
      END
    end
    entry do
      td_command '页面内发起转发'
      notes <<-'END'
        通过给 `button` 组件设置属性 `open-type="share"`，可以在用户点击按钮后触发 `Page.onShareAppMessage()` 事件，如果当前页面没有定义此事件，则点击后无效果。相关组件：[button](https://developers.weixin.qq.com/miniprogram/dev/component/button.html)

          [https://developers.weixin.qq.com/miniprogram/dev/api/share.html#%E9%A1%B5%E9%9D%A2%E5%86%85%E5%8F%91%E8%B5%B7%E8%BD%AC%E5%8F%91](https://developers.weixin.qq.com/miniprogram/dev/api/share.html#%E9%A1%B5%E9%9D%A2%E5%86%85%E5%8F%91%E8%B5%B7%E8%BD%AC%E5%8F%91)
      END
    end
    entry do
      name '[获取二维码](https://developers.weixin.qq.com/miniprogram/dev/api/qrcode.html)'
      notes '通过后台接口可以获取小程序任意页面的二维码，扫描该二维码可以直接进入小程序对应的页面。'
    end
    entry do
      name '[收货地址](https://developers.weixin.qq.com/miniprogram/dev/api/address.html)'
    end
    entry do
      command 'wx.chooseAddress'
      notes <<-'END'
        调起用户编辑收货地址原生界面，并在编辑完成后返回用户选择的地址。

        需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.address

        [https://developers.weixin.qq.com/miniprogram/dev/api/address.html#wxchooseaddressobject](https://developers.weixin.qq.com/miniprogram/dev/api/address.html#wxchooseaddressobject)
      END
    end
    entry do
      name '[卡券](https://developers.weixin.qq.com/miniprogram/dev/api/card.html)'
    end
    entry do
      command 'wx.addCard'
      notes <<-'END'
        批量添加卡券。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/card.html#wxaddcardobject](https://developers.weixin.qq.com/miniprogram/dev/api/card.html#wxaddcardobject)
      END
    end
    entry do
      command 'wx.openCard'
      notes <<-'END'
        查看微信卡包中的卡券。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/card.html#wxopencardobject](https://developers.weixin.qq.com/miniprogram/dev/api/card.html#wxopencardobject)
      END
    end
    entry do
      td_command '会员卡组件'
      notes <<-'END'
        开发者可以在小程序内调用该接口拉起会员开卡组件，方便用户快速填写会员注册信息并领卡。 该接口拉起开卡组件无须提前将开卡组件和发起小程序绑定至同一个公众号，开发者直接调用即可。

          ### 调用前开发者须完成以下步骤：

          * 创建一张微信会员卡并设置为一键激活模式；
          * 设置开卡字段；
          * 获取开卡组件参数；

        [https://developers.weixin.qq.com/miniprogram/dev/api/card.html#%E4%BC%9A%E5%91%98%E5%8D%A1%E7%BB%84%E4%BB%B6](https://developers.weixin.qq.com/miniprogram/dev/api/card.html#%E4%BC%9A%E5%91%98%E5%8D%A1%E7%BB%84%E4%BB%B6)
      END
    end
    entry do
      name '[设置](https://developers.weixin.qq.com/miniprogram/dev/api/setting.html)'
    end
    entry do
      command 'wx.openSetting'
      notes <<-'END'
        调起客户端小程序设置界面，返回用户设置的操作结果。

        注：设置界面只会出现小程序已经向用户请求过的权限。

        **基础库 1.1.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/setting.html#wxopensettingobject](https://developers.weixin.qq.com/miniprogram/dev/api/setting.html#wxopensettingobject)
      END
    end
    entry do
      command 'wx.getSetting'
      notes <<-'END'
        获取用户的当前设置。

        注：返回值中只会出现小程序已经向用户请求过的权限。

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/setting.html#wxgetsettingobject](https://developers.weixin.qq.com/miniprogram/dev/api/setting.html#wxgetsettingobject)
      END
    end
    entry do
      name '[微信运动](https://developers.weixin.qq.com/miniprogram/dev/api/we-run.html)'
    end
    entry do
      command 'wx.getWeRunData'
      notes <<-'END'
        获取用户过去三十天微信运动步数，需要先调用 [wx.login](https://developers.weixin.qq.com/miniprogram/dev/api/api-login.html#wxloginobject) 接口。

        需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.werun

        **基础库 1.2.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/we-run.html#wxgetwerundataobject](https://developers.weixin.qq.com/miniprogram/dev/api/we-run.html#wxgetwerundataobject)
      END
    end
    entry do
      name '[打开小程序](https://developers.weixin.qq.com/miniprogram/dev/api/navigateToMiniProgram.html)'
    end
    entry do
      command 'wx.navigateToMiniProgram'
      notes <<-'END'
        打开同一公众号下关联的另一个小程序。**（注：必须是同一公众号下，而非同个 open 账号下）**

        **基础库 1.3.0 开始支持，低版本需做兼容处理**

        **iOS 微信客户端 6.5.9 版本开始支持，Android 客户端即将在 6.5.10 版本开始支持，请先使用 iOS 客户端进行调试**

        [https://developers.weixin.qq.com/miniprogram/dev/api/navigateToMiniProgram.html](https://developers.weixin.qq.com/miniprogram/dev/api/navigateToMiniProgram.html)
      END
    end
    entry do
      command 'wx.navigateBackMiniProgram'
      notes <<-'END'
        返回到上一个小程序，只有在当前小程序是被其他小程序打开时可以调用成功

        **基础库 1.3.0 开始支持，低版本需做兼容处理**

        **iOS 微信客户端 6.5.9 版本开始支持，Android 客户端即将在 6.5.10 版本开始支持，请先使用 iOS 客户端进行调试**

        [https://developers.weixin.qq.com/miniprogram/dev/api/navigateBackMiniProgram.html](https://developers.weixin.qq.com/miniprogram/dev/api/navigateBackMiniProgram.html)
      END
    end
    entry do
      name '[打开APP](https://developers.weixin.qq.com/miniprogram/dev/api/launchApp.html)'
    end
    entry do
      command 'launchApp'
      notes <<-'END'
        因为需要用户主动触发才能打开 APP，所以该功能不由 API 来调用，需要用 `open-type` 的值设置为 `launchApp` 的 `<button>` 组件的点击来触发。

        在一个小程序的生命周期内，只有在特定条件下，才具有打开 APP 的能力。 打开 APP 的能力 可以理解为由小程序框架在内部管理的一个状态，为 true 则可以打开 APP，为 false 则不可以打开 APP。

        ![打开app](https://developers.weixin.qq.com/miniprogram/dev/image/launch-app.png?t=201842)

        ### 具体介绍

        [https://developers.weixin.qq.com/miniprogram/dev/api/launchApp.html](https://developers.weixin.qq.com/miniprogram/dev/api/launchApp.html)
      END
    end
    entry do
      name '[获取发票抬头](https://developers.weixin.qq.com/miniprogram/dev/api/chooseInvoiceTitle.html)'
    end
    entry do
      command 'wx.chooseInvoiceTitle'
      notes <<-'END'
        选择用户的发票抬头。

        需要[用户授权](https://developers.weixin.qq.com/miniprogram/dev/api/authorize-index.html) scope.invoiceTitle

        **基础库 1.5.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/chooseInvoiceTitle.html](https://developers.weixin.qq.com/miniprogram/dev/api/chooseInvoiceTitle.html)
      END
    end
    entry do
      name '[生物认证](https://developers.weixin.qq.com/miniprogram/dev/api/checkIsSupportSoterAuthentication.html)'
    end
    entry do
      command 'wx.checkIsSupportSoterAuthentication'
      notes <<-'END'
        获取本机支持的 SOTER 生物认证方式

        **基础库 1.5.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/checkIsSupportSoterAuthentication.html](https://developers.weixin.qq.com/miniprogram/dev/api/checkIsSupportSoterAuthentication.html)
      END
    end
    entry do
      command 'wx.startSoterAuthentication'
      notes <<-'END'
        开始 SOTER 生物认证

        **基础库 1.5.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/startSoterAuthentication.html](https://developers.weixin.qq.com/miniprogram/dev/api/startSoterAuthentication.html)
      END
    end
    entry do
      command 'wx.checkIsSoterEnrolledInDevice'
      notes <<-'END'
        获取设备内是否录入如指纹等生物信息的接口

        **基础库 1.6.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/checkIsSoterEnrolledInDevice.html](https://developers.weixin.qq.com/miniprogram/dev/api/checkIsSoterEnrolledInDevice.html)
      END
    end
    entry do
      name '[附近](https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html)'
      notes <<-'END'
        附近的小程序API，提供给需快速批量创建附近地点的小程序开发者使用，使用前请先调高附近地点额度。

        **调高附近地点额度需要申请**
      END
    end
    entry do
      td_command '添加地点'
      notes <<-'END'
        ### 接口地址

        [https://api.weixin.qq.com/wxa/addnearbypoi?access_token=ACCESS_TOKEN](https://api.weixin.qq.com/wxa/addnearbypoi?access_token=ACCESS_TOKEN)

        **请求方式: POST（请使用https协议）**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E6%B7%BB%E5%8A%A0%E5%9C%B0%E7%82%B9](https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E6%B7%BB%E5%8A%A0%E5%9C%B0%E7%82%B9)
      END
    end
    entry do
      name '添加地点错误码列表'
      notes <<-'END'
        ```
        | 返回码  | 说明                                               
        | ------ | --------------------------------------------------
        | 47001  | POST数据json格式错误                                      
        | ------ | --------------------------------------------------
        | 20002  | POST参数非法                                              
        | ------ | --------------------------------------------------
        | 44002  | POST数据为空                                              
        | ------ | --------------------------------------------------
        | 92000  | 该经营资质已添加，请勿重复添加                            
        | ------ | --------------------------------------------------
        | 92002  | 附近地点添加数量达到上线，无法继续添加                    
        | ------ | --------------------------------------------------
        | 92004  | 附近功能被封禁                                            
        | ------ | --------------------------------------------------
        | 93011  | 个人类型小程序不可用                                      
        | ------ | --------------------------------------------------
        | 93012  | 非普通类型小程序（门店小程序、小店小程序等）不可用        
        | ------ | --------------------------------------------------
        | 93013  | 从腾讯地图获取地址详细信息失败                            
        | ------ | --------------------------------------------------
        | 93014  | 同一资质证件号重复添加                             
        ```
      END
    end
    entry do
      td_command '查看地点列表'
      notes <<-'END'
        ### 接口地址

        [https://api.weixin.qq.com/wxa/getnearbypoilist?page=1&page_rows=20&access_token=ACCESS_TOKEN](https://api.weixin.qq.com/wxa/getnearbypoilist?page=1&page_rows=20&access_token=ACCESS_TOKEN)

        **请求方式: GET（请使用https协议）**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E6%9F%A5%E7%9C%8B%E5%9C%B0%E7%82%B9%E5%88%97%E8%A1%A8](https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E6%9F%A5%E7%9C%8B%E5%9C%B0%E7%82%B9%E5%88%97%E8%A1%A8)
      END
    end
    entry do
      name '查看地点列表错误码列表'
      notes <<-'END'
        ```
        | 返回码  | 说明                                               
        | ------ | --------------------------------------------------
        | -1     | 系统错误                    
        ```
      END
    end
    entry do
      td_command '删除地点'
      notes <<-'END'
        ### 接口地址

        [https://api.weixin.qq.com/wxa/delnearbypoi?access_token=ACCESS_TOKEN](https://api.weixin.qq.com/wxa/delnearbypoi?access_token=ACCESS_TOKEN)

        **请求方式: POST（请使用https协议）**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E5%88%A0%E9%99%A4%E5%9C%B0%E7%82%B9](https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E5%88%A0%E9%99%A4%E5%9C%B0%E7%82%B9)
      END
    end
    entry do
      name '删除地点错误码列表'
      notes <<-'END'
        ```
        | 返回码  | 说明                 
        | ------ | -------------------- 
        | 92004  | 近功能被封禁         
        | ------ | -------------------- 
        | 92005  | 地点正在审核中       
        | ------ | -------------------- 
        | 92006  | 地点正在展示小程序   
        | ------ | -------------------- 
        | 93010  | 地点不存在           
        | ------ | -------------------- 
        | 93011  | 个人类型小程序不可用               
        ```
      END
    end
    entry do
      td_command '展示/取消展示附近小程序'
      notes <<-'END'
        ### 接口地址

        [https://api.weixin.qq.com/wxa/setnearbypoishowstatus?access_token=ACCESS_TOKEN](https://api.weixin.qq.com/wxa/setnearbypoishowstatus?access_token=ACCESS_TOKEN)

        **请求方式: POST（请使用https协议）**

        [https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E5%88%A0%E9%99%A4%E5%9C%B0%E7%82%B9](https://developers.weixin.qq.com/miniprogram/dev/api/nearby.html#%E5%88%A0%E9%99%A4%E5%9C%B0%E7%82%B9)
      END
    end
    entry do
      name '展示/取消展示附近小程序错误码列表'
      notes <<-'END'
        ```
        | 返回码  | 说明                   
        | ------ | ---------------------- 
        | 92003  | 地点已被其它小程序占用 
        | ------ | ---------------------- 
        | 92004  | 附近功能被封禁         
        | ------ | ---------------------- 
        | 92005  | 地点正在审核中         
        | ------ | ---------------------- 
        | 92007  | 地点审核失败           
        | ------ | ---------------------- 
        | 92008  | 程序未展示在该地点     
        | ------ | ---------------------- 
        | 93009  | 小程序未上架或不可见   
        | ------ | ---------------------- 
        | 93010  | 地点不存在             
        | ------ | ---------------------- 
        | 93011  | 个人类型小程序不可用             
        ```
      END
    end
    entry do
      name '[插件管理](https://developers.weixin.qq.com/miniprogram/dev/api/plugin.html)'
      notes <<-'END'
        小程序开发者可通过以下接口管理插件，包括：添加、删除、查询已添加的插件。插件开发者也可调用接口管理插件使用申请。

        * 申请使用插件
        * 查询已添加的插件
        * 删除已添加的插件
        * 获取当前所有插件使用方（供插件开发者调用）
        * 修改插件使用申请的状态（供插件开发者调用）
      END
    end
  end

  category do
    id '数据'
    entry do
      name '[数据](https://developers.weixin.qq.com/miniprogram/dev/api/analysis.html)'
      notes <<-'END'
        ### 数据分析

        开发者通过数据分析接口，可获取到小程序的各项数据指标，便于进行数据存储和整理。数据分析详细功能介绍及指标解释参见[数据分析文档](https://mp.weixin.qq.com/debug/wxadoc/analysis/?t=201842)。
      END
    end
    entry do
      name '[概况](https://developers.weixin.qq.com/miniprogram/dev/api/analysis.html#%E6%A6%82%E5%86%B5)'
      notes <<-'END'
        用户访问小程序的详细数据可从访问分析中获取，概况中提供累计用户数等部分指标数据。

        ## 概况趋势

        接口地址：[https://api.weixin.qq.com/datacube/getweanalysisappiddailysummarytrend?access_token=ACCESS_TOKEN](https://api.weixin.qq.com/datacube/getweanalysisappiddailysummarytrend?access_token=ACCESS_TOKEN)

        [https://developers.weixin.qq.com/miniprogram/dev/api/analysis.html#%E6%A6%82%E5%86%B5](https://developers.weixin.qq.com/miniprogram/dev/api/analysis.html#%E6%A6%82%E5%86%B5)
      END
    end
    entry do
      name '[访问分析](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-visit.html)'
      notes <<-'END'
        获取小程序访问分析数据，数据说明参见[访问分析](https://mp.weixin.qq.com/debug/wxadoc/analysis/regular/?t=201842#%E8%AE%BF%E9%97%AE%E5%88%86%E6%9E%90)

        * [访问趋势](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-visit.html#%E8%AE%BF%E9%97%AE%E8%B6%8B%E5%8A%BF)
        * [访问分布](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-visit.html#%E8%AE%BF%E9%97%AE%E5%88%86%E5%B8%83)
        * [访问留存](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-visit.html#%E8%AE%BF%E9%97%AE%E7%95%99%E5%AD%98)
        * [访问页面](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-visit.html#%E8%AE%BF%E9%97%AE%E9%A1%B5%E9%9D%A2)

        [https://developers.weixin.qq.com/miniprogram/dev/api/analysis-visit.html](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-visit.html)
      END
    end
    entry do
      name '[用户画像](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-user.html)'
      notes <<-'END'
        获取小程序新增或活跃用户的画像分布数据。时间范围支持昨天、最近7天、最近30天。其中，新增用户数为时间范围内首次访问小程序的去重用户数，活跃用户数为时间范围内访问过小程序的去重用户数。画像属性包括用户年龄、性别、省份、城市、终端类型、机型。

        接口地址： [https://api.weixin.qq.com/datacube/getweanalysisappiduserportrait?access_token=ACCESS_TOKEN](https://api.weixin.qq.com/datacube/getweanalysisappiduserportrait?access_token=ACCESS_TOKEN)

        [https://developers.weixin.qq.com/miniprogram/dev/api/analysis-user.html](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-user.html)
      END
    end
    entry do
      name '[自定义分析](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-report.html)'
    end
    entry do
      command 'wx.reportAnalytics'
      notes <<-'END'
        自定义分析数据上报接口。使用前，需要在小程序管理后台自定义分析中新建事件，配置好事件名与字段。

        ```
        wx.reportAnalytics(eventName, data)
        ```

        [https://developers.weixin.qq.com/miniprogram/dev/api/analysis-report.html](https://developers.weixin.qq.com/miniprogram/dev/api/analysis-report.html)
      END
    end
  end

  category do
    id '更新'
    entry do
      command 'wx.getUpdateManager'
      notes <<-'END'
        获取全局唯一的版本更新管理器，用于管理小程序更新。

        关于小程序的更新机制，可以查看 [运行机制](https://developers.weixin.qq.com/miniprogram/dev/framework/operating-mechanism.html) 文档。

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/getUpdateManager.html](https://developers.weixin.qq.com/miniprogram/dev/api/getUpdateManager.html)
      END
    end
  end

  category do
    id '多线程'
    entry do
      command 'wx.createWorker'
      notes <<-'END'
        在使用 createWorker 前，请查阅 [多线程](https://developers.weixin.qq.com/miniprogram/dev/framework/workers.html) 文档了解基础知识和配置方法。

        创建一个 Worker 线程，并返回 Worker 实例，目前限制最多只能创建一个 Worker，创建下一个 Worker 前请调用 Worker.terminate。

        `scriptPath` 为 worker 的入口文件路径，需填写绝对路径。

        ```
        wx.createWorker(scriptPath)
        ```

        **基础库 1.9.90 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/createWorker.html](https://developers.weixin.qq.com/miniprogram/dev/api/createWorker.html)
      END
    end
  end

  category do
    id '调试接口'
    entry do
      command 'wx.setEnableDebug'
      notes <<-'END'
        设置是否打开调试开关，此开关对正式版也能生效。

        **基础库 1.4.0 开始支持，低版本需做兼容处理**

        [https://developers.weixin.qq.com/miniprogram/dev/api/setEnableDebug.html](https://developers.weixin.qq.com/miniprogram/dev/api/setEnableDebug.html)
      END
    end
  end

  notes <<-'END'
    以上内容是 [linxz](https://github.com/linxz) 根据 “微信公众号平台 | 小程序” 的官方网站的文档整理，仅作为索引使用。
  END
end