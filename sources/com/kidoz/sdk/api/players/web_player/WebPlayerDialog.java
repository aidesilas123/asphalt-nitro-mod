package com.kidoz.sdk.api.players.web_player;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.widget.RelativeLayout;
import com.kidoz.events.EventManager;
import com.kidoz.events.a;
import com.kidoz.sdk.api.general.BaseDialog;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.WidgetEventMessage;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.players.web_player.WebPlayerView;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.KidozTopBar;
import com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper;
import com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface;
import com.kidoz.sdk.api.ui_views.web_unit_view.ConfigurationView;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public class WebPlayerDialog extends BaseDialog {
    private static final String CONTENT_ITEM_SAVE_STATE_KEY = "CONTENT_ITEM_SAVE_STATE_KEY_WP";
    private static final int DEFAULT_TOP_BAR_COLOR = Color.parseColor("#36a7ec");
    private static final String TAG = WebPlayerDialog.class.getSimpleName();
    private static final int WEB_PLAYER_RESOURCE_ID = 1;
    private static final String WEB_PLAYER_TYPE_SAVE_STATE_KEY = "WEB_PLAYER_TYPE_SAVE_STATE_KEY_WP";
    private ConfigurationView mConfigurationView;
    private ContentItem mContentItem;
    private HtmlViewWrapper mHtmlViewWrapper;
    private RelativeLayout mInnerContainer;
    private KidozTopBar mKidozTopBar;
    private String mLabel;
    private String mStyleId;
    private WebPlayerType mWebPlayerType;
    private WebPlayerView mWebPlayerView;
    private String mWidgetType;
    private Utils.StaticHandler staticHandler;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.players.web_player.WebPlayerDialog$11, reason: invalid class name */
    static /* synthetic */ class AnonymousClass11 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType;

        static {
            int[] iArr = new int[WebPlayerType.values().length];
            $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType = iArr;
            try {
                iArr[WebPlayerType.EXTERNAL_LINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[WebPlayerType.ONLINE_GAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[WebPlayerType.WEB_BROWSER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[WebPlayerType.HTML_PLAYBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[WebPlayerType.ROVIO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    class WebPlayerJavaInterface {
        WebPlayerJavaInterface() {
        }

        @JavascriptInterface
        public void closeWebView() {
            try {
                WebPlayerDialog.this.staticHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.WebPlayerJavaInterface.2
                    @Override // java.lang.Runnable
                    public void run() {
                        WebPlayerDialog.this.closeDialog();
                    }
                });
            } catch (Exception e2) {
                SDKLogger.printErrorLog(WebPlayerDialog.TAG, "Error when trying to close web dialog: " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void onInvokeCloseClick() {
            try {
                WebPlayerDialog.this.staticHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.WebPlayerJavaInterface.1
                    @Override // java.lang.Runnable
                    public void run() {
                        WebPlayerDialog.this.closeDialog();
                    }
                });
            } catch (Exception e2) {
                SDKLogger.printErrorLog(WebPlayerDialog.TAG, "Error when trying to close web dialog: " + e2.getMessage());
            }
        }
    }

    public WebPlayerDialog(Context context, ContentItem contentItem, String str, String str2, WebPlayerType webPlayerType, boolean z) {
        super(context, R.style.Theme.Translucent.NoTitleBar.Fullscreen, z);
        this.mWidgetType = null;
        this.mStyleId = null;
        this.staticHandler = new Utils.StaticHandler(Looper.getMainLooper());
        if (webPlayerType == null || webPlayerType != WebPlayerType.EXTERNAL_LINK) {
            setCancelable(true);
        } else {
            setCancelable(false);
        }
        this.mContentItem = contentItem;
        this.mWebPlayerType = webPlayerType;
        this.mWidgetType = str;
        this.mStyleId = str2;
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (WebPlayerDialog.this.mWebPlayerType != null && WebPlayerDialog.this.mWebPlayerType == WebPlayerType.ROVIO && i == 4 && WebPlayerDialog.this.mWebPlayerView.getKidozWebView().canGoBack()) {
                    try {
                        WebPlayerDialog.this.mWebPlayerView.getKidozWebView().goBack();
                        return true;
                    } catch (Exception unused) {
                    }
                }
                return false;
            }
        });
    }

    private void addHtmlPlaybackView() {
        HtmlViewWrapper htmlViewWrapper = new HtmlViewWrapper(this.mCallingActivity, false);
        this.mHtmlViewWrapper = htmlViewWrapper;
        htmlViewWrapper.setInFocusActivityContext(this.mCallingActivity);
        this.mHtmlViewWrapper.setHtmlWebViewListener(new IOnHtmlWebViewInterface() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.5
            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onClose() {
                super.onClose();
                WebPlayerDialog.this.closeDialog();
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onHtmlFinishedLoading() {
                super.onHtmlFinishedLoading();
                WebPlayerDialog.this.mHtmlViewWrapper.hideLoadingProgressView();
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onHtmlStartLoading() {
                super.onHtmlStartLoading();
                WebPlayerDialog.this.mHtmlViewWrapper.showLoadingProgressView();
            }
        });
        this.mHtmlViewWrapper.setData(this.mContentItem);
        this.mHtmlViewWrapper.reloadHtml();
        if (this.mContentItem.getIsUseNativeTopBar()) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        Point screenSize = Utils.getScreenSize(getContext());
        layoutParams.topMargin = (int) (Math.max(screenSize.x, screenSize.y) * 0.061458334f);
        this.mInnerContainer.addView(this.mHtmlViewWrapper, layoutParams);
    }

    private void addWebPlayerView() {
        JSONArray jSONArrayOptJSONArray;
        WebPlayerView webPlayerView = new WebPlayerView(getWindow(), this.mCallingActivity, this.mWebPlayerType, this.mContentItem.getIsUseNativeTopBar());
        this.mWebPlayerView = webPlayerView;
        webPlayerView.getKidozWebView().addJavascriptInterface(new WebPlayerJavaInterface(), "KidozAndroid");
        this.mWebPlayerView.getKidozWebView().addJavascriptInterface(new WebPlayerJavaInterface(), "Bridge");
        this.mWebPlayerView.getKidozWebView().setWebViewVisibilityListener(new WebViewVisibilityListener() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.6
            @Override // com.kidoz.sdk.api.players.web_player.WebViewVisibilityListener
            public void onWebViewBecameVisible(boolean z) {
                if (z) {
                    WebPlayerDialog.this.invokeJSfunction("javascript:focus()");
                } else {
                    WebPlayerDialog.this.invokeJSfunction("javascript:blur()");
                }
            }
        });
        ContentItem contentItem = this.mContentItem;
        if (contentItem != null) {
            String[] strArr = null;
            try {
                if (contentItem.getExtraParameters() != null && (jSONArrayOptJSONArray = this.mContentItem.getExtraParameters().optJSONArray("allowed_domains")) != null) {
                    strArr = new String[jSONArrayOptJSONArray.length()];
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        strArr[i] = jSONArrayOptJSONArray.getString(i);
                    }
                }
            } catch (Exception e2) {
                SDKLogger.printErrorLog(TAG, "Error when trying to gnerate website's allowed domains: " + e2.getMessage());
            }
            this.mWebPlayerView.loadWebUrlWithAllowedDomains(strArr, this.mContentItem.getData(), this.mContentItem.getId());
        }
        this.mWebPlayerView.setOnRemoveViewRequestListener(new WebPlayerView.IOnRemoveViewRequestListener() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.7
            @Override // com.kidoz.sdk.api.players.web_player.WebPlayerView.IOnRemoveViewRequestListener
            public void onRemoveView() {
                WebPlayerDialog.this.closeDialog();
            }
        });
        this.mInnerContainer.addView(this.mWebPlayerView);
    }

    private void initConfigurationView() {
        ConfigurationView configurationView = new ConfigurationView(getContext(), new ConfigurationView.ConfigurationViewInterface() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.2
            @Override // com.kidoz.sdk.api.ui_views.web_unit_view.ConfigurationView.ConfigurationViewInterface
            public void onViewVisibilityChanged(boolean z) {
                try {
                    if (z) {
                        WebPlayerDialog.this.invokeJSfunction("javascript:toonsWebApi.appForeground()");
                    } else {
                        WebPlayerDialog.this.invokeJSfunction("javascript:toonsWebApi.appBackground()");
                    }
                } catch (Exception unused) {
                }
            }
        });
        this.mConfigurationView = configurationView;
        this.mInnerContainer.addView(configurationView);
    }

    private void initDialogView() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.mInnerContainer = relativeLayout;
        setContentView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        if (this.mWebPlayerType == WebPlayerType.HTML_PLAYBACK) {
            addHtmlPlaybackView();
        } else {
            addWebPlayerView();
            WebPlayerView webPlayerView = this.mWebPlayerView;
            if (webPlayerView != null) {
                webPlayerView.setContentItem(this.mContentItem);
            }
        }
        initTopBar();
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setId(Utils.generateViewId());
        this.mInnerContainer.addView(relativeLayout2, layoutParams);
        WebPlayerView webPlayerView2 = this.mWebPlayerView;
        if (webPlayerView2 != null) {
            webPlayerView2.setFullScreenWebChromeClient(relativeLayout2);
        }
        WebPlayerType webPlayerType = this.mWebPlayerType;
        if (webPlayerType == null || webPlayerType != WebPlayerType.EXTERNAL_LINK) {
            this.mInnerContainer.setBackgroundColor(-1);
        } else {
            this.mInnerContainer.setBackgroundColor(Color.parseColor("#77000000"));
            this.mKidozTopBar.setVisibility(4);
        }
        if (this.mContentItem.getName() != null) {
            this.mKidozTopBar.setTitle(this.mContentItem.getName());
        } else {
            this.mKidozTopBar.setTitle("");
        }
        WebPlayerType webPlayerType2 = this.mWebPlayerType;
        if (webPlayerType2 != null && webPlayerType2 == WebPlayerType.ROVIO) {
            CookieManager.getInstance().setAcceptCookie(true);
            if (this.mWebPlayerView != null && Build.VERSION.SDK_INT >= 21) {
                CookieManager.getInstance().setAcceptThirdPartyCookies(this.mWebPlayerView.getKidozWebView(), true);
            }
        }
        WebPlayerType webPlayerType3 = this.mWebPlayerType;
        if ((webPlayerType3 != null && webPlayerType3 == WebPlayerType.ROVIO) || !this.mContentItem.getIsUseNativeTopBar()) {
            this.mKidozTopBar.setVisibility(8);
        }
        initConfigurationView();
    }

    private void initTopBar() {
        KidozTopBar kidozTopBar = new KidozTopBar(getContext(), true, this.mWidgetType, null);
        this.mKidozTopBar = kidozTopBar;
        kidozTopBar.setId(Utils.generateViewId());
        this.mKidozTopBar.setTopBarBackgroundColor(DEFAULT_TOP_BAR_COLOR);
        this.mKidozTopBar.setKidozTopBarListener(new KidozTopBar.KidozTopBarListener() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.8
            @Override // com.kidoz.sdk.api.ui_views.KidozTopBar.KidozTopBarListener
            public void onExitClicked(View view) {
                WebPlayerDialog.this.closeDialog();
            }
        });
        this.mKidozTopBar.showParentalLockIcon(false);
        this.mInnerContainer.addView(this.mKidozTopBar, new RelativeLayout.LayoutParams(-1, -2));
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    public void closeDialog() {
        super.closeDialog();
        EventBus.getDefault().k(new EventMessage(EventMessage.MessageType.WEB_PLAYER_DIALOG_CLOSED));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        WebPlayerType webPlayerType = this.mWebPlayerType;
        if (webPlayerType != null) {
            if (webPlayerType == WebPlayerType.ROVIO || webPlayerType == WebPlayerType.ONLINE_GAME || webPlayerType == WebPlayerType.WEB_BROWSER || webPlayerType == WebPlayerType.HTML_PLAYBACK) {
                EventBus.getDefault().k(new WidgetEventMessage(EventMessage.MessageType.PLAYER_CLOSE, WidgetType.createFromString(this.mWidgetType)));
            }
        }
    }

    public void invokeJSfunction(final String str) {
        try {
            if (this.mWebPlayerView != null) {
                this.staticHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.9
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (Build.VERSION.SDK_INT >= 19) {
                                WebPlayerDialog.this.mWebPlayerView.getKidozWebView().evaluateJavascript(str, null);
                            } else {
                                WebPlayerDialog.this.mWebPlayerView.getKidozWebView().loadUrl(str);
                            }
                        } catch (Exception unused) {
                            WebPlayerDialog.this.mWebPlayerView.getKidozWebView().loadUrl(str);
                        }
                    }
                });
            }
            if (this.mHtmlViewWrapper != null) {
                this.staticHandler.post(new Runnable() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.10
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (Build.VERSION.SDK_INT >= 19) {
                                WebPlayerDialog.this.mHtmlViewWrapper.mWebView.evaluateJavascript(str, null);
                            } else {
                                WebPlayerDialog.this.mHtmlViewWrapper.mWebView.loadUrl(str);
                            }
                        } catch (Exception unused) {
                            WebPlayerDialog.this.mHtmlViewWrapper.mWebView.loadUrl(str);
                        }
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            if (bundle.containsKey(CONTENT_ITEM_SAVE_STATE_KEY)) {
                this.mContentItem = (ContentItem) bundle.getSerializable(CONTENT_ITEM_SAVE_STATE_KEY);
            }
            this.mWebPlayerType = (WebPlayerType) bundle.getSerializable(WEB_PLAYER_TYPE_SAVE_STATE_KEY);
        }
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
            }
        });
        try {
            initDialogView();
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error initDialog: " + e2.getMessage());
        }
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.staticHandler.removeCallbacksAndMessages(null);
        WebPlayerView webPlayerView = this.mWebPlayerView;
        if (webPlayerView != null) {
            try {
                webPlayerView.releaseAndcloseView();
            } catch (Exception e2) {
                SDKLogger.printDebugLog(TAG, "Error when trying to onDetach: " + e2.getMessage());
            }
        }
        HtmlViewWrapper htmlViewWrapper = this.mHtmlViewWrapper;
        if (htmlViewWrapper != null) {
            try {
                htmlViewWrapper.stopAndReleaseWebView();
            } catch (Exception e3) {
                SDKLogger.printDebugLog(TAG, "Error when trying to mHtmlViewWrapper.stopAndReleaseWebView(): " + e3.getMessage());
            }
        }
        if (this.mWebPlayerType != WebPlayerType.EXTERNAL_LINK) {
            EventManager.getInstance(getContext()).i(getContext(), this.mWidgetType, this.mStyleId, EventManager.a, "Web Player", "Close Dialog", this.mLabel);
            EventManager.getInstance(getContext()).j(getContext(), this.mWidgetType, this.mStyleId, 1);
        }
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    protected void onDialogVisibilityChange(int i) {
        super.onDialogVisibilityChange(i);
        if (i != 0) {
            this.staticHandler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    protected void onDialogWindowVisibilityChange(boolean z) {
        super.onDialogWindowVisibilityChange(z);
        if (z) {
            return;
        }
        this.staticHandler.removeCallbacksAndMessages(null);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        if (bundleOnSaveInstanceState != null) {
            bundleOnSaveInstanceState.putSerializable(WEB_PLAYER_TYPE_SAVE_STATE_KEY, this.mWebPlayerType);
        }
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    public void openDialog() {
        super.openDialog();
        WebPlayerType webPlayerType = this.mWebPlayerType;
        WebPlayerType webPlayerType2 = WebPlayerType.EXTERNAL_LINK;
        if (webPlayerType != webPlayerType2) {
            EventBus.getDefault().k(new WidgetEventMessage(EventMessage.MessageType.PLAYER_OPEN, WidgetType.createFromString(this.mWidgetType)));
        }
        int i = AnonymousClass11.$SwitchMap$com$kidoz$sdk$api$players$web_player$WebPlayerType[this.mWebPlayerType.ordinal()];
        if (i == 1) {
            this.mLabel = "Web External Link";
        } else if (i == 2) {
            this.mLabel = "Online Games Player";
        } else if (i == 3) {
            this.mLabel = "Website";
        } else if (i == 4) {
            this.mLabel = "Html";
        } else if (i == 5) {
            this.mLabel = "Rovio";
        }
        if (this.mWebPlayerType != webPlayerType2) {
            EventManager.getInstance(getContext()).i(getContext(), this.mWidgetType, this.mStyleId, EventManager.a, "Web Player", "Open Dialog", this.mLabel);
            EventManager.getInstance(getContext()).k(this.mWidgetType, this.mStyleId, EventManager.b, 1, "Web Player", "View Duration", this.mContentItem.getName(), this.mContentItem.getId());
        }
    }

    public void setAutoCloseTimer() {
        WebPlayerType webPlayerType = this.mWebPlayerType;
        if (webPlayerType == null || webPlayerType != WebPlayerType.EXTERNAL_LINK) {
            return;
        }
        this.staticHandler.removeCallbacksAndMessages(null);
        this.staticHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerDialog.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (WebPlayerDialog.this.mWebPlayerView != null && WebPlayerDialog.this.mWebPlayerView.getKidozWebView() != null) {
                        a aVar = new a();
                        if (WebPlayerDialog.this.mContentItem != null) {
                            aVar.d("ItemID", WebPlayerDialog.this.mContentItem.getId());
                            aVar.d("AdvertiserID", WebPlayerDialog.this.mContentItem.getAdvertiserID());
                        }
                        EventManager.getInstance(WebPlayerDialog.this.getContext()).h(WebPlayerDialog.this.getContext(), WebPlayerDialog.this.mWidgetType, WebPlayerDialog.this.mStyleId, EventManager.a, aVar, "WebView Error", "Error opening google start redirect", WebPlayerDialog.this.mWebPlayerView.getKidozWebView().getLastOverloadUrl());
                    }
                } catch (Exception unused) {
                }
                WebPlayerDialog.this.closeDialog();
            }
        }, 8000L);
    }
}
