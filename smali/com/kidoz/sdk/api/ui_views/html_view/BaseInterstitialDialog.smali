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

###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.AnonymousClass1 (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "BaseInterstitialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public forwardToGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method public onClose()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->close()V

    return-void
.end method

.method public onDonePlayBack()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->donePlayback()V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->onHtmlFinish()V

    return-void
.end method

.method public onHtmlStartLoading()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->onHtmlStart()V

    return-void
.end method

.method public onOpenMaximized()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->openMaximized()V

    return-void
.end method

.method public onViewReady()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->viewReady()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.AnonymousClass1.RunnableC03821 (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog$1$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;
.super Ljava/lang/Object;
.source "BaseInterstitialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->forwardToGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;

.field final synthetic val$advertiserID:Ljava/lang/String;

.field final synthetic val$appID:Ljava/lang/String;

.field final synthetic val$googlePlayLink:Ljava/lang/String;

.field final synthetic val$styleID:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$appID:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$googlePlayLink:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$advertiserID:Ljava/lang/String;

    iput-object p5, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$widgetType:Ljava/lang/String;

    iput-object p6, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$styleID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    new-instance v1, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-direct {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;-><init>()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$appID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setId(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$googlePlayLink:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setData(Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$advertiserID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setAdvertiserID(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setIsPromoted(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$styleID:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.AnonymousClass2 (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog$2)
.class Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;
.super Ljava/lang/Object;
.source "BaseInterstitialDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->initCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;)V

    const/16 v1, 0x46

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog$2$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;
.super Ljava/lang/Object;
.source "BaseInterstitialDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->closeDialog()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
