package com.bytedance.sdk.component.adexpress.d;

import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: TTAndroidObjectProxy.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    private WeakReference<b> a;

    public c(b bVar) {
        this.a = new WeakReference<>(bVar);
    }

    public void a(b bVar) {
        this.a = new WeakReference<>(bVar);
    }

    @JavascriptInterface
    public void adAnalysisData(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().a(str);
    }

    @JavascriptInterface
    public String adInfo() {
        WeakReference<b> weakReference = this.a;
        return (weakReference == null || weakReference.get() == null) ? "" : this.a.get().adInfo();
    }

    @JavascriptInterface
    public String appInfo() {
        WeakReference<b> weakReference = this.a;
        return (weakReference == null || weakReference.get() == null) ? "" : this.a.get().appInfo();
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().changeVideoState(str);
    }

    @JavascriptInterface
    public void chooseAdResult(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().chooseAdResult(str);
    }

    @JavascriptInterface
    public void clickEvent(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().clickEvent(str);
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().dynamicTrack(str);
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        WeakReference<b> weakReference = this.a;
        return (weakReference == null || weakReference.get() == null) ? "" : this.a.get().getCurrentVideoState();
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        WeakReference<b> weakReference = this.a;
        return (weakReference == null || weakReference.get() == null) ? "" : this.a.get().getTemplateInfo();
    }

    @JavascriptInterface
    public void initRenderFinish() {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().initRenderFinish();
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().muteVideo(str);
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().renderDidFinish(str);
    }

    @JavascriptInterface
    public void requestPauseVideo(String str) {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().b(str);
    }

    @JavascriptInterface
    public void skipVideo() {
        WeakReference<b> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().skipVideo();
    }
}
