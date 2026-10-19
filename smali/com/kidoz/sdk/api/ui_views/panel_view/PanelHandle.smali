###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle)
.class public Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;
.super Landroid/widget/RelativeLayout;
.source "PanelHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;,
        Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;,
        Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;
    }
.end annotation


# static fields
.field private static final DEFAULT_HANDLE_SCALE_SIZE:F = 0.15f


# instance fields
.field private mClickListener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;

.field private mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

.field private mColor:I

.field private mHandleSize:I

.field private mHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

.field private mInnerCloseBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mInnerOpenBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mIsLegacyAssets:Z

.field private mLegacyCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

.field private mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

.field private mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

.field private mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;ILcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandleSize:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mIsLegacyAssets:Z

    new-instance p1, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    iput p3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandleSize:I

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mClickListener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->initHandle()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->playHandleClickAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mClickListener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    return-object p0
.end method

.method private initHandle()V
    .registers 4

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandleSize:I

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandleSize:I

    :cond_1d
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandleSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mInnerOpenBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mHandleSize:I

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mInnerCloseBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mInnerCloseBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mInnerCloseBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mInnerOpenBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mInnerOpenBtnLayParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadHandleAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
    .registers 8

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->OPEN_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-direct {v0, v1, v2, v3}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mColor:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->CLOSE_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-direct {v0, v3, v2, v4}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mColor:I

    invoke-virtual {v0, v2}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iget-object v1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->openBtnAssetFrg:Ljava/io/File;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method private loadHandleLegacyAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
    .registers 7

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->OPEN_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-direct {v0, v1, v2, v3}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mColor:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->CLOSE_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-direct {v0, v1, v2, v3}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mColor:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    iget-object v1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnOpenAsset:Ljava/io/File;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    new-instance v3, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method private playHandleClickAnimation(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)V

    invoke-static {p1, v0, v1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playPanelButtonClickAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private postInvalidateLayers()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method private setCorrectRotation()V
    .registers 3

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mIsLegacyAssets:Z

    if-nez v0, :cond_2d

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    goto :goto_2d

    :cond_15
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_2d

    :cond_22
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public loadAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
    .registers 4

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->isLegacyParams()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mIsLegacyAssets:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->loadHandleLegacyAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V

    goto :goto_f

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->loadHandleAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V

    :goto_f
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->setCorrectRotation()V

    return-void
.end method

.method public setBaseColor(I)V
    .registers 4

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mColor:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    if-eqz v1, :cond_12

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    :cond_12
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    if-eqz v1, :cond_22

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setBaseColor(I)V

    :cond_22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    return-void
.end method

.method public setPanelButtonState(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;)V
    .registers 5

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    goto :goto_62

    :cond_11
    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mIsLegacyAssets:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_62

    :cond_25
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_62

    :cond_3a
    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mIsLegacyAssets:Z

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_62

    :cond_4e
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mOpenAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetBgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mCloseAssetFrgView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_62
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    return-void
.end method

.method public setPanelType(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyCloseDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setPanelType(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mLegacyOpenDefaultDrawable:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setPanelType(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;)V

    :cond_14
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->setCorrectRotation()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$100(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;Landroid/view/View;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass1.RunnableC03861 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$1$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->val$v:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Landroid/view/View;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass2 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$2)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->loadHandleLegacyAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

.field final synthetic val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$300(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnDefaultOpenSponsoredAsset:Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    goto :goto_2e

    :cond_16
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$500(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnCloseAsset:Ljava/io/File;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$400(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    :goto_2e
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$2$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$200(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    goto :goto_1b

    :cond_f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$300(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1b
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$500(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnCloseAsset:Ljava/io/File;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$400(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object v0

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass2.AnonymousClass1.C03871 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$2$1$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;->onPanelPrepared()V

    :cond_b
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass2.C03882 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$2$2)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;->onPanelPrepared()V

    :cond_9
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass3 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->loadHandleAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

.field final synthetic val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$600(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    goto :goto_17

    :cond_d
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$600(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    :goto_17
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$900(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->openBtnAssetBg:Ljava/io/File;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$600(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass3.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$500(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->closeBtnAssetFrg:Ljava/io/File;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass3.AnonymousClass1.C03891 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3$1$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$700(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    goto :goto_1f

    :cond_11
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$700(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    :goto_1f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$800(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->closeBtnAssetBg:Ljava/io/File;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$700(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object v0

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass3.AnonymousClass1.C03891.C03901 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3$1$1$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;->this$3:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;->this$3:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;->onPanelPrepared()V

    :cond_d
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass4 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$4)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->playHandleClickAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$1000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$1000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;->onHandleClick()V

    :cond_11
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass5 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$5)
.class synthetic Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;
.super Ljava/lang/Object;
.source "PanelHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE:[I

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->OPENED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    :try_start_26
    sget-object v3, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.IOnPanelHandleClickListener (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$IOnPanelHandleClickListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;
.super Ljava/lang/Object;
.source "PanelHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnPanelHandleClickListener"
.end annotation


# virtual methods
.method public abstract onHandleClick()V
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.IonPanelHandlePreparedListener (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$IonPanelHandlePreparedListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;
.super Ljava/lang/Object;
.source "PanelHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IonPanelHandlePreparedListener"
.end annotation


# virtual methods
.method public abstract onPanelPrepared()V
.end method

###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.PANEL_HANDLE_VIEW_STATE (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$PANEL_HANDLE_VIEW_STATE)
.class public final enum Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;
.super Ljava/lang/Enum;
.source "PanelHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PANEL_HANDLE_VIEW_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

.field public static final enum CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

.field public static final enum OPENED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->OPENED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    const-string v1, "OPENED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->OPENED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->$values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    return-object v0
.end method
