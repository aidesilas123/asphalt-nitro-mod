package com.kidoz.sdk.api.players.web_player;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.players.web_player.KidozWebView;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.loading_progress_view.LoadingProgressView;
import com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

/* JADX INFO: loaded from: classes4.dex */
public class WebPlayerView extends RelativeLayout {
    private static final float LOADING_PROGRESS_DEFAULT_RATIO = 0.35f;
    private ContentItem mContentItem;
    private KidozWebView mKidozWebView;
    private LoadingProgressView mLoadingProgressView;
    private RelativeLayout mNonVideoLayout;
    private IOnRemoveViewRequestListener mRemoveViewRequestListener;
    private boolean mUseNativeTopBar;
    private WebPlayerType mWebPlayerType;
    private Window mWindow;

    public interface IOnRemoveViewRequestListener {
        void onRemoveView();
    }

    public WebPlayerView(Window window, Context context, WebPlayerType webPlayerType, boolean z) {
        super(context);
        this.mUseNativeTopBar = true;
        this.mWindow = window;
        this.mWebPlayerType = webPlayerType;
        this.mUseNativeTopBar = z;
        initiateView();
    }

    private void initLayout() {
        this.mNonVideoLayout = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        WebPlayerType webPlayerType = this.mWebPlayerType;
        if ((webPlayerType != null && webPlayerType != WebPlayerType.ROVIO) || this.mUseNativeTopBar) {
            Point screenSize = Utils.getScreenSize(getContext());
            layoutParams.topMargin = (int) (Math.max(screenSize.x, screenSize.y) * 0.061458334f);
        }
        this.mNonVideoLayout.setId(Utils.generateViewId());
        addView(this.mNonVideoLayout, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        KidozWebView kidozWebView = new KidozWebView(getContext(), this.mWebPlayerType);
        this.mKidozWebView = kidozWebView;
        kidozWebView.setId(Utils.generateViewId());
        this.mNonVideoLayout.addView(this.mKidozWebView, layoutParams2);
        this.mKidozWebView.setOnLounchExternalAppFromRedirect(new KidozWebView.IOnLounchExternalAppFromRedirectListener() { // from class: com.kidoz.sdk.api.players.web_player.WebPlayerView.1
            @Override // com.kidoz.sdk.api.players.web_player.KidozWebView.IOnLounchExternalAppFromRedirectListener
            public void onLounch() {
                if (WebPlayerView.this.mRemoveViewRequestListener != null) {
                    WebPlayerView.this.mRemoveViewRequestListener.onRemoveView();
                }
            }
        });
    }

    private void initiateView() {
        initLayout();
        WebPlayerType webPlayerType = this.mWebPlayerType;
        if (webPlayerType == null || webPlayerType != WebPlayerType.EXTERNAL_LINK) {
            return;
        }
        this.mKidozWebView.setAlpha(0.0f);
        this.mLoadingProgressView = new LoadingProgressView(getContext());
        Point screenSize = Utils.getScreenSize(getContext());
        int iMin = (int) (Math.min(screenSize.x, screenSize.y) * LOADING_PROGRESS_DEFAULT_RATIO);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iMin, iMin);
        this.mLoadingProgressView.setCircleWidthRelativeToSize(iMin);
        layoutParams.addRule(13);
        addView(this.mLoadingProgressView, layoutParams);
        this.mLoadingProgressView.startLoadingAnimation();
    }

    public KidozWebView getKidozWebView() {
        return this.mKidozWebView;
    }

    public void loadWebUrlWithAllowedDomains(String[] strArr, String str, String str2) {
        this.mKidozWebView.loadWebUrl(strArr, str, str2);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        KidozWebView kidozWebView = this.mKidozWebView;
        if (kidozWebView != null) {
            kidozWebView.stopLoading();
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

    public void releaseAndcloseView() {
        KidozWebView kidozWebView = this.mKidozWebView;
        if (kidozWebView != null) {
            kidozWebView.stopAndReleaseWebView();
        }
        LoadingProgressView loadingProgressView = this.mLoadingProgressView;
        if (loadingProgressView != null) {
            loadingProgressView.stopLoadingAnimation();
        }
    }

    public void setContentItem(ContentItem contentItem) {
        this.mContentItem = contentItem;
        KidozWebView kidozWebView = this.mKidozWebView;
        if (kidozWebView != null) {
            kidozWebView.setContentItem(contentItem);
        }
    }

    public void setFullScreenWebChromeClient(ViewGroup viewGroup) {
        this.mKidozWebView.setWebChromeClient(new KidozFullScreenVideoEnabled_No_Progress_WebChromeClient(this.mNonVideoLayout, viewGroup, null, this.mKidozWebView, this.mWindow));
    }

    public void setOnRemoveViewRequestListener(IOnRemoveViewRequestListener iOnRemoveViewRequestListener) {
        this.mRemoveViewRequestListener = iOnRemoveViewRequestListener;
    }
}
