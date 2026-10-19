package com.kidoz.sdk.api.ui_views.html_view;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.json.b4;
import com.kidoz.sdk.api.general.IViewVisibilityEventListener;
import com.kidoz.sdk.api.general.ViewVisibilityEventListener;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.kidoz.sdk.api.players.web_player.WebViewVisibilityListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class HtmlFiveWebView extends WebView {
    private static final String TAG = HtmlFiveWebView.class.getSimpleName();
    private ViewVisibilityEventListener mViewVisibilityEventListener;
    private WebViewVisibilityListener mWebViewIVisibilityListener;

    public HtmlFiveWebView(Context context) {
        super(context);
        try {
            initWebView(context);
        } catch (Exception e2) {
            Log.d(TAG, "HtmlFiveWebView | Constructor | Exception: " + e2.getLocalizedMessage());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            getSettings().setMixedContentMode(0);
        }
    }

    public HtmlFiveWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (Build.VERSION.SDK_INT >= 21) {
            getSettings().setMixedContentMode(0);
        }
    }

    public HtmlFiveWebView(Context context, boolean z) {
        super(context);
        initWorkingSettingsForVideoInWebView();
    }

    private void initWebView(Context context) {
        if (this.mViewVisibilityEventListener == null) {
            ViewVisibilityEventListener viewVisibilityEventListener = new ViewVisibilityEventListener(this);
            this.mViewVisibilityEventListener = viewVisibilityEventListener;
            viewVisibilityEventListener.setViewVisibilityEventListener(new IViewVisibilityEventListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlFiveWebView.1
                @Override // com.kidoz.sdk.api.general.IViewVisibilityEventListener
                public void onViewBecameVisible(boolean z) {
                    if (HtmlFiveWebView.this.mWebViewIVisibilityListener != null) {
                        HtmlFiveWebView.this.mWebViewIVisibilityListener.onWebViewBecameVisible(z);
                    }
                }
            });
        }
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            WebView.setWebContentsDebuggingEnabled(ConstantDef.DGM);
        }
        setDrawingCacheBackgroundColor(0);
        setBackgroundColor(Color.argb(1, 0, 0, 0));
        setFocusableInTouchMode(true);
        setFocusable(true);
        if (i < 23) {
            setAnimationCacheEnabled(true);
        }
        if (i >= 16) {
            setBackground(null);
            getRootView().setBackground(null);
        } else {
            getRootView().setBackgroundDrawable(null);
        }
        if (i < 19) {
            getSettings().setDatabasePath(context.getDir("database", 0).getPath());
        }
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
        getSettings().setGeolocationDatabasePath(context.getFilesDir().toString());
        getSettings().setAllowContentAccess(false);
        getSettings().setDefaultTextEncodingName(b4.L);
        getSettings().setGeolocationEnabled(true);
        getSettings().setSupportMultipleWindows(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        getSettings().setBlockNetworkImage(false);
        SharedPreferences sharedPreferences = context.getSharedPreferences("settings", 0);
        if (i < 18) {
            int i2 = sharedPreferences.getInt(WebPreferenceConstants.ADOBE_FLASH_SUPPORT, 0);
            if (i2 == 0) {
                getSettings().setPluginState(WebSettings.PluginState.OFF);
            } else if (i2 == 1) {
                getSettings().setPluginState(WebSettings.PluginState.ON_DEMAND);
            } else if (i2 == 2) {
                getSettings().setPluginState(WebSettings.PluginState.ON);
            }
        }
        if (i < 18) {
            getSettings().setSavePassword(false);
        }
        applyProperties(new JSONObject());
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
        getSettings().setCacheMode(2);
        if (i >= 16) {
            setLayerType(2, null);
        }
        if (i >= 21) {
            getSettings().setMixedContentMode(0);
        }
        if (sharedPreferences.getBoolean(WebPreferenceConstants.TEXT_REFLOW, false)) {
            getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        } else {
            if (i < 19) {
                getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
                return;
            }
            try {
                getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING);
            } catch (IllegalArgumentException unused) {
                getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            }
        }
    }

    private void initWorkingSettingsForVideoInWebView() {
        getSettings().setJavaScriptEnabled(true);
        CookieManager.getInstance().setAcceptCookie(true);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        }
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
        if (i < 19) {
            getSettings().setDatabasePath(getContext().getCacheDir() + "/databases");
        }
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
        getSettings().setAllowContentAccess(false);
        getSettings().setDefaultTextEncodingName(b4.L);
        getSettings().setGeolocationEnabled(true);
        getSettings().setSupportMultipleWindows(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        getSettings().setBlockNetworkImage(false);
        if (i < 18) {
            getSettings().setSavePassword(false);
            getSettings().setPluginState(WebSettings.PluginState.ON);
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
        getSettings().setCacheMode(2);
        if (i >= 16) {
            setLayerType(2, null);
        }
        if (i >= 21) {
            getSettings().setMixedContentMode(0);
        }
        getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        if (i >= 19) {
            WebView.setWebContentsDebuggingEnabled(ConstantDef.DGM);
        }
        if (i >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
    }

    public void applyProperties(JSONObject jSONObject) {
        if (jSONObject != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 17) {
                getSettings().setMediaPlaybackRequiresUserGesture(jSONObject.optBoolean("setMediaPlaybackRequiersGesture", false));
            }
            getSettings().setDomStorageEnabled(jSONObject.optBoolean("setDomStorageEnabled", true));
            getSettings().setAllowFileAccess(jSONObject.optBoolean("setAllowFileAccess", true));
            getSettings().setSupportZoom(jSONObject.optBoolean("setZoomSupport", false));
            if (i >= 16) {
                getSettings().setAllowFileAccessFromFileURLs(jSONObject.optBoolean("setAllowFileAccessFromFileUrls", true));
                getSettings().setAllowUniversalAccessFromFileURLs(jSONObject.optBoolean("setAllowUniversalAccessFromFileURLs", true));
                if (jSONObject.optBoolean("setHardwareAcceleration", true)) {
                    setLayerType(2, null);
                } else {
                    setLayerType(1, null);
                }
            }
            getSettings().setSaveFormData(jSONObject.optBoolean("setSaveFormData", false));
            getSettings().setLoadWithOverviewMode(jSONObject.optBoolean("setLoadWithOverviewMode", false));
            getSettings().setUseWideViewPort(jSONObject.optBoolean("setUseWideViewPort", false));
            getSettings().setCacheMode(jSONObject.optInt("setCacheMode", 2));
            if (jSONObject.has("setBackgroundColor")) {
                try {
                    setBackgroundColor(Color.argb(1, 0, 0, 0));
                } catch (Exception unused) {
                }
            }
        }
        setBackgroundColor(Color.argb(1, 0, 0, 0));
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    @Override // android.view.View
    public boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        return false;
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void setWebViewVisibilityListener(WebViewVisibilityListener webViewVisibilityListener) {
        this.mWebViewIVisibilityListener = webViewVisibilityListener;
    }

    public synchronized void stopAndReleaseWebView() {
        loadUrl("");
        stopLoading();
        clearHistory();
        removeAllViews();
        destroyDrawingCache();
    }
}
