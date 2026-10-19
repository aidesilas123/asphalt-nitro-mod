package com.kidoz.sdk.api.ui_views.web_view_clients;

import android.graphics.Bitmap;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.kidoz.sdk.api.general.utils.SDKLogger;

/* JADX INFO: loaded from: classes4.dex */
public class KidozWebChromeClient extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
        return bitmapCreateBitmap != null ? bitmapCreateBitmap : super.getDefaultVideoPoster();
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        SDKLogger.printDebugLog("KidozWebChromeClient | onProgressChanged | newProgress = " + i + " url = " + webView.getUrl());
    }
}
