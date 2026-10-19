###### Class com.kidoz.sdk.api.ui_views.CloseButtonView (com.kidoz.sdk.api.ui_views.CloseButtonView)
.class public Lcom/kidoz/sdk/api/ui_views/CloseButtonView;
.super Landroid/widget/RelativeLayout;
.source "CloseButtonView.java"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->mColor:I

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->mColor:I

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2, p2}, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->initView(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->mColor:I

    iput p4, p0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->mColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->initView(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->mColor:I

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2, p2}, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->initView(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->mColor:I

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2, p2}, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->initView(Landroid/content/Context;II)V

    return-void
.end method

.method private initView(Landroid/content/Context;II)V
    .registers 6

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    if-ne p3, v0, :cond_1b

    :cond_5
    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3fadb22d0e560419L    # 0.058

    mul-double p1, p1, v0

    double-to-int p2, p1

    move p3, p2

    :cond_1b
    new-instance p1, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;->mColor:I

    invoke-direct {p1, v0, v1}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/XViewDrawable;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
