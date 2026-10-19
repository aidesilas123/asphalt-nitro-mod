package com.kidoz.sdk.api.fullscreen_video_layer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.json.b4;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class FullScreenVideoEnabledWebView extends WebView {
    private boolean addedJavascriptInterface;
    private FullScreenVideoEnabledWebChromeClient videoEnabledWebChromeClient;

    public class JavascriptInterface {
        public JavascriptInterface() {
        }

        @android.webkit.JavascriptInterface
        public void notifyVideoEnd() {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebView.JavascriptInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    if (FullScreenVideoEnabledWebView.this.videoEnabledWebChromeClient != null) {
                        FullScreenVideoEnabledWebView.this.videoEnabledWebChromeClient.onHideCustomView();
                    }
                }
            });
        }
    }

    public FullScreenVideoEnabledWebView(Context context) {
        super(context);
        this.addedJavascriptInterface = false;
    }

    public FullScreenVideoEnabledWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.addedJavascriptInterface = false;
    }

    public FullScreenVideoEnabledWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.addedJavascriptInterface = false;
    }

    private void addJavascriptInterface() {
        if (this.addedJavascriptInterface) {
            return;
        }
        addJavascriptInterface(new JavascriptInterface(), "_VideoEnabledWebView");
        this.addedJavascriptInterface = true;
    }

    public void initWebViewSettings() {
        getSettings().setJavaScriptEnabled(true);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            getSettings().setMixedContentMode(0);
        }
        setDrawingCacheBackgroundColor(0);
        setBackgroundColor(Color.argb(1, 0, 0, 0));
        setFocusableInTouchMode(true);
        setFocusable(true);
        if (i < 23) {
            setAnimationCacheEnabled(true);
        }
        setDrawingCacheEnabled(true);
        if (i < 19) {
            getSettings().setDatabasePath(getContext().getCacheDir() + "/databases");
        }
        getSettings().setAppCacheEnabled(true);
        getSettings().setDatabaseEnabled(true);
        if (i < 18) {
            getSettings().setAppCacheMaxSize(Long.MAX_VALUE);
        }
        if (i < 17) {
            getSettings().setEnableSmoothTransition(true);
        }
        if (i < 18) {
            getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        }
        getSettings().setBuiltInZoomControls(false);
        getSettings().setDisplayZoomControls(false);
        getSettings().setGeolocationDatabasePath(getContext().getFilesDir().toString());
        getSettings().setAppCachePath(getContext().getCacheDir().toString());
        getSettings().setAllowContentAccess(false);
        getSettings().setDefaultTextEncodingName(b4.L);
        getSettings().setGeolocationEnabled(true);
        getSettings().setSupportMultipleWindows(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        getSettings().setBlockNetworkImage(false);
        if (i < 18) {
            getSettings().setPluginState(WebSettings.PluginState.ON);
            getSettings().setSavePassword(false);
        }
        if (i >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        getSettings().setDomStorageEnabled(true);
        getSettings().setAllowFileAccess(true);
        getSettings().setSupportZoom(false);
        if (i >= 16) {
            getSettings().setAllowFileAccessFromFileURLs(true);
            getSettings().setAllowUniversalAccessFromFileURLs(true);
        }
        getSettings().setSaveFormData(false);
        getSettings().setLoadWithOverviewMode(false);
        getSettings().setUseWideViewPort(false);
        getSettings().setCacheMode(-1);
        if (i >= 16) {
            setLayerType(2, null);
        }
        getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        if (i >= 19) {
            WebView.setWebContentsDebuggingEnabled(ConstantDef.DGM);
        }
        if (i >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
    }

    public boolean isVideoFullscreen() {
        FullScreenVideoEnabledWebChromeClient fullScreenVideoEnabledWebChromeClient = this.videoEnabledWebChromeClient;
        return fullScreenVideoEnabledWebChromeClient != null && fullScreenVideoEnabledWebChromeClient.isVideoFullscreen();
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

    @Override // android.webkit.WebView
    @SuppressLint({"SetJavaScriptEnabled"})
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        getSettings().setJavaScriptEnabled(true);
        if (webChromeClient instanceof FullScreenVideoEnabledWebChromeClient) {
            this.videoEnabledWebChromeClient = (FullScreenVideoEnabledWebChromeClient) webChromeClient;
        }
        super.setWebChromeClient(webChromeClient);
    }
}
