package com.hyprmx.android.sdk.om;

import android.view.View;
import android.webkit.WebView;
import android.widget.VideoView;

/* JADX INFO: loaded from: classes2.dex */
public interface g {
    com.hyprmx.android.sdk.tracking.a a(float f2);

    void a();

    void a(View view);

    void a(View view, com.iab.omid.library.jungroup.adsession.g gVar, String str);

    void a(WebView webView, String str);

    boolean a(VideoView videoView, com.hyprmx.android.sdk.model.vast.a aVar, String str);

    void b();
}
