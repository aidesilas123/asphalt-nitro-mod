package com.hyprmx.android.sdk.jsinterface;

import android.webkit.JavascriptInterface;
import com.hyprmx.android.sdk.webview.d;
import com.hyprmx.android.sdk.webview.k;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public final d a;

    public b(k onJSMessageHandler) {
        Intrinsics.checkNotNullParameter(onJSMessageHandler, "onJSMessageHandler");
        this.a = onJSMessageHandler;
    }

    @JavascriptInterface
    public final void close() {
        this.a.b("close", null);
    }

    @JavascriptInterface
    public final void createCalendarEvent(String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.a.b("createCalendarEvent", params);
    }

    @JavascriptInterface
    public final void open(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.b(MRAIDPresenter.OPEN, url);
    }

    @JavascriptInterface
    public final void playVideo(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.b("playVideo", url);
    }

    @JavascriptInterface
    public final void setOrientationProperties(boolean z, String forceOrientation) {
        Intrinsics.checkNotNullParameter(forceOrientation, "forceOrientation");
        this.a.b(MRAIDPresenter.SET_ORIENTATION_PROPERTIES, new JSONObject(MapsKt__MapsKt.mapOf(TuplesKt.to("allowOrientationChange", String.valueOf(z)), TuplesKt.to("forceOrientationChange", forceOrientation))).toString());
    }

    @JavascriptInterface
    public final void storePicture(String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.a.b("storePicture", uri);
    }

    @JavascriptInterface
    public final void useCustomClose(boolean z) {
        this.a.b("useCustomClose", String.valueOf(z));
    }
}
