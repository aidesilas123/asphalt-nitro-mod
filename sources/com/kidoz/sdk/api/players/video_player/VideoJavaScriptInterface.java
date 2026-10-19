package com.kidoz.sdk.api.players.video_player;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes4.dex */
public class VideoJavaScriptInterface {
    private JavascriptListener mJavascriptListener;
    private IOnReadyLocalListener mReadyLocalListener;

    public interface IOnReadyLocalListener {
        void onLocalReady();
    }

    public interface JavascriptListener {
        void onError(int i);

        void onStateChange(int i);

        void onVideoReady();

        void onViewReady();
    }

    @JavascriptInterface
    public void onError(int i) {
        this.mJavascriptListener.onError(i);
    }

    @JavascriptInterface
    public void onQualityChanged(String str) {
    }

    @JavascriptInterface
    public void onStateChange(int i) {
        this.mJavascriptListener.onStateChange(i);
    }

    @JavascriptInterface
    public void onVideoReady() {
        this.mJavascriptListener.onVideoReady();
    }

    @JavascriptInterface
    public void onViewReady() {
        IOnReadyLocalListener iOnReadyLocalListener = this.mReadyLocalListener;
        if (iOnReadyLocalListener != null) {
            iOnReadyLocalListener.onLocalReady();
        }
        JavascriptListener javascriptListener = this.mJavascriptListener;
        if (javascriptListener != null) {
            javascriptListener.onViewReady();
        }
    }

    public void setJavascriptListener(JavascriptListener javascriptListener) {
        this.mJavascriptListener = javascriptListener;
    }

    public void setLocalReadyListener(IOnReadyLocalListener iOnReadyLocalListener) {
        this.mReadyLocalListener = iOnReadyLocalListener;
    }

    @JavascriptInterface
    public void setVideoCurrentTime(int i) {
    }

    @JavascriptInterface
    public void setVideoTotalTime(int i) {
    }
}
