package com.kidoz.sdk.api.ui_views.html_view;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import com.kidoz.events.EventManager;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.WidgetEventMessage;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.KidozTopBar;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes4.dex */
public class MaximizedViewDialog extends BaseInterstitialDialog {
    private static final int DEFAULT_TOP_BAR_COLOR = Color.parseColor("#36a7ec");
    private static final int MAXIMIZED_VIEW_RESOURCE_ID = 3;
    private boolean mFocusLost;
    private KidozTopBar mKidozTopBar;

    public MaximizedViewDialog(Context context, String str, String str2, HtmlViewWrapper htmlViewWrapper) {
        super(context, str, str2, htmlViewWrapper);
        this.mFocusLost = false;
        initTopBar();
    }

    private void initTopBar() {
        KidozTopBar kidozTopBar = new KidozTopBar(getContext(), true, this.mWidgetType, null);
        this.mKidozTopBar = kidozTopBar;
        kidozTopBar.setId(Utils.generateViewId());
        this.mKidozTopBar.setTopBarBackgroundColor(DEFAULT_TOP_BAR_COLOR);
        this.mKidozTopBar.showParentalLockIcon(false);
        this.mKidozTopBar.setKidozTopBarListener(new KidozTopBar.KidozTopBarListener() { // from class: com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog.1
            @Override // com.kidoz.sdk.api.ui_views.KidozTopBar.KidozTopBarListener
            public void onExitClicked(View view) {
                MaximizedViewDialog.this.closeDialog();
            }
        });
        this.mInnerContainer.addView(this.mKidozTopBar, new RelativeLayout.LayoutParams(-1, -2));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mWebView.getLayoutParams();
        layoutParams.addRule(3, this.mKidozTopBar.getId());
        layoutParams.setMargins(0, -Utils.dpTOpx(getContext(), 12.0f), 0, 0);
    }

    public HtmlViewWrapper getInnerWebView() {
        return this.mWebView;
    }

    public void loadHtmlView(ContentItem contentItem) {
        this.mContentItem = contentItem;
        if (contentItem.getIsUseNativeTopBar()) {
            this.mKidozTopBar.setVisibility(0);
            this.mKidozTopBar.setTitle(this.mContentItem.getName());
        } else {
            this.mKidozTopBar.setVisibility(8);
        }
        this.mWebView.setData(this.mContentItem);
        if (contentItem.getIsNonDefaultHtml()) {
            this.mWebView.reloadHtml();
        } else {
            this.mWebView.requestMaximize();
        }
    }

    @Override // com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mInnerContainer.setBackgroundColor(Color.parseColor("#77000000"));
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EventMessage eventMessage = new EventMessage(EventMessage.MessageType.HTML_FULL_VIEW_CLOSE);
        eventMessage.setAdditionalParam(this.mWidgetType);
        EventBus.getDefault().k(eventMessage);
        EventBus.getDefault().k(new WidgetEventMessage(EventMessage.MessageType.MAXIMIZED_PLAYER_CLOSE, WidgetType.createFromString(this.mWidgetType)));
        EventManager.getInstance(getContext()).i(getContext(), this.mWidgetType, null, EventManager.a, "Maximized View", "Close Dialog", "Web");
        EventManager.getInstance(getContext()).j(getContext(), this.mWidgetType, this.mStyleID, 3);
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    protected void onDialogFocusChange(boolean z) {
        super.onDialogFocusChange(z);
        if (z) {
            return;
        }
        this.mFocusLost = true;
        HtmlViewWrapper htmlViewWrapper = this.mWebView;
        if (htmlViewWrapper != null) {
            htmlViewWrapper.requestFocusOff();
        }
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    protected void onDialogWindowVisibilityChange(boolean z) {
        super.onDialogWindowVisibilityChange(z);
        if (z && this.mFocusLost) {
            this.mFocusLost = false;
            HtmlViewWrapper htmlViewWrapper = this.mWebView;
            if (htmlViewWrapper != null) {
                htmlViewWrapper.requestFocusOn(true);
            }
        }
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    public void openDialog() {
        this.mWebView.setAlpha(0.01f);
        super.openDialog();
        new Handler().postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog.2
            @Override // java.lang.Runnable
            public void run() {
                MaximizedViewDialog.this.mWebView.setAlpha(1.0f);
            }
        }, 500L);
        EventBus.getDefault().k(new WidgetEventMessage(EventMessage.MessageType.MAXIMIZED_PLAYER_OPEN, WidgetType.createFromString(this.mWidgetType)));
        EventManager.getInstance(getContext()).i(getContext(), this.mWidgetType, this.mStyleID, EventManager.a, "Maximized View", "Open Dialog", "Web");
        if (this.mContentItem != null) {
            EventManager.getInstance(getContext()).k(this.mWidgetType, this.mStyleID, EventManager.b, 3, "Maximized View", "View Duration", this.mContentItem.getName(), this.mContentItem.getId());
        }
    }
}
