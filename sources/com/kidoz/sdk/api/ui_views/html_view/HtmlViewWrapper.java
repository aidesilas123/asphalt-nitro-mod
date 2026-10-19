package com.kidoz.sdk.api.ui_views.html_view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.google.android.gms.drive.DriveFile;
import com.json.b4;
import com.json.o2;
import com.kidoz.events.EventManager;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.dialogs.AboutKidozDialog;
import com.kidoz.sdk.api.dialogs.ParentalLockDialog;
import com.kidoz.sdk.api.general.ContentExecutionHandler;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.general.cache.CacheWebViewFactory;
import com.kidoz.sdk.api.general.enums.ContentType;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.SdkCookieManager;
import com.kidoz.sdk.api.general.utils.StorageLife;
import com.kidoz.sdk.api.general.utils.TestUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.players.web_player.WebViewVisibilityListener;
import com.kidoz.sdk.api.server_connect.SdkAPIManager;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.loading_progress_view.LoadingProgressView;
import com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter;
import com.kidoz.sdk.api.ui_views.web_view_clients.KidozWebChromeClient;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class HtmlViewWrapper extends RelativeLayout implements HtmlJavaScriptInterafce {
    private static final String JS_OBJECT_NAME = "KidozAndroid";
    protected static final float LOADING_PROGRESS_DEFAULT_RATIO = 0.35f;
    protected static final int ON_AD_FAILED_TO_LOAD = 9;
    protected static final int ON_AD_FAILED_TO_START = 12;
    protected static final int ON_AD_IMPRESSION = 13;
    protected static final int ON_AD_LOADED = 5;
    protected static final int ON_AD_STARTED = 11;
    protected static final int ON_AD_STATE_CHANGE = 8;
    protected static final int ON_CLOSE = 3;
    protected static final int ON_LOAD_FINISHED = 0;
    protected static final int ON_LOAD_STARTED = 1;
    protected static final int ON_RECEIVED_ERROR = 4;
    protected static final int ON_REWARDED = 6;
    protected static final int ON_REWARDED_STARTED = 7;
    protected static final int ON_VIEW_READY = 2;
    protected static final int ON_VIEW_READY_2 = 10;
    protected static final String TAG = HtmlViewWrapper.class.getSimpleName();
    private boolean blockClick;
    protected AdState mAdState;
    protected boolean mAllowClickHandling;
    private boolean mAllowJSResize;
    private BannerInvokeUrlInterface mBannerInvokeUrlInterface;
    private BannerLoadJSInterface mBannerLoadJSInterface;
    private BannerShowJSInterface mBannerShowJSInterface;
    protected ContentItem mContentItem;
    protected Handler mEventHandler;
    protected Handler mExecutionHandler;
    protected String mHtmlPageUrl;
    protected IOnHtmlWebViewInterface mHtmlWeViewListener;
    protected SoftReference<Context> mInFocusActivityContext;
    protected boolean mIsShowClose;
    private String mLastOverloadUrl;
    protected LoadingProgressView mLoadingProgressView;
    private int mPreviousOrientation;
    protected IOnInitFinishedListener mSdkInitListener;
    protected String mStyleId;
    protected ItemViewPagerAdapter.ViewPagerItemClickListener mViewPagerItemClickListener;
    public HtmlFiveWebView mWebView;
    protected String mWidgetType;
    public boolean webViewInitialized;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper$27, reason: invalid class name */
    static /* synthetic */ class AnonymousClass27 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType;

        static {
            int[] iArr = new int[ContentType.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType = iArr;
            try {
                iArr[ContentType.PROMOTED_PLAY_APPLICATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[ContentType.HTML.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum AdState {
        AD_PLAYING,
        AD_STOPED
    }

    public interface BannerInvokeUrlInterface {
        void onResponse(String str);
    }

    public interface BannerLoadJSInterface {
        void onError(KidozError kidozError);

        void onSuccess();
    }

    public interface BannerShowJSInterface {
        void onError(int i, String str);

        void onImpression();

        void onSuccess();
    }

    public interface IOnInitFinishedListener {
        void onInitFinished();
    }

    public HtmlViewWrapper(Context context, boolean z) {
        super(context);
        this.mWidgetType = "";
        this.mAllowClickHandling = true;
        this.mLastOverloadUrl = "";
        this.mIsShowClose = true;
        this.mAdState = AdState.AD_STOPED;
        this.mAllowJSResize = false;
        this.blockClick = false;
        this.webViewInitialized = false;
        this.mExecutionHandler = new Handler(Looper.getMainLooper());
        try {
            initView(z);
            this.webViewInitialized = true;
        } catch (Exception unused) {
        }
    }

    private void initHandler() {
        this.mEventHandler = new Handler(Looper.getMainLooper()) { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                HtmlViewWrapper.this.onHandleLocalUiThreadedEvents(message);
            }
        };
    }

    private void initProgressLoadingView() {
        this.mLoadingProgressView = new LoadingProgressView(getContext());
        Point screenSize = Utils.getScreenSize(getContext());
        int iMin = (int) (Math.min(screenSize.x, screenSize.y) * LOADING_PROGRESS_DEFAULT_RATIO);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iMin, iMin);
        layoutParams.addRule(13);
        addView(this.mLoadingProgressView, layoutParams);
    }

    private void initView(boolean z) throws Exception {
        initHandler();
        initWebView(z);
        initProgressLoadingView();
    }

    private void initWebView(boolean z) throws Exception {
        try {
            this.mWebView = new HtmlFiveWebView(getContext());
            if (z) {
                clearCache();
            }
            this.mWebView.setWebViewVisibilityListener(new WebViewVisibilityListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.2
                @Override // com.kidoz.sdk.api.players.web_player.WebViewVisibilityListener
                public void onWebViewBecameVisible(boolean z2) {
                    if (z2) {
                        HtmlViewWrapper.this.invokeJSfunction("javascript:focus()");
                    } else {
                        HtmlViewWrapper.this.invokeJSfunction("javascript:blur()");
                    }
                }
            });
            applyJavaScriptInterfaces();
            this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.3
                @Override // android.webkit.WebViewClient
                public void onLoadResource(WebView webView, String str) {
                }

                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    HtmlViewWrapper.this.mEventHandler.sendEmptyMessage(0);
                    if (HtmlViewWrapper.this.mAllowJSResize) {
                        SDKLogger.printDebugLog("HtmlViewWrapper | onPageFinished | calling js.resize");
                        HtmlViewWrapper.this.mWebView.loadUrl("javascript:KidozAndroid.resize(document.body.getBoundingClientRect().width, document.body.getBoundingClientRect().height)");
                    }
                }

                @Override // android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    super.onPageStarted(webView, str, bitmap);
                    HtmlViewWrapper.this.mEventHandler.sendEmptyMessage(1);
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    SDKLogger.printDebugLog("HtmlViewWrapper | onReceivedError: " + i + ", description: " + str);
                    com.kidoz.events.a aVar = new com.kidoz.events.a();
                    ContentItem contentItem = HtmlViewWrapper.this.mContentItem;
                    if (contentItem != null) {
                        aVar.d("ItemID", contentItem.getId());
                        aVar.d("AdvertiserID", HtmlViewWrapper.this.mContentItem.getAdvertiserID());
                    }
                    HtmlViewWrapper.this.onAdFailedToLoad(i, str);
                    EventManager eventManager = EventManager.getInstance(HtmlViewWrapper.this.getContext());
                    Context context = HtmlViewWrapper.this.getContext();
                    HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                    eventManager.h(context, htmlViewWrapper.mWidgetType, htmlViewWrapper.mStyleId, EventManager.a, aVar, "WebView Error", String.valueOf(i).concat(": ").concat(str), str2);
                }

                @Override // android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    return (TestUtils.isMultiEnv() || !str.startsWith("http://")) ? super.shouldInterceptRequest(webView, str) : new WebResourceResponse(null, null, null);
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (HtmlViewWrapper.this.blockClick) {
                        return true;
                    }
                    if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
                        return true;
                    }
                    HtmlViewWrapper.this.mLastOverloadUrl = str;
                    SDKLogger.printDebugLog("HtmlViewWrapper | shouldOverrideUrlLoading | url: " + str);
                    ContentItem contentItem = HtmlViewWrapper.this.mContentItem;
                    return (contentItem == null || contentItem.getContentType() == null || HtmlViewWrapper.this.mContentItem.getContentType() != ContentType.ROVIO_ITEM) ? HtmlViewWrapper.this.handleOverrideUrlLoading(webView, str) : super.shouldOverrideUrlLoading(webView, str);
                }
            });
            this.mWebView.setWebChromeClient(new KidozWebChromeClient());
            addView(this.mWebView, new RelativeLayout.LayoutParams(-1, -1));
        } catch (Throwable th) {
            String str = "Failed to init WebView " + th.getMessage();
            String str2 = TAG;
            Log.e(str2, "**************************************************************");
            Log.e(str2, str);
            Log.e(str2, "**************************************************************");
            throw new Exception(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$notifyAdFailedToStart$1, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void a(int i, String str) {
        this.mBannerShowJSInterface.onError(i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$notifyAdImpression$2, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b() {
        this.mBannerShowJSInterface.onImpression();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$notifyAdStarted$0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c() {
        this.mBannerShowJSInterface.onSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdFailedToLoad(final int i, final String str) {
        if (this.mBannerLoadJSInterface != null) {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.26
                @Override // java.lang.Runnable
                public void run() {
                    HtmlViewWrapper.this.mBannerLoadJSInterface.onError(new KidozError(i, str));
                }
            });
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 9;
        messageObtain.arg1 = i;
        messageObtain.obj = str;
        this.mEventHandler.sendMessage(messageObtain);
    }

    private void onGetDonePlayback() {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.14
            @Override // java.lang.Runnable
            public void run() {
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface = HtmlViewWrapper.this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface != null) {
                    iOnHtmlWebViewInterface.onDonePlayBack();
                }
            }
        });
    }

    private void onGetParentalLockState(final String str) {
        if (str != null) {
            final boolean zIsParentalLockActive = ParentalLockDialog.isParentalLockActive(getContext());
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.15
                @Override // java.lang.Runnable
                public void run() {
                    HtmlViewWrapper.this.invokeJSfunction("javascript:" + str + "('" + zIsParentalLockActive + "');");
                }
            });
        }
    }

    private void setAndApplyExternalProperties(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        HtmlFiveWebView htmlFiveWebView;
        if (jSONObject != null) {
            if (jSONObject.has("webview_properties") && !jSONObject.isNull("webview_properties") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("webview_properties")) != null && (htmlFiveWebView = this.mWebView) != null) {
                htmlFiveWebView.applyProperties(jSONObjectOptJSONObject);
            }
            this.mIsShowClose = jSONObject.optBoolean("showClose", false);
        }
    }

    @SuppressLint({"JavascriptInterface"})
    protected void applyJavaScriptInterfaces() {
        this.mWebView.addJavascriptInterface(this, JS_OBJECT_NAME);
    }

    public void clearCache() {
        HtmlFiveWebView htmlFiveWebView = this.mWebView;
        if (htmlFiveWebView != null) {
            htmlFiveWebView.clearCache(true);
            this.mWebView.clearHistory();
        }
    }

    public void clearHtmlView() {
        this.mWebView.loadUrl("");
    }

    public void destroy() {
        try {
            this.mWebView.setWebViewVisibilityListener(null);
            removeView(this.mWebView);
            this.mWebView.destroy();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.mWebView = null;
            this.mInFocusActivityContext = null;
            throw th;
        }
        this.mWebView = null;
        this.mInFocusActivityContext = null;
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void forwardToGooglePlay(String str, String str2, String str3, String str4, String str5, String str6) {
        if (this.blockClick) {
            return;
        }
        onForwardToGooglePlay(str, str2, str3, str4, str5, str6);
    }

    public String getLastOverloadUrl() {
        return this.mLastOverloadUrl;
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void getLocalParameter(String str, String str2) {
        try {
            onGetLocalParam(str, str2);
        } catch (Exception e2) {
            Log.d(TAG, "HtmlViewWrapper | onStoreLocalParameter | error: " + e2.getLocalizedMessage());
        }
    }

    @JavascriptInterface
    public String getParams() {
        Context context = getContext();
        Point screenSize = ScreenUtils.getScreenSize(context);
        KidozParams.ParamBuilder paramBuilder = new KidozParams.ParamBuilder();
        paramBuilder.setPublisherId(KidozSDK.getPublisherID()).setAuthToken(KidozSDK.getAuthToken()).setPackageId(KidozSDK.getAppId() != null ? KidozSDK.getAppId() : context.getPackageName()).setSdkVersion(ConstantDef.SDK_CONTENT_VERSION).setActualSdkVersion(KidozSDK.getSDKVersion()).setOsVersion(Build.VERSION.SDK_INT).setOsType("android").setExtensionType(ConstantDef.EXTENSION_TYPE).setExtensionVersion(ConstantDef.EXTENSION_VERSION).setNetworkType(Utils.getNetworkType(context)).setAppVersionCode(Utils.getAppVersionCode(context)).setAppVersionName(Utils.getAppVersionName(context)).setDeviceType(Utils.getDeviceType(context)).setDeviceLang(Locale.getDefault().getLanguage()).setDeviceHash(Utils.getSessionId(context)).setManufacturer(Build.MANUFACTURER).setModel(Build.MODEL).setWebviewVersion(Utils.getWebViewVersion()).setScreenSize(ScreenUtils.getDeviceScreenSizeInInches(context)).setDpi(ScreenUtils.getScreenDpi(context)).setScreenCategory(ScreenUtils.getScreenCategory(context)).setCarrierName(Utils.getCarrierName(context)).setResolutionHeight(screenSize.y).setResolutionWidth(screenSize.x);
        paramBuilder.setWidgetType(this.mWidgetType).setCacheBuster(Utils.getCacheBuster());
        if (TestUtils.isTestApp()) {
            paramBuilder.setOverrideWaterfallUrl(TestUtils.getOverrideWaterfallUrl(context, null));
        }
        return paramBuilder.build().toString();
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void getParentalLockStatus(String str) {
        try {
            onGetParentalLockState(str);
        } catch (Exception e2) {
            Log.d(TAG, "HtmlViewWrapper | onStoreLocalParameter | error: " + e2.getLocalizedMessage());
        }
    }

    public String getWidgetType() {
        return this.mWidgetType;
    }

    protected boolean handleOverrideUrlLoading(WebView webView, String str) {
        openGooglePlayStore(str);
        return true;
    }

    public void hideBanner() {
        invokeJSfunction("javascript:hideBanner();");
    }

    public void hideLoadingProgressView() {
        LoadingProgressView loadingProgressView = this.mLoadingProgressView;
        if (loadingProgressView != null) {
            loadingProgressView.stopLoadingAnimation();
        }
    }

    protected void invokeAboutClick() {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.7
            @Override // java.lang.Runnable
            public void run() {
                HtmlViewWrapper.this.startAboutKidozDialog();
            }
        });
    }

    protected void invokeInitiateWebViewProperties(final String str) {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HtmlViewWrapper.this.mWebView.applyProperties(new JSONObject(str));
                } catch (JSONException unused) {
                }
            }
        });
    }

    public void invokeJSfunction(final String str) {
        try {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.22
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Build.VERSION.SDK_INT >= 19) {
                            HtmlFiveWebView htmlFiveWebView = HtmlViewWrapper.this.mWebView;
                            if (htmlFiveWebView != null) {
                                htmlFiveWebView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.22.1
                                    @Override // android.webkit.ValueCallback
                                    public void onReceiveValue(String str2) {
                                        SDKLogger.printDebugLog("HtmlViewWrapper invokeJSfunction (" + str + ") | evaluateJS return value = " + str2);
                                    }
                                });
                            }
                        } else {
                            HtmlFiveWebView htmlFiveWebView2 = HtmlViewWrapper.this.mWebView;
                            if (htmlFiveWebView2 != null) {
                                htmlFiveWebView2.loadUrl(str);
                            }
                        }
                    } catch (Exception unused) {
                        HtmlFiveWebView htmlFiveWebView3 = HtmlViewWrapper.this.mWebView;
                        if (htmlFiveWebView3 != null) {
                            htmlFiveWebView3.loadUrl(str);
                        }
                    }
                }
            });
        } catch (Exception e2) {
            SDKLogger.printDebugLog("HtmlViewWrapper | invokeJS exception: " + e2.getLocalizedMessage());
        }
    }

    protected void invokeMaximizedClick() {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.9
            @Override // java.lang.Runnable
            public void run() {
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface = HtmlViewWrapper.this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface != null) {
                    iOnHtmlWebViewInterface.onOpenMaximized();
                }
            }
        });
    }

    protected void invokeOnImpressionServed(final String str, final String str2, final String str3, final String str4) {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.5
            @Override // java.lang.Runnable
            public void run() {
                int i;
                try {
                    i = Integer.parseInt(str4);
                } catch (Exception e2) {
                    SDKLogger.printErrorLog(HtmlViewWrapper.TAG, "Error when trying to parse positionIndex: " + e2.getMessage());
                    i = 0;
                }
                EventManager eventManager = EventManager.getInstance(HtmlViewWrapper.this.getContext());
                Context context = HtmlViewWrapper.this.getContext();
                HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                eventManager.n(context, htmlViewWrapper.mWidgetType, htmlViewWrapper.mStyleId, "Impression", str2, str3, str, i);
            }
        });
    }

    protected void invokeOnSimulateClick(final String str, final int i) {
        if (str != null) {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.6
                @Override // java.lang.Runnable
                public void run() {
                    ContentItem contentItem = null;
                    try {
                        JSONArray jSONArray = new JSONArray(str);
                        if (jSONArray.length() > 1) {
                            JSONArray jSONArray2 = jSONArray.getJSONArray(0);
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            if (jSONArray2 != null && jSONArray2.length() > 0) {
                                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                    linkedHashMap.put(jSONArray2.getString(i2), Integer.valueOf(i2));
                                }
                            }
                            if (!linkedHashMap.isEmpty() && jSONArray.getJSONArray(1) != null) {
                                contentItem = new ContentItem(jSONArray.getJSONArray(1), linkedHashMap);
                            }
                        }
                    } catch (JSONException e2) {
                        String localizedMessage = e2.getLocalizedMessage();
                        if (!TextUtils.isEmpty(localizedMessage)) {
                            SDKLogger.printErrorLog(localizedMessage);
                        }
                    }
                    ContentItem contentItem2 = contentItem;
                    if (contentItem2 != null) {
                        HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                        if (htmlViewWrapper.mAllowClickHandling) {
                            htmlViewWrapper.mAllowClickHandling = false;
                            SoftReference<Context> softReference = htmlViewWrapper.mInFocusActivityContext;
                            if (softReference == null || softReference.get() == null) {
                                return;
                            }
                            Context context = HtmlViewWrapper.this.mInFocusActivityContext.get();
                            HtmlViewWrapper htmlViewWrapper2 = HtmlViewWrapper.this;
                            ContentExecutionHandler.handleContentItemClick(context, contentItem2, htmlViewWrapper2.mWidgetType, htmlViewWrapper2.mStyleId, i, true, new ContentExecutionHandler.IOnHandleClickListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.6.1
                                @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnHandleClickListener
                                public void onRestoreClick() {
                                    HtmlViewWrapper.this.mAllowClickHandling = true;
                                }
                            });
                        }
                    }
                }
            });
        }
    }

    protected void invokeParentalClick() {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.8
            @Override // java.lang.Runnable
            public void run() {
                HtmlViewWrapper.this.startParentalLockDialog();
            }
        });
    }

    protected void invokeSetDeviceOrientation(final int i) {
        SoftReference<Context> softReference = this.mInFocusActivityContext;
        if (softReference == null || softReference.get() == null || !(this.mInFocusActivityContext.get() instanceof Activity)) {
            return;
        }
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.17
            @Override // java.lang.Runnable
            public void run() {
                int i2 = i;
                if (i2 == 0) {
                    i2 = 6;
                }
                ((Activity) HtmlViewWrapper.this.mInFocusActivityContext.get()).setRequestedOrientation(i2);
            }
        });
    }

    public void invokeUrl(String str, BannerInvokeUrlInterface bannerInvokeUrlInterface) {
        this.mBannerInvokeUrlInterface = bannerInvokeUrlInterface;
        invokeJSfunction("javascript:" + str);
    }

    public boolean isShowClose() {
        return this.mIsShowClose;
    }

    public void loadBanner(JSONObject jSONObject, BannerLoadJSInterface bannerLoadJSInterface) {
        this.mBannerLoadJSInterface = bannerLoadJSInterface;
        invokeJSfunction("javascript:loadBanner(" + jSONObject + ");");
    }

    public void loadContent(String str, String str2) {
        invokeJSfunction("javascript:loadContent('" + str + "','" + str2 + "');");
    }

    public void loadHtml(String str) {
        setBlockClick(false);
        try {
            CacheWebViewFactory cacheWebViewFactory = CacheWebViewFactory.getInstance();
            if (cacheWebViewFactory.hasCache(str)) {
                HtmlFiveWebView htmlFiveWebView = this.mWebView;
                if (htmlFiveWebView != null) {
                    htmlFiveWebView.loadDataWithBaseURL(cacheWebViewFactory.getCache(str).getWebUrl(), cacheWebViewFactory.getCache(str).getWebViewContent(), "text/html", b4.L, null);
                    return;
                }
                return;
            }
            cacheWebViewFactory.addCacheAsync(str, str, null);
            this.mLastOverloadUrl = "";
            this.mHtmlPageUrl = str;
            if ((TestUtils.isMultiEnv() || !str.startsWith("http://")) && this.mHtmlPageUrl != null) {
                ScreenUtils.getScreenSize(getContext());
                String str2 = this.mHtmlPageUrl;
                if (str2.contains("?")) {
                    String str3 = str2 + o2.i.c;
                } else {
                    String str4 = str2 + "?";
                }
                HtmlFiveWebView htmlFiveWebView2 = this.mWebView;
                if (htmlFiveWebView2 != null) {
                    htmlFiveWebView2.loadUrl(str);
                }
            }
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void notifyAdFailedToLoad(int i, String str) {
        onAdFailedToLoad(i, str);
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void notifyAdFailedToStart(final int i, final String str) {
        if (this.mBannerShowJSInterface != null) {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(i, str);
                }
            });
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 12;
        messageObtain.arg1 = i;
        messageObtain.obj = str;
        this.mEventHandler.sendMessage(messageObtain);
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void notifyAdImpression() {
        if (this.mBannerShowJSInterface != null) {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b();
                }
            });
        } else {
            this.mEventHandler.sendEmptyMessage(13);
        }
    }

    @JavascriptInterface
    public void notifyAdLoaded(boolean z) {
        if (this.mBannerLoadJSInterface != null) {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.21
                @Override // java.lang.Runnable
                public void run() {
                    HtmlViewWrapper.this.mBannerLoadJSInterface.onSuccess();
                }
            });
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 5;
        messageObtain.arg1 = z ? 1 : 0;
        this.mEventHandler.sendMessage(messageObtain);
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void notifyAdStarted() {
        if (this.mBannerShowJSInterface != null) {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.c();
                }
            });
        } else {
            this.mEventHandler.sendEmptyMessage(11);
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onAdStateChanged(int i) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 8;
        messageObtain.arg1 = i;
        this.mEventHandler.sendMessage(messageObtain);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        System.out.println("HtmlViewWrapper ********************************** onAttachedToWindow");
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        System.out.println("HtmlViewWrapper ********************************** onDetachedFromWindow");
        super.onDetachedFromWindow();
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onDone() {
        try {
            onGetDonePlayback();
        } catch (Exception e2) {
            Log.d(TAG, "HtmlViewWrapper | onStoreLocalParameter | error: " + e2.getLocalizedMessage());
        }
    }

    protected void onForwardToGooglePlay(final String str, final String str2, final String str3, final String str4, final String str5, final String str6) {
        if (!TestUtils.isMultiEnv() && str3.startsWith("http://")) {
            return;
        }
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.16
            @Override // java.lang.Runnable
            public void run() {
                int i;
                try {
                    i = Integer.parseInt(str6);
                } catch (Exception e2) {
                    SDKLogger.printErrorLog(HtmlViewWrapper.TAG, "Error when trying to parse item index: " + e2.getMessage());
                    i = 0;
                }
                ContentItem contentItem = new ContentItem();
                contentItem.setId(str2);
                contentItem.setName("");
                contentItem.setData(str3);
                contentItem.setContentType(ContentType.PROMOTED_PLAY_APPLICATION);
                contentItem.setAdvertiserID(str);
                contentItem.setIsPromoted(true);
                HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                ItemViewPagerAdapter.ViewPagerItemClickListener viewPagerItemClickListener = htmlViewWrapper.mViewPagerItemClickListener;
                if (viewPagerItemClickListener != null) {
                    viewPagerItemClickListener.onClickEnd(contentItem, i);
                    return;
                }
                SoftReference<Context> softReference = htmlViewWrapper.mInFocusActivityContext;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                ContentExecutionHandler.handleContentItemClick(HtmlViewWrapper.this.mInFocusActivityContext.get(), contentItem, str4, str5, i, false, null);
            }
        });
    }

    protected void onGetLocalParam(final String str, final String str2) {
        final String strLoadData = SdkCookieManager.loadData(getContext(), this.mWidgetType, this.mHtmlPageUrl, str2);
        if (str == null) {
            str = "kidozReturnedValue";
        }
        this.mEventHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.13
            @Override // java.lang.Runnable
            public void run() {
                HtmlViewWrapper.this.invokeJSfunction("javascript:" + str + "('" + str2 + "','" + strLoadData + "'  );");
            }
        });
    }

    protected void onHandleLocalUiThreadedEvents(Message message) {
        switch (message.what) {
            case 0:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface != null) {
                    iOnHtmlWebViewInterface.onHtmlFinishedLoading();
                }
                IOnInitFinishedListener iOnInitFinishedListener = this.mSdkInitListener;
                if (iOnInitFinishedListener != null) {
                    iOnInitFinishedListener.onInitFinished();
                    this.mSdkInitListener = null;
                }
                break;
            case 1:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface2 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface2 != null) {
                    iOnHtmlWebViewInterface2.onHtmlStartLoading();
                }
                break;
            case 2:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface3 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface3 != null) {
                    iOnHtmlWebViewInterface3.onViewReady();
                }
                break;
            case 3:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface4 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface4 != null) {
                    iOnHtmlWebViewInterface4.onClose();
                }
                clearCache();
                break;
            case 4:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface5 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface5 != null) {
                    iOnHtmlWebViewInterface5.onErrorReceived();
                }
                break;
            case 5:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface6 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface6 != null) {
                    iOnHtmlWebViewInterface6.onAdLoaded(message.arg1 == 1);
                }
                break;
            case 6:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface7 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface7 != null) {
                    iOnHtmlWebViewInterface7.onRewarded();
                }
                break;
            case 8:
                try {
                    this.mAdState = AdState.values()[message.arg1];
                    break;
                } catch (Exception unused) {
                }
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface8 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface8 != null) {
                    iOnHtmlWebViewInterface8.onAdStateChanged(this.mAdState);
                }
                break;
            case 9:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface9 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface9 != null) {
                    iOnHtmlWebViewInterface9.onAdFailedToLoad(new KidozError(message.arg1, (String) message.obj));
                }
                break;
            case 10:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface10 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface10 != null) {
                    iOnHtmlWebViewInterface10.onViewReady2();
                }
                break;
            case 11:
                this.mHtmlWeViewListener.onAdStarted();
                break;
            case 12:
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface11 = this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface11 != null) {
                    iOnHtmlWebViewInterface11.onAdFailedToStart(message.arg1, (String) message.obj);
                }
                clearCache();
                break;
            case 13:
                this.mHtmlWeViewListener.onAdImpression();
                break;
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onInitWebViewWithProperties(String str) {
        try {
            invokeInitiateWebViewProperties(str);
        } catch (Exception e2) {
            if (TextUtils.isEmpty(e2.getLocalizedMessage())) {
                return;
            }
            SDKLogger.printErrorLog("onInitWebViewWithProperties error: " + e2.getLocalizedMessage());
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onInvokeAboutClick() {
        invokeAboutClick();
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onInvokeCloseClick() {
        this.mEventHandler.sendEmptyMessage(3);
    }

    protected void onInvokeConversionServed(final String str, final String str2, final String str3, final String str4, final String str5, final String str6) {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.11
            @Override // java.lang.Runnable
            public void run() {
                int i;
                int i2;
                int i3;
                try {
                    i = Integer.parseInt(str4);
                } catch (Exception e2) {
                    SDKLogger.printErrorLog(HtmlViewWrapper.TAG, "Error when trying to parse positionIndex: " + e2.getMessage());
                    i = 0;
                }
                try {
                    i2 = Integer.parseInt(str5);
                } catch (Exception e3) {
                    SDKLogger.printErrorLog(HtmlViewWrapper.TAG, "Error when trying to parse rewardKey: " + e3.getMessage());
                    i2 = 0;
                }
                try {
                    i3 = Integer.parseInt(str6);
                } catch (Exception e4) {
                    SDKLogger.printErrorLog(HtmlViewWrapper.TAG, "Error when trying to parse rewardValue: " + e4.getMessage());
                    i3 = 0;
                }
                com.kidoz.events.a aVar = new com.kidoz.events.a();
                EventManager eventManager = EventManager.getInstance(HtmlViewWrapper.this.getContext());
                Context context = HtmlViewWrapper.this.getContext();
                HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                eventManager.o(context, htmlViewWrapper.mWidgetType, htmlViewWrapper.mStyleId, aVar, str2, str3, str, i, i2, i3);
            }
        });
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onInvokeMaximize() {
        invokeMaximizedClick();
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onInvokeParentalClick() {
        invokeParentalClick();
    }

    protected void onInvokeSendEvent(final String str, final String str2, final String str3, final String str4, final String str5) {
        if (str2 == null || str3 == null) {
            return;
        }
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.18
            @Override // java.lang.Runnable
            public void run() {
                SDKLogger.printDebugLog("RONY", "type = " + str);
                SDKLogger.printDebugLog("RONY", "category = " + str2);
                SDKLogger.printDebugLog("RONY", "action = " + str3);
                SDKLogger.printDebugLog("RONY", "label = " + str4);
                SDKLogger.printDebugLog("RONY", "jsonData = " + str5);
                SDKLogger.printDebugLog("RONY", "mStyleId = " + HtmlViewWrapper.this.mStyleId);
                SDKLogger.printDebugLog("RONY", "mWidgetType = " + HtmlViewWrapper.this.mWidgetType);
                com.kidoz.events.a aVar = new com.kidoz.events.a();
                aVar.h(EventManager.b);
                String str6 = str5;
                if (str6 != null) {
                    aVar.a(str6);
                }
                EventManager eventManager = EventManager.getInstance(HtmlViewWrapper.this.getContext());
                Context context = HtmlViewWrapper.this.getContext();
                HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                eventManager.h(context, htmlViewWrapper.mWidgetType, htmlViewWrapper.mStyleId, EventManager.b, aVar, str2, str3, str4);
            }
        });
    }

    @JavascriptInterface
    public void onInvokeUrlResponse(String str) {
        BannerInvokeUrlInterface bannerInvokeUrlInterface = this.mBannerInvokeUrlInterface;
        if (bannerInvokeUrlInterface != null) {
            bannerInvokeUrlInterface.onResponse(str);
        }
    }

    protected void onRequestStoreLocalParam(final String str, final String str2, final String str3) {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.12
            @Override // java.lang.Runnable
            public void run() {
                Context context = HtmlViewWrapper.this.getContext();
                HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                SdkCookieManager.saveData(context, htmlViewWrapper.mWidgetType, htmlViewWrapper.mHtmlPageUrl, str, str2, StorageLife.valueOf(str3));
            }
        });
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onRewarded() {
        Message messageObtain = Message.obtain();
        messageObtain.what = 6;
        this.mEventHandler.sendMessage(messageObtain);
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onRewardedVideoStarted() {
        Message.obtain().what = 7;
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onSendConversionEvent(String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            onInvokeConversionServed(str, str2, str3, str4, str5, str6);
        } catch (Exception e2) {
            Log.d(TAG, "HtmlViewWrapper | onStoreLocalParameter | error: " + e2.getLocalizedMessage());
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onSendImpressionEvent(String str, String str2, String str3, String str4) {
        try {
            invokeOnImpressionServed(str, str2, str3, str4);
        } catch (Exception e2) {
            if (TextUtils.isEmpty(e2.getLocalizedMessage())) {
                return;
            }
            SDKLogger.printErrorLog("onSendImpressionEvent: " + e2.getLocalizedMessage());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int iMin = (int) (Math.min(i, i2) * LOADING_PROGRESS_DEFAULT_RATIO);
        LoadingProgressView loadingProgressView = this.mLoadingProgressView;
        if (loadingProgressView != null) {
            loadingProgressView.getLayoutParams().height = iMin;
            this.mLoadingProgressView.getLayoutParams().width = iMin;
            this.mLoadingProgressView.setCircleWidthRelativeToSize(iMin);
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onStoreLocalParameter(String str, String str2, String str3) {
        try {
            onRequestStoreLocalParam(str, str2, str3);
        } catch (Exception e2) {
            Log.d(TAG, "HtmlViewWrapper | onStoreLocalParameter | error: " + e2.getLocalizedMessage());
        }
    }

    protected void onToggleLoadingState(final boolean z) {
        if (this.mLoadingProgressView != null) {
            this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.19
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        HtmlViewWrapper.this.mLoadingProgressView.startLoadingAnimation();
                    } else {
                        HtmlViewWrapper.this.mLoadingProgressView.stopLoadingAnimation();
                    }
                }
            });
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onViewReady() {
        this.mEventHandler.sendEmptyMessage(2);
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void onViewReady2() {
        this.mEventHandler.sendEmptyMessage(10);
    }

    protected void openGooglePlayInBackground(String str) {
        Context context = this.mInFocusActivityContext.get();
        if (context == null) {
            context = getContext();
        }
        ContentItem contentItem = new ContentItem();
        contentItem.setContentType(ContentType.PROMOTED_PLAY_APPLICATION);
        contentItem.setData(str);
        contentItem.setId(this.mContentItem.getId());
        ContentExecutionHandler.handleContentItemClick(context, contentItem, this.mWidgetType, this.mStyleId, 0, false, null);
    }

    protected void openGooglePlayInForground(final String str) {
        final Context context = this.mInFocusActivityContext.get();
        if (context == null) {
            context = getContext();
        }
        ContentExecutionHandler.checkForParentalLock(context, new ContentExecutionHandler.IOnParentalLockStatusListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.4
            @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
            public void onLockActive(boolean z) {
                if (!z) {
                    EventManager eventManager = EventManager.getInstance(context);
                    Context context2 = context;
                    HtmlViewWrapper htmlViewWrapper = HtmlViewWrapper.this;
                    eventManager.h(context2, htmlViewWrapper.mWidgetType, htmlViewWrapper.mStyleId, EventManager.b, null, "Sponsored Content", "Incorrect Password", "");
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                if (context != null) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    context.startActivity(intent);
                }
            }

            @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
            public void onLockNotActive() {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                if (context != null) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    context.startActivity(intent);
                }
            }
        });
    }

    protected void openGooglePlayStore(String str) {
        try {
            ContentItem contentItem = this.mContentItem;
            if (contentItem == null || contentItem.getContentType() == null) {
                openGooglePlayInForground(str);
            } else {
                int i = AnonymousClass27.$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[this.mContentItem.getContentType().ordinal()];
                if (i == 1) {
                    openGooglePlayInBackground(str);
                } else if (i == 2 && this.mContentItem.getJSONitem() != null) {
                    try {
                        if (this.mContentItem.getJSONitem().getJSONObject(11).optBoolean("cpi_play", false)) {
                            openGooglePlayInBackground(str);
                        } else {
                            openGooglePlayInForground(str);
                        }
                    } catch (Exception unused) {
                        openGooglePlayInForground(str);
                    }
                } else {
                    openGooglePlayInForground(str);
                }
            }
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to open google start for promoted app: \n" + e2.getMessage());
        }
    }

    public void pauseVastAd() {
        invokeJSfunction("javascript:pauseVastAd();");
    }

    public void pauseWebView() {
        HtmlFiveWebView htmlFiveWebView = this.mWebView;
        if (htmlFiveWebView != null) {
            htmlFiveWebView.onPause();
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void playVideo(final String str) {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.24
            @Override // java.lang.Runnable
            public void run() {
                SoftReference<Context> softReference = HtmlViewWrapper.this.mInFocusActivityContext;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(str), MimeTypes.VIDEO_MP4);
                HtmlViewWrapper.this.mInFocusActivityContext.get().startActivity(intent);
            }
        });
    }

    public void reloadHtml() {
        loadHtml(this.mHtmlPageUrl);
    }

    public void requestFocusOff() {
        invokeJSfunction("javascript:toonsWebApi.appBackground()");
        if (this.mContentItem != null) {
            invokeJSfunction("javascript:kidozOnFocusOff('" + this.mContentItem.getId() + "');");
        }
    }

    public void requestFocusOn(boolean z) {
        invokeJSfunction("javascript:toonsWebApi.appForeground()");
        ContentItem contentItem = this.mContentItem;
        if (contentItem != null) {
            JSONArray jSONitem = contentItem.getJSONitem();
            try {
                jSONitem.put(1, jSONitem.getString(1).replace("\"", ""));
            } catch (Exception unused) {
            }
            invokeJSfunction("javascript:kidozOnFocusOn('" + this.mContentItem.getId() + "','" + jSONitem.toString() + "','" + z + "','" + this.mWidgetType + "','" + this.mContentItem.getRealViewIndex() + "');");
        }
    }

    public void requestMaximize() {
        invokeJSfunction("javascript:kidozOnMaximize();");
    }

    public void requestMinimize() {
        invokeJSfunction("javascript:kidozOnMinimize();");
    }

    public void requestVastAds(int i) {
        invokeJSfunction("javascript:requestAds('" + i + "');");
    }

    public void requestWidgetClose(String str) {
        if (str != null) {
            invokeJSfunction("javascript:kidozOnWidgetClose('" + str + "');");
        }
    }

    public void requestWidgetOpen(String str) {
        if (str != null) {
            invokeJSfunction("javascript:kidozOnWidgetOpen('" + str + "');");
        }
    }

    @JavascriptInterface
    public void resize(final float f2, final float f3) {
        this.mExecutionHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.25
            @Override // java.lang.Runnable
            public void run() {
                SDKLogger.printDebugLog("HtmlViewWrapper", "resize: w= " + f2 + ", h= " + f3);
                if (f2 != 0.0f && f3 != 0.0f) {
                    ViewGroup.LayoutParams layoutParams = HtmlViewWrapper.this.getLayoutParams();
                    layoutParams.width = (int) ScreenUtils.convertDpToPixel(f2);
                    layoutParams.height = (int) ScreenUtils.convertDpToPixel(f3);
                    HtmlViewWrapper.this.setLayoutParams(layoutParams);
                    HtmlViewWrapper.this.postInvalidate();
                    return;
                }
                HtmlViewWrapper.this.mHtmlWeViewListener.onErrorReceived();
                SDKLogger.printErrorLog(HtmlViewWrapper.TAG, "JS called resize with width = " + f2 + ", height = " + f3);
            }
        });
    }

    public void resumeVastAd() {
        invokeJSfunction("javascript:resumeVastAd();");
    }

    public void resumeWebView() {
        HtmlFiveWebView htmlFiveWebView = this.mWebView;
        if (htmlFiveWebView != null) {
            htmlFiveWebView.onResume();
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void sendEvent(String str, String str2, String str3, String str4, String str5) {
        onInvokeSendEvent(str, str2, str3, str4, str5);
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void sendURLEvent(String str) {
        SdkAPIManager.getSdkApiInstance(this.mInFocusActivityContext.get()).callGetURL(this.mInFocusActivityContext.get(), str, null);
    }

    public void setAllowJSResize(boolean z) {
        this.mAllowJSResize = z;
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void setBlockClick(boolean z) {
        this.blockClick = z;
    }

    public void setData(ContentItem contentItem) {
        this.mContentItem = contentItem;
        this.mHtmlPageUrl = contentItem.getData();
        setAndApplyExternalProperties(contentItem.getExtraParameters());
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void setDeviceOrientation(int i) {
        invokeSetDeviceOrientation(i);
    }

    public void setHtmlWebViewListener(IOnHtmlWebViewInterface iOnHtmlWebViewInterface) {
        this.mHtmlWeViewListener = iOnHtmlWebViewInterface;
    }

    public void setInFocusActivityContext(Context context) {
        if (context != null) {
            try {
                if (context instanceof Activity) {
                    this.mPreviousOrientation = ((Activity) context).getRequestedOrientation();
                    this.mInFocusActivityContext = new SoftReference<>(context);
                }
            } catch (Exception e2) {
                Log.d(TAG, "setInFocusActivityContext | exception: " + e2.getLocalizedMessage());
            }
        }
    }

    protected void setParentalLockState(boolean z) {
        invokeJSfunction("javascript:kidozOnParentalLockStateChanged('" + z + "');");
    }

    public void setSdkInitListener(IOnInitFinishedListener iOnInitFinishedListener) {
        this.mSdkInitListener = iOnInitFinishedListener;
    }

    public void setStyleID(String str) {
        this.mStyleId = str;
    }

    public void setViewPagerItemClickListener(ItemViewPagerAdapter.ViewPagerItemClickListener viewPagerItemClickListener) {
        this.mViewPagerItemClickListener = viewPagerItemClickListener;
    }

    public void setWidgetType(String str) {
        this.mWidgetType = str;
    }

    public void showBanner(BannerShowJSInterface bannerShowJSInterface) {
        this.mBannerShowJSInterface = bannerShowJSInterface;
        invokeJSfunction("javascript:showBanner();");
    }

    public void showLoadingProgressView() {
        LoadingProgressView loadingProgressView = this.mLoadingProgressView;
        if (loadingProgressView != null) {
            loadingProgressView.startLoadingAnimation();
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void simulateClick(String str, int i) {
        try {
            invokeOnSimulateClick(str, i);
        } catch (Exception e2) {
            String localizedMessage = e2.getLocalizedMessage();
            if (TextUtils.isEmpty(localizedMessage)) {
                return;
            }
            SDKLogger.printErrorLog(localizedMessage);
        }
    }

    protected void startAboutKidozDialog() {
        int[] iArr = {(int) (ScreenUtils.getScreenSize(getContext(), true) * 0.5f), (int) (ScreenUtils.getScreenSize(getContext(), false) * 0.5f)};
        SoftReference<Context> softReference = this.mInFocusActivityContext;
        if (softReference == null || softReference.get() == null) {
            return;
        }
        new AboutKidozDialog(this.mInFocusActivityContext.get(), iArr).openDialog();
    }

    public void startAd() {
        invokeJSfunction("javascript:startAd();");
    }

    protected void startParentalLockDialog() {
        SoftReference<Context> softReference = this.mInFocusActivityContext;
        if (softReference == null || softReference.get() == null) {
            return;
        }
        ParentalLockDialog.startParentalDialog(this.mInFocusActivityContext.get(), false, 0.5f, 0.5f, new ParentalLockDialog.IOnParentalDialogListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.20
            @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
            public void onCloseDialog() {
                HtmlViewWrapper.this.updateLockIcon();
            }

            @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
            public void onInputPass(boolean z) {
                HtmlViewWrapper.this.updateLockIcon();
            }
        });
        updateLockIcon();
    }

    public void startVastAd() {
        invokeJSfunction("javascript:startVastAd();");
    }

    public void stopAd() {
        invokeJSfunction("javascript:stopAd();");
    }

    public void stopAndReleaseWebView() {
        HtmlFiveWebView htmlFiveWebView = this.mWebView;
        if (htmlFiveWebView != null) {
            htmlFiveWebView.stopAndReleaseWebView();
        }
    }

    public void stopVastAd() {
        invokeJSfunction("javascript:stopVastAd();");
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void toggleLoadingState(String str) {
        try {
            onToggleLoadingState(Boolean.parseBoolean(str));
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to parse isLoading parameter: " + e2.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlJavaScriptInterafce
    @JavascriptInterface
    public void toggleWidgetState(final boolean z) {
        this.mEventHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.23
            @Override // java.lang.Runnable
            public void run() {
                IOnHtmlWebViewInterface iOnHtmlWebViewInterface = HtmlViewWrapper.this.mHtmlWeViewListener;
                if (iOnHtmlWebViewInterface != null) {
                    iOnHtmlWebViewInterface.toggleWidgetState(z);
                }
            }
        }, 0L);
    }

    protected void updateLockIcon() {
        try {
            if (ParentalLockDialog.isParentalLockActive(getContext())) {
                setParentalLockState(true);
            } else {
                setParentalLockState(false);
            }
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to load parental lock image: " + e2.getMessage());
        }
    }
}
