###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog)
.class public Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;
.super Lcom/kidoz/sdk/api/general/BaseDialog;
.source "BaseInterstitialDialog.java"


# instance fields
.field protected mCloseButtonView:Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

.field protected mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field protected mInnerContainer:Landroid/widget/RelativeLayout;

.field protected mStyleID:Ljava/lang/String;

.field protected mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field protected mWidgetType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 7

    const v0, 0x1030011

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/general/BaseDialog;-><init>(Landroid/content/Context;IZ)V

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mStyleID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    new-instance p1, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;)V

    invoke-virtual {p4, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setHtmlWebViewListener(Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2b

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2b
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/kidoz/sdk/api/general/BaseDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p4, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->initCloseButton()V

    return-void
.end method

.method private initCloseButton()V
    .registers 7

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mCloseButtonView:Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mCloseButtonView:Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mCloseButtonView:Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mCloseButtonView:Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mCloseButtonView:Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected close()V
    .registers 1

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->closeDialog()V

    return-void
.end method

.method protected donePlayback()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onHtmlFinish()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->isShowClose()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mCloseButtonView:Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->hideLoadingProgressView()V

    return-void
.end method

.method protected onHtmlStart()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->showLoadingProgressView()V

    return-void
.end method

.method protected openMaximized()V
    .registers 1

    return-void
.end method

.method protected viewReady()V
    .registers 1

    return-void
.end method
