package com.kidoz.sdk.api.players.web_player;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.drive.DriveFile;
import com.json.b4;
import com.kidoz.events.EventManager;
import com.kidoz.events.a;
import com.kidoz.sdk.api.general.ContentExecutionHandler;
import com.kidoz.sdk.api.general.IViewVisibilityEventListener;
import com.kidoz.sdk.api.general.ViewVisibilityEventListener;
import com.kidoz.sdk.api.general.enums.ContentType;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.TestUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.web_view_clients.KidozWebChromeClient;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class KidozWebView extends WebView {
    private static int API = 0;
    protected static final String HTTP = "http://";
    protected static final String HTTPS = "https://";
    protected static final String KIDOZ_DOMAIN = "kidoz";
    protected static final List<String> PREFIXES_TO_REMOVE;
    protected static final String WWW = "www.";
    protected static final String WWW2 = "www2.";
    private final String TAG;
    private ArrayList<String> mAllowedSitesKeyWords;
    private ContentItem mContentItem;
    private Context mContext;
    private String mGooglePlayAppId;
    private String mLastOverloadUrl;
    private ViewVisibilityEventListener mViewVisibilityEventListener;
    private WebPlayerType mWebPlayerType;
    private WebViewVisibilityListener mWebViewIVisibilityListener;
    private IOnLounchExternalAppFromRedirectListener onLounchExternalAppFromRedirectListener;
    private Utils.StaticHandler staticHandler;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.players.web_player.KidozWebView$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType;

        static {
            int[] iArr = new int[WebPlayerType.values().length];
            $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType = iArr;
            try {
                iArr[WebPlayerType.ONLINE_GAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[WebPlayerType.WEB_BROWSER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[WebPlayerType.EXTERNAL_LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[WebPlayerType.ROVIO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface IOnLounchExternalAppFromRedirectListener {
        void onLounch();
    }

    static {
        LinkedList linkedList = new LinkedList();
        PREFIXES_TO_REMOVE = linkedList;
        linkedList.add(HTTP);
        linkedList.add(HTTPS);
        linkedList.add(WWW);
        linkedList.add(WWW2);
        API = Build.VERSION.SDK_INT;
    }

    public KidozWebView(Context context) {
        super(context);
        this.mLastOverloadUrl = "";
        this.TAG = KidozWebView.class.getSimpleName();
        this.mAllowedSitesKeyWords = new ArrayList<>();
        this.mWebPlayerType = WebPlayerType.WEB_BROWSER;
        this.mGooglePlayAppId = null;
        this.mContext = context;
        initWebView();
        initForTarget(this.mWebPlayerType);
    }

    public KidozWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastOverloadUrl = "";
        this.TAG = KidozWebView.class.getSimpleName();
        this.mAllowedSitesKeyWords = new ArrayList<>();
        this.mWebPlayerType = WebPlayerType.WEB_BROWSER;
        this.mGooglePlayAppId = null;
        this.mContext = context;
        initWebView();
        initForTarget(this.mWebPlayerType);
    }

    public KidozWebView(Context context, WebPlayerType webPlayerType) {
        super(context);
        this.mLastOverloadUrl = "";
        this.TAG = KidozWebView.class.getSimpleName();
        this.mAllowedSitesKeyWords = new ArrayList<>();
        this.mWebPlayerType = WebPlayerType.WEB_BROWSER;
        this.mGooglePlayAppId = null;
        this.mContext = context;
        this.mWebPlayerType = webPlayerType;
        initWebView();
        initForTarget(webPlayerType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkIfSafeUrl(String str) {
        if (str == null) {
            return false;
        }
        if (!str.contains(KIDOZ_DOMAIN)) {
            String strRemovePrefix = removePrefix(str);
            String lowerCase = strRemovePrefix != null ? strRemovePrefix.toLowerCase(Locale.US) : null;
            SDKLogger.printDebugLog(this.TAG, "checkIfSafeUrl: fixedUrlString = " + lowerCase);
            if (this.mAllowedSitesKeyWords == null) {
                SDKLogger.printDebugLog(this.TAG, "Web Player  Not allowed link!");
                return false;
            }
            for (int i = 0; i < this.mAllowedSitesKeyWords.size(); i++) {
                String strRemovePrefix2 = removePrefix(this.mAllowedSitesKeyWords.get(i));
                SDKLogger.printDebugLog(this.TAG, "checkIfSafeUrl: originalUrl = " + strRemovePrefix2);
                if (lowerCase.contains(strRemovePrefix2 != null ? strRemovePrefix2.toLowerCase(Locale.US) : null)) {
                    SDKLogger.printDebugLog(this.TAG, "********************************");
                    SDKLogger.printDebugLog(this.TAG, "checkIfSafeUrl: found a match:fixedUrlString = " + lowerCase);
                    SDKLogger.printDebugLog(this.TAG, "checkIfSafeUrl: found a match:originalUrl = " + strRemovePrefix2);
                    SDKLogger.printDebugLog(this.TAG, "********************************");
                }
            }
            return false;
        }
        return true;
    }

    private String getDomain(String str) {
        SDKLogger.printDebugLog(this.TAG, "getDomain: URL = " + str);
        if (str != null) {
            String strRemovePrefix = removePrefix(str);
            SDKLogger.printDebugLog(this.TAG, "getDomain: urlStringWithoutPrefix = " + strRemovePrefix);
            String[] strArrSplit = strRemovePrefix.split("/");
            if (strArrSplit != null) {
                String str2 = strArrSplit[0];
                SDKLogger.printDebugLog(this.TAG, "getDomain: result = " + str2);
                return str2;
            }
            SDKLogger.printDebugLog(this.TAG, "getDomain: domainPartsArray = null");
        }
        return null;
    }

    private void initAWorkingSettingsForVideoInWebView() {
        getSettings().setJavaScriptEnabled(true);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            getSettings().setMixedContentMode(0);
        }
        setDrawingCacheBackgroundColor(0);
        setBackgroundColor(Color.argb(1, 0, 0, 0));
        setFocusableInTouchMode(true);
        setFocusable(true);
        setAnimationCacheEnabled(true);
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
        getSettings().setPluginState(WebSettings.PluginState.ON);
        if (i < 18) {
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

    private void initWebChromeClient() {
        setWebViewClient(new WebViewClient() { // from class: com.kidoz.sdk.api.players.web_player.KidozWebView.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                Log.e("LEV", "KIDOZ_LOG  - onPageStarted " + str);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                a aVar = new a();
                if (KidozWebView.this.mContentItem != null) {
                    aVar.d("ItemID", KidozWebView.this.mContentItem.getId());
                    aVar.d("AdvertiserID", KidozWebView.this.mContentItem.getAdvertiserID());
                }
                EventManager.getInstance(KidozWebView.this.getContext()).h(KidozWebView.this.getContext(), "0", "", EventManager.a, aVar, "WebView Error", String.valueOf(i).concat(": ").concat(str), str2);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                return (TestUtils.isMultiEnv() || !str.startsWith(KidozWebView.HTTP)) ? super.shouldInterceptRequest(webView, str) : new WebResourceResponse(null, null, null);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                Log.e("LEV", "KIDOZ_LOG  - shouldOverrideUrlLoading " + str);
                if (!TestUtils.isMultiEnv() && str.startsWith(KidozWebView.HTTP)) {
                    return true;
                }
                KidozWebView.this.mLastOverloadUrl = str;
                SDKLogger.printDebugLog(KidozWebView.this.TAG, "shouldOverrideUrlLoading: url= " + str);
                if (KidozWebView.this.mWebPlayerType == WebPlayerType.ROVIO) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                if (KidozWebView.this.mWebPlayerType == WebPlayerType.ONLINE_GAME || KidozWebView.this.mWebPlayerType == WebPlayerType.WEB_BROWSER) {
                    boolean z = !KidozWebView.this.checkIfSafeUrl(str);
                    if (z) {
                        ContentItem contentItem = new ContentItem();
                        contentItem.setContentType(ContentType.EXTERNAL_BROWSER_URL);
                        contentItem.setIsPromoted(true);
                        contentItem.setData(str);
                        ContentExecutionHandler.handleContentItemClick(KidozWebView.this.getContext(), contentItem, WidgetType.WIDGET_TYPE_NONE.getStringValue(), "0", 0, false, null);
                    }
                    return z;
                }
                if (KidozWebView.this.mWebPlayerType != WebPlayerType.EXTERNAL_LINK) {
                    webView.loadUrl(str);
                    return true;
                }
                if (!str.contains("market://") && !str.contains("start.google.com") && (!str.contains("play.google.com") || KidozWebView.this.mGooglePlayAppId == null)) {
                    webView.loadUrl(str);
                    return true;
                }
                try {
                    String str2 = "market://details?id=" + KidozWebView.this.mGooglePlayAppId;
                    String[] strArrSplit = str.split(KidozWebView.this.mGooglePlayAppId);
                    if (strArrSplit != null && strArrSplit.length > 1) {
                        str2 = str2 + strArrSplit[1];
                    }
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str2));
                    if (KidozWebView.this.onLounchExternalAppFromRedirectListener != null) {
                        KidozWebView.this.onLounchExternalAppFromRedirectListener.onLounch();
                    }
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    KidozWebView.this.mContext.startActivity(intent);
                    return true;
                } catch (Exception e2) {
                    SDKLogger.printErrorLog(KidozWebView.this.TAG, "Error when trying to open google start for promoted app: \n" + e2.getMessage());
                    return true;
                }
            }
        });
    }

    @SuppressLint({"NewApi"})
    private void initWebView() {
        if (this.mViewVisibilityEventListener == null) {
            ViewVisibilityEventListener viewVisibilityEventListener = new ViewVisibilityEventListener(this);
            this.mViewVisibilityEventListener = viewVisibilityEventListener;
            viewVisibilityEventListener.setViewVisibilityEventListener(new IViewVisibilityEventListener() { // from class: com.kidoz.sdk.api.players.web_player.KidozWebView.1
                @Override // com.kidoz.sdk.api.general.IViewVisibilityEventListener
                public void onViewBecameVisible(boolean z) {
                    if (KidozWebView.this.mWebViewIVisibilityListener != null) {
                        KidozWebView.this.mWebViewIVisibilityListener.onWebViewBecameVisible(z);
                    }
                }
            });
        }
        Utils.StaticHandler staticHandler = new Utils.StaticHandler(Looper.getMainLooper());
        this.staticHandler = staticHandler;
        staticHandler.removeCallbacksAndMessages(null);
        setDrawingCacheBackgroundColor(0);
        setFocusableInTouchMode(true);
        setFocusable(true);
        setAnimationCacheEnabled(true);
        setDrawingCacheEnabled(true);
        if (API > 15) {
            setBackground(null);
            getRootView().setBackground(null);
        } else {
            getRootView().setBackgroundDrawable(null);
        }
        setWillNotCacheDrawing(false);
        setAlwaysDrawnWithCacheEnabled(true);
        setScrollbarFadingEnabled(true);
        setSaveEnabled(true);
        setWebChromeClient(new KidozWebChromeClient());
        initWebChromeClient();
        if (Build.VERSION.SDK_INT >= 21) {
            getSettings().setMixedContentMode(0);
        }
    }

    private static String removePrefix(String str) {
        try {
            String lowerCase = str.toLowerCase();
            for (String str2 : PREFIXES_TO_REMOVE) {
                if (lowerCase.startsWith(str2)) {
                    lowerCase = lowerCase.substring(str2.length(), lowerCase.length());
                }
            }
            return lowerCase;
        } catch (Exception unused) {
            return null;
        }
    }

    public String getLastOverloadUrl() {
        return this.mLastOverloadUrl;
    }

    public void initForTarget(WebPlayerType webPlayerType) {
        if (webPlayerType != null) {
            int i = AnonymousClass3.$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[webPlayerType.ordinal()];
            if (i == 1) {
                initAWorkingSettingsForVideoInWebView();
                return;
            }
            if (i == 2) {
                initAWorkingSettingsForVideoInWebView();
            } else if (i == 3) {
                initializeGeneralSettingsState(getContext());
            } else {
                if (i != 4) {
                    return;
                }
                initAWorkingSettingsForVideoInWebView();
            }
        }
    }

    @TargetApi(19)
    public synchronized void initOnlineGameSettings(Context context) {
        if (API < 18) {
            getSettings().setAppCacheMaxSize(Long.MAX_VALUE);
        }
        if (API < 17) {
            getSettings().setEnableSmoothTransition(true);
        }
        if (API >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(true);
        }
        if (API >= 19) {
            WebView.setWebContentsDebuggingEnabled(ConstantDef.DGM);
        }
        if (API < 19) {
            getSettings().setDatabasePath(context.getCacheDir() + "/databases");
        }
        getSettings().setJavaScriptEnabled(true);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setAllowContentAccess(true);
        getSettings().setUseWideViewPort(false);
        if (Build.VERSION.SDK_INT < 18) {
            getSettings().setPluginState(WebSettings.PluginState.ON);
        }
        getSettings().setDomStorageEnabled(true);
        getSettings().setAllowFileAccess(true);
        clearHistory();
        clearFormData();
        if (API >= 19) {
            try {
                getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING);
            } catch (Exception e2) {
                getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
                SDKLogger.printErrorLog(this.TAG, "Error when trying to set layout algorithm: " + e2.getMessage());
            }
        } else {
            getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        }
        if (Build.VERSION.SDK_INT > 22) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled", "NewApi"})
    public void initializeGeneralSettingsState(Context context) {
        if (API < 18) {
            getSettings().setAppCacheMaxSize(Long.MAX_VALUE);
        }
        if (API < 17) {
            getSettings().setEnableSmoothTransition(true);
        }
        if (API >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        if (API >= 19) {
            WebView.setWebContentsDebuggingEnabled(ConstantDef.DGM);
        }
        if (API < 19) {
            getSettings().setDatabasePath(context.getCacheDir() + "/databases");
        }
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(context.getCacheDir().toString());
        getSettings().setCacheMode(-1);
        getSettings().setGeolocationDatabasePath(context.getFilesDir().toString());
        getSettings().setAllowFileAccess(true);
        getSettings().setDatabaseEnabled(true);
        getSettings().setSupportZoom(true);
        getSettings().setBuiltInZoomControls(true);
        getSettings().setDisplayZoomControls(false);
        getSettings().setAllowContentAccess(true);
        getSettings().setDefaultTextEncodingName(b4.L);
        if (API >= 16) {
            getSettings().setAllowFileAccessFromFileURLs(false);
            getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("settings", 0);
        getSettings().setGeolocationEnabled(sharedPreferences.getBoolean(WebPreferenceConstants.LOCATION, false));
        if (API < 19) {
            int i = sharedPreferences.getInt(WebPreferenceConstants.ADOBE_FLASH_SUPPORT, 0);
            if (i == 0) {
                getSettings().setPluginState(WebSettings.PluginState.OFF);
            } else if (i == 1) {
                getSettings().setPluginState(WebSettings.PluginState.ON_DEMAND);
            } else if (i == 2) {
                getSettings().setPluginState(WebSettings.PluginState.ON);
            }
        }
        if (sharedPreferences.getBoolean(WebPreferenceConstants.SAVE_PASSWORDS, false)) {
            if (API < 18) {
                getSettings().setSavePassword(true);
            }
            getSettings().setSaveFormData(true);
        }
        if (sharedPreferences.getBoolean(WebPreferenceConstants.JAVASCRIPT, true)) {
            getSettings().setJavaScriptEnabled(true);
            getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        }
        if (sharedPreferences.getBoolean(WebPreferenceConstants.TEXT_REFLOW, false)) {
            getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        } else if (API >= 19) {
            try {
                getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING);
            } catch (Exception e2) {
                getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
                SDKLogger.printErrorLog(this.TAG, "Error when trying to set layout algorithm: " + e2.getMessage());
            }
        } else {
            getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        }
        getSettings().setBlockNetworkImage(sharedPreferences.getBoolean(WebPreferenceConstants.BLOCK_IMAGES, false));
        getSettings().setSupportMultipleWindows(sharedPreferences.getBoolean(WebPreferenceConstants.POPUPS, true));
        getSettings().setUseWideViewPort(sharedPreferences.getBoolean(WebPreferenceConstants.USE_WIDE_VIEWPORT, true));
        getSettings().setLoadWithOverviewMode(sharedPreferences.getBoolean(WebPreferenceConstants.OVERVIEW_MODE, true));
        int i2 = sharedPreferences.getInt(WebPreferenceConstants.TEXT_SIZE, 3);
        if (i2 == 1) {
            getSettings().setTextZoom(200);
        } else if (i2 == 2) {
            getSettings().setTextZoom(150);
        } else if (i2 == 3) {
            getSettings().setTextZoom(100);
        } else if (i2 == 4) {
            getSettings().setTextZoom(75);
        } else if (i2 == 5) {
            getSettings().setTextZoom(50);
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 > 22) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
        if (i3 >= 21) {
            getSettings().setMixedContentMode(0);
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
    }

    public void loadWebUrl(String str, String str2) {
        this.mAllowedSitesKeyWords.clear();
        this.mAllowedSitesKeyWords.add(getDomain(str));
        this.mAllowedSitesKeyWords.add(str);
        this.mGooglePlayAppId = str2;
        loadUrl(str);
    }

    public void loadWebUrl(String[] strArr, String str, String str2) {
        if (TestUtils.isMultiEnv() || !str.startsWith(HTTP)) {
            this.mLastOverloadUrl = "";
            this.mAllowedSitesKeyWords.clear();
            if (strArr != null) {
                this.mAllowedSitesKeyWords.addAll(Arrays.asList(strArr));
            }
            this.mAllowedSitesKeyWords.add(getDomain(str));
            this.mAllowedSitesKeyWords.add(str);
            this.mGooglePlayAppId = str2;
            loadUrl(str);
        }
    }

    public synchronized void onDestroy() {
        stopLoading();
        clearHistory();
        removeAllViews();
        destroyDrawingCache();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.webkit.WebView
    public void onPause() {
        stopLoading();
        super.onPause();
    }

    @Override // android.webkit.WebView
    public void onResume() {
        super.onResume();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
    }

    public void setContentItem(ContentItem contentItem) {
        this.mContentItem = contentItem;
    }

    public void setOnLounchExternalAppFromRedirect(IOnLounchExternalAppFromRedirectListener iOnLounchExternalAppFromRedirectListener) {
        this.onLounchExternalAppFromRedirectListener = iOnLounchExternalAppFromRedirectListener;
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
