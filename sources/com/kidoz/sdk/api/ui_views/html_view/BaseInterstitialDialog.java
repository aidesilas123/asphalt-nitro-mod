package com.kidoz.sdk.api.ui_views.html_view;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.BaseDialog;
import com.kidoz.sdk.api.general.ContentExecutionHandler;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.enums.ContentType;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.CloseButtonView;

/* JADX INFO: loaded from: classes4.dex */
public class BaseInterstitialDialog extends BaseDialog {
    protected CloseButtonView mCloseButtonView;
    protected ContentItem mContentItem;
    protected RelativeLayout mInnerContainer;
    protected String mStyleID;
    protected HtmlViewWrapper mWebView;
    protected String mWidgetType;

    public BaseInterstitialDialog(Context context, String str, String str2, HtmlViewWrapper htmlViewWrapper) {
        super(context, R.style.Theme.Translucent.NoTitleBar.Fullscreen, true);
        this.mWidgetType = str;
        this.mStyleID = str2;
        setCancelable(true);
        setCanceledOnTouchOutside(false);
        this.mWebView = htmlViewWrapper;
        htmlViewWrapper.setHtmlWebViewListener(new IOnHtmlWebViewInterface() { // from class: com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.1
            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void forwardToGooglePlay(final String str3, final String str4, final String str5, final String str6, final String str7) {
                if (BaseInterstitialDialog.this.getOwnerActivity() != null) {
                    BaseInterstitialDialog.this.getOwnerActivity().runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ContentItem contentItem = new ContentItem();
                            contentItem.setId(str4);
                            contentItem.setName("");
                            contentItem.setData(str5);
                            contentItem.setContentType(ContentType.PROMOTED_PLAY_APPLICATION);
                            contentItem.setAdvertiserID(str3);
                            contentItem.setIsPromoted(true);
                            ContentExecutionHandler.handleContentItemClick(BaseInterstitialDialog.this.getContext(), contentItem, str6, str7, 0, false, null);
                        }
                    });
                }
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onClose() {
                BaseInterstitialDialog.this.close();
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onDonePlayBack() {
                BaseInterstitialDialog.this.donePlayback();
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onHtmlFinishedLoading() {
                BaseInterstitialDialog.this.onHtmlFinish();
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onHtmlStartLoading() {
                BaseInterstitialDialog.this.onHtmlStart();
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onOpenMaximized() {
                BaseInterstitialDialog.this.openMaximized();
            }

            @Override // com.kidoz.sdk.api.ui_views.html_view.IOnHtmlWebViewInterface
            public void onViewReady() {
                BaseInterstitialDialog.this.viewReady();
            }
        });
        ViewGroup viewGroup = (ViewGroup) this.mWebView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.mWebView);
        }
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.mInnerContainer = relativeLayout;
        setContentView(relativeLayout, new ViewGroup.LayoutParams(-1, -1));
        this.mInnerContainer.addView(this.mWebView, new RelativeLayout.LayoutParams(-1, -1));
        initCloseButton();
    }

    private void initCloseButton() {
        CloseButtonView closeButtonView = new CloseButtonView(getContext(), Color.parseColor("#ffffff"));
        this.mCloseButtonView = closeButtonView;
        closeButtonView.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, Utils.dpTOpx(getContext(), 5.0f), Utils.dpTOpx(getContext(), 5.0f), 0);
        this.mCloseButtonView.setPadding(Utils.dpTOpx(getContext(), 12.0f), 0, 0, Utils.dpTOpx(getContext(), 12.0f));
        this.mInnerContainer.addView(this.mCloseButtonView, layoutParams);
        this.mCloseButtonView.setVisibility(4);
        this.mCloseButtonView.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.clickItemAnimation(view, 70, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.2.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationEnd() {
                        BaseInterstitialDialog.this.closeDialog();
                    }

                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationStart() {
                    }
                });
            }
        });
    }

    protected void close() {
        closeDialog();
    }

    protected void donePlayback() {
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    protected void onHtmlFinish() {
        if (this.mWebView.isShowClose()) {
            this.mCloseButtonView.setVisibility(0);
        }
        this.mWebView.hideLoadingProgressView();
    }

    protected void onHtmlStart() {
        this.mWebView.showLoadingProgressView();
    }

    protected void openMaximized() {
    }

    protected void viewReady() {
    }
}
