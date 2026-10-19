package com.kidoz.sdk.api.ui_views.interstitial;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;
import com.kidoz.sdk.api.general.ContentLogicLoader;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.general.UniquePlacement.UniqueInterstitialListener;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementHelper;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.database.ServerConfigStorage;
import com.kidoz.sdk.api.general.enums.HtmlType;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.PropertiesObj;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.SdkCookieManager;
import com.kidoz.sdk.api.general.utils.StorageLife;
import com.kidoz.sdk.api.structure.ContentData;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.html_view.HtmlManager;
import com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper;
import com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface;
import com.kidoz.sdk.omid.b;
import com.kidoz.sdk.omid.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IntrstWrapper {
    protected static final int REQUEST_FILTER_TIMEOUT = 5000;
    protected static IntrstWrapper mInstance;
    private LastError error;
    protected Activity mActivity;
    protected boolean mBackButtonDisabled;
    protected ContentData mContentData;
    protected ContentLogicLoader mContentLogicLoader;
    private int mCurrentIndex;
    protected InnerHelperInterface mInnerHelperInterface;
    private final String mInstanceId;
    protected boolean mIsLoadRequestedWhileNotReady;
    protected Lock mLaunchLock;
    protected JSONObject mProperties;
    protected String mStyleId;
    private UniquePlacementHelper mUniquePlacementHelper;
    private VIEW_STATE mViewState;
    private c omSessionAdapter;
    private String uniquePlacementId;
    protected HtmlViewWrapper webView;
    private ArrayList<ContentItem> mContentList = new ArrayList<>();
    protected boolean mIsInitializationFinished = false;
    protected boolean mIsLoaded = false;
    protected boolean mIsShowRequested = false;
    protected boolean mIsLoadRequested = false;
    protected long mLoadRequestTM = 0;
    protected KidozInterstitial.AD_TYPE mAdRequestType = KidozInterstitial.AD_TYPE.INTERSTITIAL;
    protected Lock raceConditionLock = new ReentrantLock();
    private boolean mIsLocal = false;
    private int MAX_TIME_TO_BLOCK = 30;
    private long lastTryRequestTimeStamp = 0;
    private long requestTryNum = 0;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$6, reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType;
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError;

        static {
            int[] iArr = new int[HtmlType.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType = iArr;
            try {
                iArr[HtmlType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType[HtmlType.VAST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType[HtmlType.MRAID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType[HtmlType.DOUBLE_CLICK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType[HtmlType.SUPER_AWESOME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType[HtmlType.JAVASCRIPT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[LastError.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError = iArr2;
            try {
                iArr2[LastError.LOAD_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError[LastError.NO_OFFERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public interface InnerHelperInterface {
        void onAdClose();

        void onAdOpen();
    }

    private enum LastError {
        LOAD_FAILED,
        NO_OFFERS
    }

    public enum VIEW_STATE {
        CLOSED,
        LOADING,
        LOADED,
        SHOWING
    }

    public IntrstWrapper(Activity activity, String str) {
        setStateClosed();
        this.mActivity = activity;
        this.mInstanceId = str;
        UniquePlacementHelper uniquePlacementHelper = new UniquePlacementHelper();
        this.mUniquePlacementHelper = uniquePlacementHelper;
        this.uniquePlacementId = uniquePlacementHelper.getUniqueId();
        this.mUniquePlacementHelper.setInternalInterstitialListener(new UniqueInterstitialListener() { // from class: com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.2
            @Override // com.kidoz.sdk.api.general.UniquePlacement.UniqueInterstitialListener
            public void onInterstitialClose() {
                IntrstWrapper.this.safeFinishOMSession();
                IntrstWrapper.this.setStateClosed();
                InnerHelperInterface innerHelperInterface = IntrstWrapper.this.mInnerHelperInterface;
                if (innerHelperInterface != null) {
                    innerHelperInterface.onAdClose();
                }
            }
        });
        if (!EventBus.getDefault().i(this)) {
            EventBus.getDefault().o(this);
        }
        this.mLaunchLock = new ReentrantLock();
        if (KidozSDK.isInitialised()) {
            validateLayoutAndAssets();
        }
        this.mInnerHelperInterface = new InnerHelperInterface() { // from class: com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.3
            @Override // com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.InnerHelperInterface
            public void onAdClose() {
                IntrstWrapper intrstWrapper = IntrstWrapper.this;
                intrstWrapper.mIsShowRequested = false;
                intrstWrapper.mIsLoaded = false;
                KidozInterstitial.AD_TYPE ad_type = intrstWrapper.mAdRequestType;
                if (ad_type == null || ad_type != KidozInterstitial.AD_TYPE.REWARDED_VIDEO) {
                    SdkCookieManager.resetStorage(intrstWrapper.mActivity, WidgetType.WIDGET_TYPE_INTERSTITIAL.getStringValue(), StorageLife.WIDGET);
                } else {
                    SdkCookieManager.resetStorage(intrstWrapper.mActivity, WidgetType.WIDGET_TYPE_INTERSTITIAL_REWARDED.getStringValue(), StorageLife.WIDGET);
                }
            }

            @Override // com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.InnerHelperInterface
            public void onAdOpen() {
                if (IntrstWrapper.this.mIsLocal) {
                    return;
                }
                IntrstWrapper.this.sendEventToEventBus(EventMessage.MessageType.ON_AD_SHOWN);
            }
        };
        this.mContentLogicLoader = new ContentLogicLoader(new ContentLogicLoader.IOnContentDataReadyCallback() { // from class: com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.4
            @Override // com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback
            public void onDataReady(ContentData contentData) {
                IntrstWrapper intrstWrapper = IntrstWrapper.this;
                intrstWrapper.mContentData = contentData;
                intrstWrapper.mContentList = new ArrayList();
                IntrstWrapper.this.mContentList.addAll(contentData.getContentDataItems());
                if (IntrstWrapper.this.mContentList.size() > 0) {
                    IntrstWrapper.this.mCurrentIndex = 0;
                    String urlFromContent = IntrstWrapper.this.getUrlFromContent((ContentItem) IntrstWrapper.this.mContentList.get(IntrstWrapper.this.mCurrentIndex));
                    PropertiesObj propertiesObjLoadAppProperties = ServerConfigStorage.getInstance().loadAppProperties();
                    if (urlFromContent == null && propertiesObjLoadAppProperties != null) {
                        urlFromContent = propertiesObjLoadAppProperties.getInterstitialHtmlLink();
                    }
                    if (urlFromContent == null || IntrstWrapper.this.prepareWebViewWithLink(urlFromContent)) {
                        return;
                    }
                    IntrstWrapper.this.onLoadFailed(new KidozError(KidozError.Type.loadFailedWebViewInit));
                }
            }

            @Override // com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback
            public void onLoadContentFailed() {
                IntrstWrapper.this.setNegativeResponse(LastError.LOAD_FAILED);
                IntrstWrapper.this.sendEventToEventBusWithError(EventMessage.MessageType.LOAD_FAILED, new KidozError(KidozError.Type.loadFailedBadResponse));
                IntrstWrapper.this.setStateClosed();
            }

            @Override // com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback
            public void onNoContentOffers() {
                IntrstWrapper.this.setNegativeResponse(LastError.NO_OFFERS);
                IntrstWrapper.this.sendEventToEventBusWithError(EventMessage.MessageType.NO_OFFERS, new KidozError(KidozError.Type.noOffer));
                IntrstWrapper.this.setStateClosed();
            }
        });
    }

    private synchronized boolean canBlockCall() {
        int maxThrottleTime = getMaxThrottleTime();
        this.MAX_TIME_TO_BLOCK = maxThrottleTime;
        if (maxThrottleTime <= 0) {
            return false;
        }
        try {
        } catch (Exception e2) {
            this.requestTryNum = 0L;
            this.lastTryRequestTimeStamp = 0L;
            SDKLogger.printWarningLog(e2.toString());
        }
        if (this.requestTryNum != 0 && this.lastTryRequestTimeStamp != 0) {
            long timeStamp = getTimeStamp() - this.lastTryRequestTimeStamp;
            long jPow = (long) Math.pow(2.0d, this.requestTryNum);
            int i = this.MAX_TIME_TO_BLOCK;
            if (jPow > i) {
                jPow = i;
            }
            if (timeStamp < jPow) {
                sendErrorResponse(this.error);
                return true;
            }
            return false;
        }
        SDKLogger.printWarningLog("not blocking waterfall");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeFullScreenAd(boolean z) {
        safeFinishOMSession();
        setStateClosed();
        sendEventToEventBus(EventMessage.MessageType.CLOSE_FULL_SCREEN_AD, z);
    }

    private int getMaxThrottleTime() {
        PropertiesObj propertiesObjLoadAppProperties;
        if (this.mActivity == null || (propertiesObjLoadAppProperties = ServerConfigStorage.getInstance().loadAppProperties()) == null) {
            return 30;
        }
        return propertiesObjLoadAppProperties.getMaxThrottleTime();
    }

    private long getTimeStamp() {
        return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUrlFromContent(ContentItem contentItem) {
        String hTMLUrl = null;
        try {
            PropertiesObj propertiesObjLoadAppProperties = ServerConfigStorage.getInstance().loadAppProperties();
            hTMLUrl = contentItem.getHTMLUrl();
            if (hTMLUrl == null && propertiesObjLoadAppProperties != null) {
                int i = AnonymousClass6.$SwitchMap$com$kidoz$sdk$api$general$enums$HtmlType[contentItem.getHtmlType().ordinal()];
                if (i == 2) {
                    hTMLUrl = propertiesObjLoadAppProperties.getInterstitialDefaultLinkForType("vast");
                } else if (i == 3) {
                    hTMLUrl = propertiesObjLoadAppProperties.getInterstitialDefaultLinkForType(CampaignEx.JSON_KEY_MRAID);
                } else if (i == 4) {
                    hTMLUrl = propertiesObjLoadAppProperties.getInterstitialDefaultLinkForType("double_click");
                } else if (i == 5) {
                    hTMLUrl = propertiesObjLoadAppProperties.getInterstitialDefaultLinkForType("super_awesome");
                } else if (i == 6) {
                    hTMLUrl = propertiesObjLoadAppProperties.getInterstitialDefaultLinkForType("javascript");
                }
            }
        } catch (Exception unused) {
        }
        return hTMLUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasAnotherInterstitial() {
        return this.mCurrentIndex < this.mContentList.size() - 1;
    }

    private boolean isStateClosed() {
        if (this.mViewState == VIEW_STATE.CLOSED) {
            SDKLogger.printWarningLog("KidozInterstitial", "isStateClosed = true");
            return true;
        }
        SDKLogger.printWarningLog("KidozInterstitial", "isStateClosed = false");
        return false;
    }

    private boolean isStateLoaded() {
        if (this.mViewState == VIEW_STATE.LOADED) {
            SDKLogger.printWarningLog("KidozInterstitial", "isStateLoaded = true");
            return true;
        }
        SDKLogger.printWarningLog("KidozInterstitial", "isStateLoaded = false");
        return false;
    }

    private boolean isStateLoading() {
        if (this.mViewState == VIEW_STATE.LOADING) {
            SDKLogger.printWarningLog("KidozInterstitial", "isStateLoading = true");
            return true;
        }
        SDKLogger.printWarningLog("KidozInterstitial", "isStateLoading = false");
        return false;
    }

    private boolean isStateShowing() {
        if (this.mViewState == VIEW_STATE.SHOWING) {
            SDKLogger.printWarningLog("KidozInterstitial", "isStateShowing = true");
            return true;
        }
        SDKLogger.printWarningLog("KidozInterstitial", "isStateShowing = false");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNextInterstitial() {
        int i = this.mCurrentIndex + 1;
        this.mCurrentIndex = i;
        String urlFromContent = getUrlFromContent(this.mContentList.get(i));
        PropertiesObj propertiesObjLoadAppProperties = ServerConfigStorage.getInstance().loadAppProperties();
        if (urlFromContent == null && propertiesObjLoadAppProperties != null) {
            urlFromContent = propertiesObjLoadAppProperties.getInterstitialHtmlLink();
        }
        if (urlFromContent == null || prepareWebViewWithLink(urlFromContent)) {
            return;
        }
        onLoadFailed(new KidozError(KidozError.Type.loadFailedWebViewInit));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLoadFailed(KidozError kidozError) {
        setNegativeResponse(LastError.LOAD_FAILED);
        sendEventToEventBusWithError(EventMessage.MessageType.LOAD_FAILED, kidozError);
        setStateClosed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean prepareWebViewWithLink(String str) {
        HtmlViewWrapper htmlViewWrapper = this.webView;
        if (htmlViewWrapper == null || !htmlViewWrapper.webViewInitialized) {
            generateHtmlView();
            this.webView.setHtmlWebViewListener(new IOnHtmlWebViewInterface() { // from class: com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.5
                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onAdFailedToLoad(KidozError kidozError) {
                    IntrstWrapper.this.safeFinishOMSession();
                    if (IntrstWrapper.this.hasAnotherInterstitial()) {
                        IntrstWrapper.this.loadNextInterstitial();
                    } else {
                        IntrstWrapper intrstWrapper = IntrstWrapper.this;
                        intrstWrapper.mIsLoaded = false;
                        if (!intrstWrapper.mIsLocal) {
                            IntrstWrapper.this.onLoadFailed(kidozError);
                        }
                    }
                    IntrstWrapper intrstWrapper2 = IntrstWrapper.this;
                    KidozInterstitial.AD_TYPE ad_type = intrstWrapper2.mAdRequestType;
                    if (ad_type == null || ad_type != KidozInterstitial.AD_TYPE.REWARDED_VIDEO) {
                        intrstWrapper2.webView.setWidgetType(WidgetType.WIDGET_TYPE_INTERSTITIAL.getStringValue());
                    } else {
                        intrstWrapper2.webView.setWidgetType(WidgetType.WIDGET_TYPE_INTERSTITIAL_REWARDED.getStringValue());
                    }
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onAdFailedToStart(int i, String str2) {
                    IntrstWrapper.this.sendEventToEventBusWithError(EventMessage.MessageType.ON_AD_FAILED_TO_SHOW, new KidozError(i, str2));
                    IntrstWrapper.this.closeFullScreenAd(true);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onAdImpression() {
                    IntrstWrapper.this.sendEventToEventBus(EventMessage.MessageType.ON_AD_IMPRESSION);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onAdLoaded(boolean z) {
                    IntrstWrapper intrstWrapper = IntrstWrapper.this;
                    intrstWrapper.mBackButtonDisabled = z;
                    intrstWrapper.mIsLoadRequested = false;
                    intrstWrapper.setStateLoaded();
                    if (IntrstWrapper.this.mIsLocal) {
                        IntrstWrapper.this.show();
                    } else {
                        IntrstWrapper.this.setPositiveResponse();
                        IntrstWrapper.this.sendEventToEventBus(EventMessage.MessageType.READY);
                    }
                    IntrstWrapper intrstWrapper2 = IntrstWrapper.this;
                    KidozInterstitial.AD_TYPE ad_type = intrstWrapper2.mAdRequestType;
                    if (ad_type == null || ad_type != KidozInterstitial.AD_TYPE.REWARDED_VIDEO) {
                        intrstWrapper2.webView.setWidgetType(WidgetType.WIDGET_TYPE_INTERSTITIAL.getStringValue());
                    } else {
                        intrstWrapper2.webView.setWidgetType(WidgetType.WIDGET_TYPE_INTERSTITIAL_REWARDED.getStringValue());
                    }
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onAdStarted() {
                    IntrstWrapper.this.sendEventToEventBus(EventMessage.MessageType.ON_AD_SHOWN);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onClose() {
                    IntrstWrapper.this.closeFullScreenAd(false);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onHtmlFinishedLoading() {
                    IntrstWrapper.this.safeStartOMSession();
                    super.onHtmlFinishedLoading();
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onRewarded() {
                    super.onRewarded();
                    IntrstWrapper.this.sendEventToEventBus(EventMessage.MessageType.REWARDED);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onViewReady() {
                    super.onViewReady();
                    if (IntrstWrapper.this.mContentList.size() > IntrstWrapper.this.mCurrentIndex) {
                        ContentItem contentItem = (ContentItem) IntrstWrapper.this.mContentList.get(IntrstWrapper.this.mCurrentIndex);
                        HashMap<String, Integer> map = IntrstWrapper.this.mContentData.getmKeysMap();
                        String string = contentItem.getJSONitem().toString();
                        IntrstWrapper.this.webView.loadContent(new JSONObject(map).toString(), string);
                    }
                    IntrstWrapper.this.mIsInitializationFinished = true;
                }
            });
        }
        KidozInterstitial.AD_TYPE ad_type = this.mAdRequestType;
        if (ad_type == null || ad_type != KidozInterstitial.AD_TYPE.REWARDED_VIDEO) {
            this.webView.setWidgetType(WidgetType.WIDGET_TYPE_INTERSTITIAL.getStringValue());
        } else {
            this.webView.setWidgetType(WidgetType.WIDGET_TYPE_INTERSTITIAL_REWARDED.getStringValue());
        }
        this.webView.loadHtml(str);
        return this.webView.webViewInitialized;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeFinishOMSession() {
        Log.d("Kidoz_OMID", "safeFinishOMSession");
        c cVar = this.omSessionAdapter;
        if (cVar != null) {
            cVar.finish();
            this.omSessionAdapter = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeStartOMSession() {
        Log.d("Kidoz_OMID", "safeStartOMSession");
        if (this.omSessionAdapter != null) {
            return;
        }
        c cVarA = b.b.a(this.webView.mWebView);
        this.omSessionAdapter = cVarA;
        if (cVarA != null) {
            cVarA.start();
        }
    }

    private void sendErrorResponse(final LastError lastError) {
        new Handler().postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                LastError lastError2 = lastError;
                if (lastError2 == null) {
                    IntrstWrapper.this.sendEventToEventBusWithError(EventMessage.MessageType.LOAD_FAILED, new KidozError(KidozError.Type.loadFailed));
                    SDKLogger.printWarningLog("blocking waterfall LOAD_FAILED try = " + IntrstWrapper.this.requestTryNum);
                    return;
                }
                int i = AnonymousClass6.$SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError[lastError2.ordinal()];
                if (i == 1) {
                    IntrstWrapper.this.sendEventToEventBusWithError(EventMessage.MessageType.LOAD_FAILED, new KidozError(KidozError.Type.loadFailed));
                    SDKLogger.printWarningLog("blocking waterfall LOAD_FAILED try = " + IntrstWrapper.this.requestTryNum);
                    return;
                }
                if (i != 2) {
                    return;
                }
                IntrstWrapper.this.sendEventToEventBusWithError(EventMessage.MessageType.LOAD_FAILED, new KidozError(KidozError.Type.noOffer));
                SDKLogger.printWarningLog("blocking waterfall NO_OFFERS try = " + IntrstWrapper.this.requestTryNum);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventToEventBus(EventMessage.MessageType messageType) {
        sendEventToEventBus(messageType, false);
    }

    private void sendEventToEventBus(EventMessage.MessageType messageType, boolean z) {
        EventMessage eventMessage = new EventMessage(messageType);
        eventMessage.setAdditionalParam(this.uniquePlacementId);
        eventMessage.setFlag(z);
        EventBus.getDefault().k(eventMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventToEventBusWithError(EventMessage.MessageType messageType, KidozError kidozError) {
        EventMessage eventMessage = new EventMessage(messageType);
        eventMessage.setAdditionalParam(this.uniquePlacementId);
        eventMessage.setError(kidozError);
        EventBus.getDefault().k(eventMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setNegativeResponse(LastError lastError) {
        this.requestTryNum++;
        this.lastTryRequestTimeStamp = getTimeStamp();
        this.error = lastError;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setPositiveResponse() {
        this.requestTryNum = 0L;
        this.lastTryRequestTimeStamp = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateClosed() {
        SDKLogger.printWarningLog("KidozInterstitial", "setStateClosed");
        this.mViewState = VIEW_STATE.CLOSED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateLoaded() {
        SDKLogger.printWarningLog("KidozInterstitial", "setStateLoaded");
        this.mViewState = VIEW_STATE.LOADED;
    }

    private void setStateLoading() {
        SDKLogger.printWarningLog("KidozInterstitial", "setStateLoading");
        this.mViewState = VIEW_STATE.LOADING;
    }

    private void setStateShowing() {
        SDKLogger.printWarningLog("KidozInterstitial", "setStateShowing");
        this.mViewState = VIEW_STATE.SHOWING;
    }

    private void validateLayoutAndAssets() {
        JSONObject jSONObjectLoadProperties = ServerConfigStorage.getInstance().loadProperties(KidozInterstitial.TAG);
        this.mProperties = jSONObjectLoadProperties;
        if (jSONObjectLoadProperties != null) {
            this.mStyleId = jSONObjectLoadProperties.optString(StyleParser.STYLE_ID);
        } else {
            setNegativeResponse(LastError.LOAD_FAILED);
            sendEventToEventBus(EventMessage.MessageType.LOAD_FAILED);
        }
    }

    public void destroy() {
        EventBus.getDefault().q(this);
        this.mUniquePlacementHelper.destroy();
        this.mUniquePlacementHelper = null;
    }

    protected void generateHtmlView() {
        this.webView = HtmlManager.initIntrstDefaultHtmlView(this.mActivity, this.uniquePlacementId);
    }

    public KidozInterstitial.AD_TYPE getAdType() {
        return this.mAdRequestType;
    }

    public InnerHelperInterface getHelperInterface() {
        return this.mInnerHelperInterface;
    }

    public boolean getIsLocal() {
        return this.mIsLocal;
    }

    public UniquePlacementHelper getPlacementHelper() {
        return this.mUniquePlacementHelper;
    }

    public boolean isInterstitialLoaded() {
        return isStateLoaded();
    }

    public synchronized void load(KidozInterstitial.AD_TYPE ad_type) {
        if (isStateShowing()) {
            return;
        }
        if (isStateLoading()) {
            return;
        }
        if (isStateLoaded()) {
            return;
        }
        if (!canBlockCall()) {
            this.mIsShowRequested = false;
            this.mAdRequestType = ad_type;
            if (ad_type == KidozInterstitial.AD_TYPE.INTERSTITIAL) {
                this.mContentLogicLoader.loadWaterfall(this.mActivity, WidgetType.WIDGET_TYPE_INTERSTITIAL.getStringValue(), this.mStyleId, "0");
            } else {
                this.mContentLogicLoader.loadWaterfall(this.mActivity, WidgetType.WIDGET_TYPE_INTERSTITIAL_REWARDED.getStringValue(), this.mStyleId, "1");
            }
            this.mCurrentIndex = 0;
            setStateLoading();
        }
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        if (eventMessage.getMessageType() == EventMessage.MessageType.INIT_SDK) {
            validateLayoutAndAssets();
        }
    }

    protected synchronized void openView() {
        Lock lock;
        if (this.mLaunchLock.tryLock()) {
            try {
                try {
                    Intent intent = new Intent(this.mActivity, (Class<?>) KidozAdActivity.class);
                    intent.putExtra(KidozAdActivity.STYLE_ID_KEY, this.mStyleId);
                    intent.putExtra(KidozAdActivity.UNIQUE_PLACEMENT_ID_KEY, this.uniquePlacementId);
                    intent.putExtra(KidozAdActivity.DISABLE_BACK_KEY, this.mBackButtonDisabled);
                    intent.addFlags(805437440);
                    this.mActivity.startActivity(intent);
                    setStateShowing();
                    lock = this.mLaunchLock;
                } catch (Exception e2) {
                    Log.e("KidozInterstitial", e2.getMessage());
                    setStateClosed();
                    sendEventToEventBusWithError(EventMessage.MessageType.ON_AD_FAILED_TO_SHOW, new KidozError(KidozError.SHOW_ERROR, "Failed to launch activity"));
                    lock = this.mLaunchLock;
                }
                lock.unlock();
            } catch (Throwable th) {
                this.mLaunchLock.unlock();
                throw th;
            }
        }
    }

    public void setAdType(KidozInterstitial.AD_TYPE ad_type) {
        this.mAdRequestType = ad_type;
    }

    public void setIsLocalRequest(boolean z) {
        this.mIsLocal = z;
    }

    public synchronized void show() {
        if (!isStateLoaded()) {
            SDKLogger.printWarningLog("KidozInterstitial", "Interstitial Ad is not loaded! Please call loadAd() first.");
        } else if (!this.mIsShowRequested) {
            this.mIsShowRequested = true;
            openView();
        }
    }
}
