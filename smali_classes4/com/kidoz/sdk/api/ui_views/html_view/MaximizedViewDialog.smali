###### Class com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog (com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog)
.class public Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;
.super Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;
.source "MaximizedViewDialog.java"


# static fields
.field private static final DEFAULT_TOP_BAR_COLOR:I

.field private static final MAXIMIZED_VIEW_RESOURCE_ID:I = 0x3


# instance fields
.field private mFocusLost:Z

.field private mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#36a7ec"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->DEFAULT_TOP_BAR_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mFocusLost:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->initTopBar()V

    return-void
.end method

.method private initTopBar()V
    .registers 6

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;-><init>(Landroid/content/Context;ZLjava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    sget v1, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->DEFAULT_TOP_BAR_COLOR:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->setTopBarBackgroundColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->showParentalLockIcon(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$1;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;)V

    invoke-virtual {v0, v2}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->setKidozTopBarListener(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method


# virtual methods
.method public getInnerWebView()Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    return-object v0
.end method

.method public loadHtmlView(Lcom/kidoz/sdk/api/structure/ContentItem;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsUseNativeTopBar()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->setTitle(Ljava/lang/String;)V

    goto :goto_21

    :cond_1a
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mKidozTopBar:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_21
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setData(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsNonDefaultHtml()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->reloadHtml()V

    goto :goto_39

    :cond_34
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestMaximize()V

    :goto_39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mInnerContainer:Landroid/widget/RelativeLayout;

    const-string v0, "#77000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 10

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDetachedFromWindow()V

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->HTML_FULL_VIEW_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;->setAdditionalParam(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    new-instance v0, Lcom/kidoz/sdk/api/general/WidgetEventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->createFromString(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/WidgetType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/WidgetEventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const/4 v4, 0x0

    const-string v6, "Maximized View"

    const-string v7, "Close Dialog"

    const-string v8, "Web"

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mStyleID:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kidoz/events/EventManager;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method protected onDialogFocusChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogFocusChange(Z)V

    if-nez p1, :cond_f

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mFocusLost:Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestFocusOff()V

    :cond_f
    return-void
.end method

.method protected onDialogWindowVisibilityChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogWindowVisibilityChange(Z)V

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mFocusLost:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->mFocusLost:Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestFocusOn(Z)V

    :cond_14
    return-void
.end method

.method public openDialog()V
    .registers 11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$2;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/kidoz/sdk/api/general/WidgetEventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->createFromString(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/WidgetType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/WidgetEventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mStyleID:Ljava/lang/String;

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v6, "Maximized View"

    const-string v7, "Open Dialog"

    const-string v8, "Web"

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mStyleID:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v6, "Maximized View"

    const-string v7, "View Duration"

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->k(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void
.end method
