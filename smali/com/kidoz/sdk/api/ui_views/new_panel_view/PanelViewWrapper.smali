###### Class com.kidoz.sdk.api.ui_views.new_panel_view.PanelViewWrapper (com.kidoz.sdk.api.ui_views.new_panel_view.PanelViewWrapper)
.class public Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;
.super Landroid/widget/LinearLayout;
.source "PanelViewWrapper.java"


# static fields
.field private static final DEFAULT_PANEL_COLOR:I = -0x555523

.field private static final DEFAULT_RECOMMENDED_BY_TEXT:Ljava/lang/String; = "Recommended by KIDOZ"

.field private static final DEFAULT_RECOMMENDED_BY_TEXT_COLOR:I = -0x30304

.field private static final PANEL_HANDLE_RIGHT_ID:I = 0x3e9

.field private static final RECCOMENDED_TEXT_SIZE_MULTIPLIER:F = 0.009f


# instance fields
.field private mFooterLinearLayout:Landroid/widget/LinearLayout;

.field private mLayoutOnce:Z

.field private mLogoView:Lcom/kidoz/sdk/api/ui_views/new_panel_view/LogoView;

.field private mPanelShape:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;

.field private mPanelShapeHandle:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandle;

.field private mPanelShapeHandleDecoration:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;

.field private mParentalLockView:Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;

.field private mRecommendedTV:Landroid/widget/TextView;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method private addLogoView(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/new_panel_view/LogoView;

    invoke-direct {v1, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/LogoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mLogoView:Lcom/kidoz/sdk/api/ui_views/new_panel_view/LogoView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mLogoView:Lcom/kidoz/sdk/api/ui_views/new_panel_view/LogoView;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mLogoView:Lcom/kidoz/sdk/api/ui_views/new_panel_view/LogoView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addMainPanelShape(Landroid/content/Context;)V
    .registers 7

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x3f600000    # 0.875f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, -0x555523

    invoke-direct {v0, v2, v3}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShape:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShape:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShape:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandle;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShapeHandle:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandle;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShapeHandle:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandle;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShapeHandle:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandle;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShapeHandle:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandle;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, -0x4ccc9f

    invoke-direct {v0, v3, v4}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShapeHandleDecoration:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x168

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShapeHandleDecoration:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShapeHandleDecoration:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShapeHandleDecoration;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPanelFooter(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3e000000    # 0.125f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    const v1, -0x555523

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->addLogoView(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->addRecommendedByView(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->addParentalView(Landroid/content/Context;)V

    return-void
.end method

.method private addParentalView(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;

    invoke-direct {v1, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mParentalLockView:Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mParentalLockView:Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRecommendedByView(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mRecommendedTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mRecommendedTV:Landroid/widget/TextView;

    const-string v0, "Recommended by KIDOZ"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mRecommendedTV:Landroid/widget/TextView;

    const v0, -0x30304

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mRecommendedTV:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mViewHeight:I

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mViewWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3c1374bc    # 0.009f

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mRecommendedTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mRecommendedTV:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private allowPanelTransparency()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mLayoutOnce:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->setMainLayoutDefs()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->allowPanelTransparency()V

    return-void
.end method

.method private layout(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->addMainPanelShape(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->addPanelFooter(Landroid/content/Context;)V

    return-void
.end method

.method private loadContent()V
    .registers 1

    return-void
.end method

.method private setMainLayoutDefs()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mViewWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mViewHeight:I

    iget-boolean p2, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mLayoutOnce:Z

    if-nez p2, :cond_23

    iget p2, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mViewWidth:I

    if-lez p2, :cond_23

    if-lez p1, :cond_23

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mLayoutOnce:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->layout(Landroid/content/Context;)V

    :cond_23
    return-void
.end method

.method protected setPanelColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mPanelShape:Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelShape;->setPanelColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/new_panel_view/PanelViewWrapper;->mFooterLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x384

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
