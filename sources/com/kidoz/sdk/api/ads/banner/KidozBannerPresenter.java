package com.kidoz.sdk.api.ads.banner;

import android.os.Handler;
import android.text.TextUtils;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.general.database.ServerConfigStorage;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper;
import com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface;
import com.kidoz.sdk.api.ui_views.kidoz_banner.KidozBannerListener;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class KidozBannerPresenter {
    private static final String BANNER_LOAD_FAILED_EMPTY_URL = "Kidoz cannot load banner content. Configuration url is empty.";
    private static final String BANNER_LOAD_FAILED_STYLE_ERROR = "Kidoz cannot load banner content. Style parsing failed.";
    private static final String SDK_NOT_INIT = "SDK not initialized";
    public static final String TAG = "KidozBannerPresenter";
    private static final String VIEW_ALREADY_LOADED = "Kidoz banner already loaded, no need to load again.";
    private static final String VIEW_ALREADY_LOADING = "Kidoz banner already loading, please wait.";
    private static final String VIEW_ALREADY_SHOWING = "Kidoz banner is already showing";
    private static final String VIEW_INIT_FAILED = "Banner init timeout";
    private static final String VIEW_IN_ERROR_STATE_CANNOT_SHOW = "Cannot show banner, banner is in ERROR state.";
    private static final String VIEW_NOTHING_TO_HIDE = "Kidoz banner not shown, there is nothing to hide.";
    private static final String VIEW_NOT_LOADED_PLEASE_LOAD = "Kidoz banner not loaded, please load before showing.";
    private static final String VIEW_STILL_LOADING_PLEASE_WAIT = "Kidoz banner is still loading, please wait for load to finish.";
    private String mBannerHtmlUrl;
    Handler mHandler;
    private IOnHtmlWebViewInterface mHtmlWebViewListener;
    private KidozBannerListener mKidozBannerListener;
    private KidozBannerView mKidozBannerView;
    private JSONObject mProperties;
    private VIEW_STATE mViewState = VIEW_STATE.CLOSED;
    private boolean mDidGetOnViewReady = false;

    private interface BannerStyleListener {
        void onStyleError();

        void onStyleSuccess();
    }

    public enum VIEW_STATE {
        LOADING,
        LOADED,
        SHOWING,
        CLOSED,
        ERROR,
        HIDDEN
    }

    public KidozBannerPresenter(KidozBannerView kidozBannerView) {
        this.mKidozBannerView = kidozBannerView;
        this.mHandler = new Handler(kidozBannerView.getActivity().getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void extractParamsFromConfig() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            this.mBannerHtmlUrl = jSONObject.optString("html_url");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalLoad(HtmlViewWrapper htmlViewWrapper) {
        this.mViewState = VIEW_STATE.LOADING;
        SDKLogger.printDebugLog(TAG, "internalLoad() | calling html.loadBanner, mProperties = " + this.mProperties);
        htmlViewWrapper.loadBanner(this.mProperties, new HtmlViewWrapper.BannerLoadJSInterface() { // from class: com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.4
            @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.BannerLoadJSInterface
            public void onError(KidozError kidozError) {
                SDKLogger.printErrorLog(KidozBannerPresenter.TAG, "internalLoad() | error: = " + kidozError);
                KidozBannerPresenter.this.mViewState = VIEW_STATE.ERROR;
                if (KidozBannerPresenter.this.mKidozBannerListener != null) {
                    KidozBannerPresenter.this.mKidozBannerListener.onBannerError(kidozError);
                }
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.BannerLoadJSInterface
            public void onSuccess() {
                SDKLogger.printDebugLog(KidozBannerPresenter.TAG, "internalLoad() | onSuccess()");
                KidozBannerPresenter.this.mViewState = VIEW_STATE.LOADED;
                if (KidozBannerPresenter.this.mKidozBannerListener != null) {
                    KidozBannerPresenter.this.mKidozBannerListener.onBannerReady();
                }
            }
        });
    }

    private boolean isSDKConfigRelevantParsingDone() {
        return this.mProperties != null;
    }

    private void validateAndLoadAssets(BannerStyleListener bannerStyleListener) {
        SDKLogger.printDebugLog(TAG, "validateAndLoadAssets() | start");
        JSONObject jSONObjectLoadProperties = ServerConfigStorage.getInstance().loadProperties(TAG);
        this.mProperties = jSONObjectLoadProperties;
        if (jSONObjectLoadProperties != null) {
            if (bannerStyleListener != null) {
                SDKLogger.printDebugLog(TAG, "validateAndLoadAssets() | parse success");
                bannerStyleListener.onStyleSuccess();
                return;
            }
            return;
        }
        SDKLogger.printDebugLog(TAG, "validateAndLoadAssets() | parse failed");
        if (bannerStyleListener != null) {
            bannerStyleListener.onStyleError();
        }
    }

    private void validateSDKAndStartBannerWebLogic() {
        validateAndLoadAssets(new BannerStyleListener() { // from class: com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.1
            private void startBannerWebLogic() {
                String str = KidozBannerPresenter.this.mBannerHtmlUrl;
                SDKLogger.printDebugLog(KidozBannerPresenter.TAG, "view.load(" + str + ")");
                KidozBannerPresenter.this.mKidozBannerView.startBannerWebLogic(str);
            }

            @Override // com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.BannerStyleListener
            public void onStyleError() {
                SDKLogger.printErrorLog(KidozBannerPresenter.BANNER_LOAD_FAILED_STYLE_ERROR);
                KidozBannerPresenter.this.mViewState = VIEW_STATE.ERROR;
                if (KidozBannerPresenter.this.mKidozBannerListener != null) {
                    KidozBannerPresenter.this.mKidozBannerListener.onBannerError(new KidozError(KidozError.LOAD_ERROR, KidozBannerPresenter.BANNER_LOAD_FAILED_STYLE_ERROR));
                }
            }

            @Override // com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.BannerStyleListener
            public void onStyleSuccess() {
                KidozBannerPresenter.this.extractParamsFromConfig();
                if (!TextUtils.isEmpty(KidozBannerPresenter.this.mBannerHtmlUrl)) {
                    startBannerWebLogic();
                    return;
                }
                SDKLogger.printErrorLog(KidozBannerPresenter.BANNER_LOAD_FAILED_EMPTY_URL);
                KidozBannerPresenter.this.mViewState = VIEW_STATE.ERROR;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitForViewReady(final HtmlViewWrapper htmlViewWrapper, final int i) {
        if (i > 0) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.2
                @Override // java.lang.Runnable
                public void run() {
                    if (KidozBannerPresenter.this.mDidGetOnViewReady) {
                        KidozBannerPresenter.this.internalLoad(htmlViewWrapper);
                    } else {
                        KidozBannerPresenter.this.waitForViewReady(htmlViewWrapper, i - 1);
                    }
                }
            }, 1000L);
        } else {
            this.mKidozBannerListener.onBannerError(new KidozError(KidozError.LOAD_ERROR, VIEW_INIT_FAILED));
        }
    }

    public void developerCalledHide(HtmlViewWrapper htmlViewWrapper) {
        if (!KidozSDK.isInitialised()) {
            SDKLogger.printDebugLog(SDK_NOT_INIT);
        } else if (this.mViewState != VIEW_STATE.SHOWING) {
            SDKLogger.printDebugLog(VIEW_NOTHING_TO_HIDE);
        } else {
            htmlViewWrapper.requestWidgetClose(WidgetType.WIDGET_TYPE_BANNER.getStringValue());
            htmlViewWrapper.hideBanner();
        }
    }

    public KidozBannerListener getBannerListener() {
        return this.mKidozBannerListener;
    }

    public IOnHtmlWebViewInterface getHtmlWebViewInterface() {
        if (this.mHtmlWebViewListener == null) {
            this.mHtmlWebViewListener = new IOnHtmlWebViewInterface() { // from class: com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.5
                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onClose() {
                    super.onClose();
                    KidozBannerPresenter.this.mViewState = VIEW_STATE.CLOSED;
                    KidozBannerPresenter.this.mKidozBannerView.hideInternal();
                    if (KidozBannerPresenter.this.mKidozBannerListener != null) {
                        KidozBannerPresenter.this.mKidozBannerListener.onBannerClose();
                    }
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onErrorReceived() {
                    super.onErrorReceived();
                    KidozBannerPresenter.this.mViewState = VIEW_STATE.ERROR;
                    if (KidozBannerPresenter.this.mKidozBannerListener != null) {
                        KidozBannerPresenter.this.mKidozBannerListener.onBannerError(new KidozError(KidozError.LOAD_ERROR, "Error received"));
                    }
                    SDKLogger.printDebugLog("KidozBanner | IOnHtmlWebViewInterface | onErrorReceived()");
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onHtmlFinishedLoading() {
                    super.onHtmlFinishedLoading();
                    SDKLogger.printDebugLog("KidozBanner | IOnHtmlWebViewInterface | onHtmlFinishedLoading()");
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
                public void onViewReady() {
                    super.onViewReady();
                    SDKLogger.printDebugLog("KidozBanner | IOnHtmlWebViewInterface | onViewReady()");
                    KidozBannerPresenter.this.mDidGetOnViewReady = true;
                }
            };
        }
        return this.mHtmlWebViewListener;
    }

    public void init() {
        this.mViewState = VIEW_STATE.CLOSED;
        SDKLogger.printDebugLog("KidozBannerPresenter | banner init()");
        if (KidozSDK.isInitialised()) {
            validateSDKAndStartBannerWebLogic();
            return;
        }
        SDKLogger.printDebugLog("KidozBannerPresenter | sdk not init yet, registering event.");
        if (EventBus.getDefault().i(this)) {
            return;
        }
        EventBus.getDefault().o(this);
    }

    public boolean isShowing() {
        return this.mViewState == VIEW_STATE.SHOWING;
    }

    public void load(HtmlViewWrapper htmlViewWrapper) {
        if (!KidozSDK.isInitialised()) {
            SDKLogger.printDebugLog(SDK_NOT_INIT);
            KidozBannerListener kidozBannerListener = this.mKidozBannerListener;
            if (kidozBannerListener != null) {
                kidozBannerListener.onBannerError(new KidozError(KidozError.LOAD_ERROR, SDK_NOT_INIT));
                return;
            }
            return;
        }
        VIEW_STATE view_state = this.mViewState;
        if (view_state == VIEW_STATE.SHOWING) {
            SDKLogger.printDebugLog(VIEW_ALREADY_SHOWING);
            KidozBannerListener kidozBannerListener2 = this.mKidozBannerListener;
            if (kidozBannerListener2 != null) {
                kidozBannerListener2.onBannerError(new KidozError(KidozError.LOAD_ERROR, VIEW_ALREADY_SHOWING));
                return;
            }
            return;
        }
        if (view_state == VIEW_STATE.LOADING) {
            SDKLogger.printDebugLog(VIEW_ALREADY_LOADING);
            return;
        }
        SDKLogger.printDebugLog("KidozBannerPresenter | Load 6");
        if (this.mViewState != VIEW_STATE.LOADED) {
            if (this.mDidGetOnViewReady) {
                internalLoad(htmlViewWrapper);
                return;
            } else {
                waitForViewReady(htmlViewWrapper, 10);
                return;
            }
        }
        SDKLogger.printDebugLog(VIEW_ALREADY_LOADED);
        KidozBannerListener kidozBannerListener3 = this.mKidozBannerListener;
        if (kidozBannerListener3 != null) {
            kidozBannerListener3.onBannerReady();
        }
    }

    protected void notifyBannerImpression() {
        KidozBannerListener kidozBannerListener = this.mKidozBannerListener;
        if (kidozBannerListener != null) {
            kidozBannerListener.onBannerImpression();
        }
    }

    protected void notifyBannerShowFailed(int i, String str) {
        SDKLogger.printErrorLog(i + "::" + str);
        KidozBannerListener kidozBannerListener = this.mKidozBannerListener;
        if (kidozBannerListener != null) {
            kidozBannerListener.onBannerShowFailed(new KidozError(i, str));
        }
    }

    protected void notifyBannerShown() {
        KidozBannerListener kidozBannerListener = this.mKidozBannerListener;
        if (kidozBannerListener != null) {
            kidozBannerListener.onBannerShowSuccess();
        }
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        if (eventMessage.getMessageType() == EventMessage.MessageType.INIT_SDK) {
            if (EventBus.getDefault().i(this)) {
                EventBus.getDefault().q(this);
            }
            SDKLogger.printDebugLog("KidozBanner | Kidoz wasn't init when presenter was built. calling init() from eventbus after sdk init");
            init();
        }
    }

    public void setBannerListener(KidozBannerListener kidozBannerListener) {
        this.mKidozBannerListener = kidozBannerListener;
    }

    public void show(final HtmlViewWrapper htmlViewWrapper) {
        if (!KidozSDK.isInitialised()) {
            SDKLogger.printDebugLog(SDK_NOT_INIT);
            KidozBannerListener kidozBannerListener = this.mKidozBannerListener;
            if (kidozBannerListener != null) {
                kidozBannerListener.onBannerShowFailed(new KidozError(KidozError.SHOW_ERROR, SDK_NOT_INIT));
                return;
            }
            return;
        }
        VIEW_STATE view_state = this.mViewState;
        if (view_state == VIEW_STATE.ERROR) {
            SDKLogger.printDebugLog(VIEW_IN_ERROR_STATE_CANNOT_SHOW);
            KidozBannerListener kidozBannerListener2 = this.mKidozBannerListener;
            if (kidozBannerListener2 != null) {
                kidozBannerListener2.onBannerShowFailed(new KidozError(KidozError.SHOW_ERROR, VIEW_IN_ERROR_STATE_CANNOT_SHOW));
                return;
            }
            return;
        }
        if (view_state == VIEW_STATE.CLOSED) {
            SDKLogger.printDebugLog(VIEW_NOT_LOADED_PLEASE_LOAD);
            KidozBannerListener kidozBannerListener3 = this.mKidozBannerListener;
            if (kidozBannerListener3 != null) {
                kidozBannerListener3.onBannerShowFailed(new KidozError(KidozError.SHOW_ERROR, VIEW_NOT_LOADED_PLEASE_LOAD));
                return;
            }
            return;
        }
        if (view_state == VIEW_STATE.LOADING) {
            SDKLogger.printDebugLog(VIEW_STILL_LOADING_PLEASE_WAIT);
            this.mKidozBannerListener.onBannerShowFailed(new KidozError(KidozError.SHOW_ERROR, VIEW_STILL_LOADING_PLEASE_WAIT));
        } else if (view_state == VIEW_STATE.SHOWING) {
            SDKLogger.printDebugLog(VIEW_ALREADY_SHOWING);
        } else {
            htmlViewWrapper.showBanner(new HtmlViewWrapper.BannerShowJSInterface() { // from class: com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.3
                @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.BannerShowJSInterface
                public void onError(int i, String str) {
                    SDKLogger.printErrorLog("KidozBannerPresenter | Show onError: " + str);
                    KidozBannerPresenter.this.mViewState = VIEW_STATE.ERROR;
                    KidozBannerPresenter.this.notifyBannerShowFailed(i, str);
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.BannerShowJSInterface
                public void onImpression() {
                    SDKLogger.printDebugLog("KidozBannerPresenter | Show onImpression()");
                    KidozBannerPresenter.this.notifyBannerImpression();
                }

                @Override // com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.BannerShowJSInterface
                public void onSuccess() {
                    SDKLogger.printDebugLog("KidozBannerPresenter | Show onSuccess()");
                    htmlViewWrapper.requestWidgetOpen(WidgetType.WIDGET_TYPE_BANNER.getStringValue());
                    KidozBannerPresenter.this.mViewState = VIEW_STATE.SHOWING;
                    KidozBannerPresenter.this.mKidozBannerView.nativeShow();
                    KidozBannerPresenter.this.notifyBannerShown();
                }
            });
        }
    }
}
