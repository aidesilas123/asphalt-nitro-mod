package com.tapjoy;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.GestureDetector;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.tapjoy.internal.k7;

/* JADX INFO: loaded from: classes4.dex */
public class TJWebView extends WebView {
    @SuppressLint({"SetJavaScriptEnabled"})
    public TJWebView(Context context) {
        super(context);
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        new GestureDetector(new k7());
        if (getSettings() != null) {
            getSettings().setJavaScriptEnabled(true);
            getSettings().setDomStorageEnabled(true);
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        setBackgroundColor(0);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        removeAllViews();
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        super.destroy();
    }
}
