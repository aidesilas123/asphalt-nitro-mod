###### Class com.kidoz.sdk.api.dialogs.AboutKidozDialog (com.kidoz.sdk.api.dialogs.AboutKidozDialog)
.class public Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;
.super Lcom/kidoz/sdk/api/general/BaseDialog;
.source "AboutKidozDialog.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContainer:Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;

.field private mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

.field private mPopLocation:[I

.field private mRootView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .registers 4

    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;-><init>(Landroid/content/Context;I)V

    const-class p1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_34

    const v0, 0x3f333333    # 0.7f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_34
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_3c
    iput-object p2, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mPopLocation:[I

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)[I
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mPopLocation:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    return-object p0
.end method

.method static synthetic access$201(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$301(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private initBackgroundkidozCardView()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setRadius(F)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mContainer:Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initCloseButton()V
    .registers 6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fadb22d0e560419L    # 0.058

    mul-double v0, v0, v2

    double-to-int v0, v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "#04a0e1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$1;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mContainer:Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$2;

    invoke-direct {v1, p0, v2}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$2;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initDialog()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initRootView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initBackgroundkidozCardView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initWebView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initCloseButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->prepareSize()V

    return-void
.end method

.method private initRootView()V
    .registers 3

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mRootView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private initWebView()V
    .registers 7

    new-instance v0, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2d

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_2d
    new-instance v5, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$3;

    invoke-direct {v5, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$3;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v5, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$4;

    invoke-direct {v5, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$4;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLongClickable(Z)V

    new-instance v5, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$5;

    invoke-direct {v5, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$5;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    const-string v2, "https://kidoz.net/v3policy/"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-lt v1, v4, :cond_5f

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_5f
    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mContainer:Lcom/kidoz/sdk/api/ui_views/AboutKidozWebViewContainer;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private prepareSize()V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_54

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_9b

    :cond_54
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_9b

    :cond_7c
    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_9b
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mPopLocation:[I

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    new-instance v2, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$7;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$7;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    invoke-static {v1, v0, v2}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playPopOutToRightTop(Landroid/view/View;[ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    goto :goto_12

    :cond_f
    invoke-static {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->access$301(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    :goto_12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initDialog()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDialogOrientationChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogOrientationChange(Z)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->prepareSize()V

    return-void
.end method

.method public show()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->mKidozCardView:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->setOnGlobalLayoutFinishListener(Landroid/view/View;Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;)V

    return-void
.end method
