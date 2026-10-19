###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView)
.class public Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;
.super Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;
.source "FamilyPanelView.java"


# static fields
.field private static final DEFAULT_CORNER_RADIUS:I = 0x4

.field public static final ITEM_HEIGHT:F = 420.0f

.field public static final ITEM_WIDTH:F = 660.0f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mBtnAnimType:I

.field protected mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field public mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field protected mViewPagerHeight:I

.field protected mViewPagerWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mBtnAnimType:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result p1

    const/high16 p2, 0x44250000    # 660.0f

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mViewPagerWidth:I

    const/high16 p2, 0x43d20000    # 420.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mViewPagerHeight:I

    return-void
.end method

.method private initAnimationView()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$5;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->loadAnimation()V

    return-void
.end method

.method private initNextButton()V
    .registers 6

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v3, "nextBtnUrl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method

.method private loadAnimation()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const/4 v3, 0x0

    const-string v4, "animUrlNew"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$6;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$6;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    :cond_1d
    return-void
.end method

.method private setFamilyColorAndShape(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;I)V
    .registers 15

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p3, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq p1, v9, :cond_77

    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v9, :cond_61

    if-eq p1, v8, :cond_4b

    new-array p1, v7, [F

    aput v10, p1, v6

    aput v10, p1, v9

    aput p3, p1, v8

    aput p3, p1, v5

    aput v10, p1, v4

    aput v10, p1, v3

    aput v10, p1, v2

    aput v10, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto/16 :goto_c4

    :cond_4b
    new-array p1, v7, [F

    aput p3, p1, v6

    aput p3, p1, v9

    aput v10, p1, v8

    aput v10, p1, v5

    aput v10, p1, v4

    aput v10, p1, v3

    aput v10, p1, v2

    aput v10, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_c4

    :cond_61
    new-array p1, v7, [F

    aput p3, p1, v6

    aput p3, p1, v9

    aput p3, p1, v8

    aput p3, p1, v5

    aput v10, p1, v4

    aput v10, p1, v3

    aput v10, p1, v2

    aput v10, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_c4

    :cond_77
    sget-object p1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v9, :cond_af

    if-eq p1, v8, :cond_99

    new-array p1, v7, [F

    aput v10, p1, v6

    aput v10, p1, v9

    aput v10, p1, v8

    aput v10, p1, v5

    aput p3, p1, v4

    aput p3, p1, v3

    aput v10, p1, v2

    aput v10, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_c4

    :cond_99
    new-array p1, v7, [F

    aput v10, p1, v6

    aput v10, p1, v9

    aput v10, p1, v8

    aput v10, p1, v5

    aput v10, p1, v4

    aput v10, p1, v3

    aput p3, p1, v2

    aput p3, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_c4

    :cond_af
    new-array p1, v7, [F

    aput v10, p1, v6

    aput v10, p1, v9

    aput v10, p1, v8

    aput v10, p1, v5

    aput p3, p1, v4

    aput p3, p1, v3

    aput p3, p1, v2

    aput p3, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :goto_c4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_d0

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d5

    :cond_d0
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d5
    return-void
.end method

.method private startHandlers()V
    .registers 3

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->stopHandlers()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getPanelViewState()Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->startAutoScroll()V

    :cond_10
    return-void
.end method

.method private stopHandlers()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->stopAutoScroll()V

    return-void
.end method


# virtual methods
.method protected clearPanelContent()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->clearContent()V

    return-void
.end method

.method protected initBottomBar()V
    .registers 1

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initBottomBar()V

    return-void
.end method

.method protected initInnerPanelView()V
    .registers 8

    new-instance v6, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStyleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    new-instance v5, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$1;

    invoke-direct {v5, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;)V

    iput-object v6, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0, v3}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setOneItemEnableState(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$3;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setOnRefreshDrawRequestListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->initNextButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->initAnimationView()V

    return-void
.end method

.method protected initPanelViewsRules()V
    .registers 13

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mViewPagerWidth:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v4

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v4, v5}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4, v6, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mViewPagerWidth:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mViewPagerHeight:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    const/4 v8, 0x6

    invoke-virtual {v4, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    const/16 v9, 0x8

    invoke-virtual {v4, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    invoke-virtual {v4, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mBottomBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPoweredByTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    sget-object v8, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v3, v8, :cond_108

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_113

    :cond_108
    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_113
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v3, v6}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v3

    sget-object v6, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    iget-object v8, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v6, v8, :cond_140

    if-eq v6, v9, :cond_12e

    goto :goto_151

    :cond_12e
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getId()I

    move-result v6

    invoke-virtual {v4, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    neg-int v6, v3

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_151

    :cond_140
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getId()I

    move-result v6

    invoke-virtual {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    neg-int v6, v3

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_151
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v6

    sget-object v7, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    iget-object v11, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v7, v7, v11

    if-eq v7, v8, :cond_18f

    if-eq v7, v9, :cond_17d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    neg-int v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_19c

    :cond_17d
    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    neg-int v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_19c

    :cond_18f
    const/16 v1, 0xe

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    neg-int v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_19c
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;->setConfiguration(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;)V

    return-void
.end method

.method protected initShadowView()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCollapsePanelAnimationEnded()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->invokeWidgetClose()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->stopHandlers()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setOneItemEnableState(Z)V

    return-void
.end method

.method protected onContentDataLoadEnded()V
    .registers 1

    return-void
.end method

.method protected onContentDataLoadFailed()V
    .registers 1

    return-void
.end method

.method protected onContentDataLoadStarted()V
    .registers 1

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->pauseAction(Z)V

    return-void
.end method

.method protected onExpandPanelAnimationStarted()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setOneItemEnableState(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mShadowView:Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->invokeWidgetOpen()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->startHandlers()V

    return-void
.end method

.method protected onNoOffers()V
    .registers 1

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    if-nez p2, :cond_13

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->startHandlers()V

    goto :goto_16

    :cond_13
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->stopHandlers()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onWindowFocusChanged(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->startHandlers()V

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->stopHandlers()V

    :goto_d
    return-void
.end method

.method public pauseAction(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->stopPlaybackAction(Z)V

    :cond_7
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->stopGifAnim()V

    :cond_e
    return-void
.end method

.method protected prepareProperties()V
    .registers 4

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->prepareProperties()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v1, "nextBtnAnimType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mBtnAnimType:I

    return-void
.end method

.method public resumeAction(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->startPlaybackAction()V

    :cond_9
    return-void
.end method

.method protected setContentAndRefresh(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setContent(Ljava/util/ArrayList;)V

    :cond_d
    return-void
.end method

.method public setPanelColor(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setPanelColor(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mHandlePosition:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelBgColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->setFamilyColorAndShape(Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;I)V

    :cond_10
    return-void
.end method

.method public setPanelEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->setOneItemEnableState(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->startPlaybackAction()V

    return-void
.end method
