package com.app.pakeplus

import android.app.Application
import android.util.Log
import com.tencent.smtt.export.external.TbsCoreSettings
import com.tencent.smtt.sdk.QbSdk

class App : Application() {

    override fun onCreate() {
        super.onCreate()
        
        // 允许在移动网络下下载内核
        QbSdk.setDownloadWithoutWifi(true)

        // 初始化X5内核
        QbSdk.initX5Environment(this, object : QbSdk.PreInitCallback {
            override fun onCoreInitFinished() {
                // 内核初始化完成，可能为系统内核，也可能为X5内核
            }

            override fun onViewInitFinished(isX5Core: Boolean) {
                // true表示x5内核加载成功，false表示加载失败，会自动切换到系统内核
                Log.i("App", "X5 Core Init Finished: $isX5Core")
            }
        })
        
        // 优化SDK设置
        val map = HashMap<String, Any>()
        map[TbsCoreSettings.TBS_SETTINGS_USE_SPEEDY_CLASSLOADER] = true
        map[TbsCoreSettings.TBS_SETTINGS_USE_DEXLOADER_SERVICE] = true
        QbSdk.initTbsSettings(map)
    }
}
