package com.example.app

import android.content.Context
import android.view.View
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView

class NativeView(context: Context) : PlatformView {

    private val textView = TextView(context).apply {
        text = "Hello from Native Android View"
        textSize = 20f
    }

    override fun getView(): View = textView
    override fun dispose() {}
}
