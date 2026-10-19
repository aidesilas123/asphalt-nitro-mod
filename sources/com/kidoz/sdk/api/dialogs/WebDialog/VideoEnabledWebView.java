package com.kidoz.sdk.api.dialogs.WebDialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.ui_views.web_view_clients.KidozWebChromeClient;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class VideoEnabledWebView extends WebView {
    private final String TAG;
    private boolean addedJavascriptInterface;
    private ConfigurationChangeListener mConfigurationChangeListener;
    private KidozWebChromeClient videoEnabledWebChromeClient;

    public interface ConfigurationChangeListener {
        void onConfigChange();
    }

    class VideoJavaScriptInterface {
        VideoJavaScriptInterface() {
        }

        @JavascriptInterface
        public void notifyVideoEnd() {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.kidoz.sdk.api.dialogs.WebDialog.VideoEnabledWebView.VideoJavaScriptInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    if (VideoEnabledWebView.this.videoEnabledWebChromeClient != null) {
                        VideoEnabledWebView.this.videoEnabledWebChromeClient.onHideCustomView();
                    }
                }
            });
        }
    }

    public VideoEnabledWebView(Context context) {
        super(context);
        this.TAG = VideoEnabledWebView.class.getSimpleName();
        init();
        this.addedJavascriptInterface = false;
    }

    public VideoEnabledWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = VideoEnabledWebView.class.getSimpleName();
        init();
        this.addedJavascriptInterface = false;
    }

    public VideoEnabledWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = VideoEnabledWebView.class.getSimpleName();
        init();
        this.addedJavascriptInterface = false;
    }

    @SuppressLint({"JavascriptInterface"})
    private void addJavascriptInterface() {
        if (this.addedJavascriptInterface) {
            return;
        }
        addJavascriptInterface(new VideoJavaScriptInterface(), "_VideoEnabledWebView");
        this.addedJavascriptInterface = true;
    }

    private void init() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            getSettings().setMixedContentMode(0);
        }
        if (i >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        KidozWebChromeClient kidozWebChromeClient = new KidozWebChromeClient();
        this.videoEnabledWebChromeClient = kidozWebChromeClient;
        setWebChromeClient(kidozWebChromeClient);
    }

    public void invokeJS(String str) {
        addJavascriptInterface();
        try {
            if (Build.VERSION.SDK_INT >= 19) {
                super.evaluateJavascript(str, null);
            } else {
                super.loadUrl(str);
            }
        } catch (Exception unused) {
            super.loadUrl(str);
        }
    }

    @Override // android.webkit.WebView
    public void loadData(String str, String str2, String str3) {
        addJavascriptInterface();
        super.loadData(str, str2, str3);
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        addJavascriptInterface();
        super.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        addJavascriptInterface();
        super.loadUrl(str);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        addJavascriptInterface();
        super.loadUrl(str, map);
    }

    public void loadVideo(String str, String str2) {
        SDKLogger.printDebugLog(this.TAG, ">>>>loadVideo: Domain = " + str + "\nURL = " + str2);
        invokeJS("javascript:initVideoPlayer(\"" + str + "\",\"" + str2 + "\")");
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ConfigurationChangeListener configurationChangeListener = this.mConfigurationChangeListener;
        if (configurationChangeListener != null) {
            configurationChangeListener.onConfigChange();
        }
    }

    public void pauseVideo() {
        invokeJS("javascript:pause()");
    }

    public void refreshVideo() {
        invokeJS("javascript:refresh()");
    }

    public void requestCurrentVideoTime() {
        invokeJS("javascript:requestCurrentVideoTime()");
    }

    public void resumeVideo() {
        invokeJS("javascript:resume()");
    }

    public void seekTo(int i) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append(">>>>VIDEO TIME: Seek to (in seconds) = ");
        int i2 = i / 1000;
        sb.append(String.valueOf(i2));
        SDKLogger.printDebugLog(str, sb.toString());
        invokeJS("javascript:seek(\"" + i2 + "\")");
    }

    public void setOnConfigurationChangeListener(ConfigurationChangeListener configurationChangeListener) {
        this.mConfigurationChangeListener = configurationChangeListener;
    }

    public void stopVideo() {
        invokeJS("javascript:stop()");
    }
}
