###### Class com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardView (com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardView)
.class public Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;
.super Landroid/widget/FrameLayout;
.source "KidozCardView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;


# static fields
.field private static final IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;


# instance fields
.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    goto :goto_21

    :cond_e
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1a

    new-instance v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    goto :goto_21

    :cond_1a
    new-instance v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    :goto_21
    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mCompatPadding:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mPreventCornerOverlap:Z

    iget-object p3, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    iput p2, p3, Landroid/graphics/Rect;->left:I

    iput p2, p3, Landroid/graphics/Rect;->top:I

    iput p2, p3, Landroid/graphics/Rect;->right:I

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->initialize(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;Landroid/content/Context;IFFF)V

    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->getElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->getMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->getRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 9

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    instance-of v1, v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewApi21;

    if-nez v1, :cond_4c

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_13

    if-eq v1, v2, :cond_13

    goto :goto_29

    :cond_13
    invoke-interface {v0, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->getMinWidth(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_32

    if-eq v1, v2, :cond_32

    goto :goto_48

    :cond_32
    invoke-interface {v0, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->getMinHeight(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_48
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_4f

    :cond_4c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_4f
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->setBackgroundColor(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;I)V

    return-void
.end method

.method public setCardElevation(F)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->setElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {p1, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->updatePadding(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->setMaxElevation(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mPreventCornerOverlap:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mPreventCornerOverlap:Z

    sget-object p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {p1, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->onPreventCornerOverlapChanged(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method

.method public setRadius(F)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->setRadius(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;F)V

    return-void
.end method

.method public setShadowPadding(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mCompatPadding:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->mCompatPadding:Z

    sget-object p1, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->IMPL:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;

    invoke-interface {p1, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewImpl;->onCompatPaddingChanged(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewDelegate;)V

    return-void
.end method
