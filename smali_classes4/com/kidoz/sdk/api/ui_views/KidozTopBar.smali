###### Class com.kidoz.sdk.api.ui_views.KidozTopBar (com.kidoz.sdk.api.ui_views.KidozTopBar)
.class public Lcom/kidoz/sdk/api/ui_views/KidozTopBar;
.super Landroid/widget/RelativeLayout;
.source "KidozTopBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;
    }
.end annotation


# static fields
.field public static final BACKGROUND_RATIO:F = 0.061458334f


# instance fields
.field private mExitButton:Lcom/kidoz/sdk/api/ui_views/ExitButton;

.field private mIsClicksBlocked:Z

.field private mIsParentalLockVisible:Z

.field private mKidozTopBarListener:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;

.field private mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

.field private mPropertiesObject:Lorg/json/JSONObject;

.field private mStyleId:Ljava/lang/String;

.field private mTitleView:Lcom/kidoz/sdk/api/ui_views/TitleView;

.field private mWidgetType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mWidgetType:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mStyleId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initView(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mWidgetType:Ljava/lang/String;

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mStyleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mWidgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mPropertiesObject:Lorg/json/JSONObject;

    if-eqz p4, :cond_16

    const-string p3, "style_id"

    invoke-virtual {p4, p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mStyleId:Ljava/lang/String;

    :cond_16
    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initView(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mIsClicksBlocked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mIsClicksBlocked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mIsParentalLockVisible:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ExitButton;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mExitButton:Lcom/kidoz/sdk/api/ui_views/ExitButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mWidgetType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mStyleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mKidozTopBarListener:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;

    return-object p0
.end method

.method private addBackground()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v2, "#04a0e1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42ec0000    # 118.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initExitButton(Z)V
    .registers 9

    new-instance v6, Lcom/kidoz/sdk/api/ui_views/ExitButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;

    invoke-direct {v4, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/ui_views/ExitButton;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;Z)V

    iput-object v6, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mExitButton:Lcom/kidoz/sdk/api/ui_views/ExitButton;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setId(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mExitButton:Lcom/kidoz/sdk/api/ui_views/ExitButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initLockButton()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mIsParentalLockVisible:Z

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->setIsLockActive(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mExitButton:Lcom/kidoz/sdk/api/ui_views/ExitButton;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScaleFactor(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initRootView()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)V

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->setOnGlobalLayoutFinishListener(Landroid/view/View;Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;)V

    return-void
.end method

.method private initTitle()V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/TitleView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/TitleView;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mTitleView:Lcom/kidoz/sdk/api/ui_views/TitleView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mTitleView:Lcom/kidoz/sdk/api/ui_views/TitleView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mPropertiesObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mTitleView:Lcom/kidoz/sdk/api/ui_views/TitleView;

    const-string v1, "#04a0e1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/TitleView;->setTitleColor(I)V

    :cond_26
    return-void
.end method

.method private initView(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initRootView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->addBackground()V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initExitButton(Z)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initLockButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initTitle()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    :cond_f
    return-void
.end method

.method public setKidozTopBarListener(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mKidozTopBarListener:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mTitleView:Lcom/kidoz/sdk/api/ui_views/TitleView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/TitleView;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_a
    return-void
.end method

.method public setTopBarBackgroundColor(I)V
    .registers 2

    return-void
.end method

.method public showParentalLockIcon(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mIsParentalLockVisible:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    :cond_b
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11
    return-void
.end method
