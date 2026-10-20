###### Class com.facebook.ads.redexgen.X.MQ (com.facebook.ads.redexgen.X.MQ)
.class public final Lcom/facebook/ads/redexgen/X/MQ;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MP;
    }
.end annotation


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/2G;

.field public final A03:Lcom/facebook/ads/redexgen/X/YA;

.field public final A04:Lcom/facebook/ads/redexgen/X/MT;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v0, v3

    float-to-int v2, v0

    sput v2, Lcom/facebook/ads/redexgen/X/MQ;->A09:I

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A0A:I

    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A0D:I

    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A08:I

    sub-int/2addr v2, v0

    sput v2, Lcom/facebook/ads/redexgen/X/MQ;->A07:I

    const/high16 v1, 0x42960000    # 75.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A0E:I

    const/high16 v1, 0x41c80000    # 25.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A0B:I

    const/high16 v1, 0x42340000    # 45.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A0F:I

    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MQ;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MP;)V
    .registers 12

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A01(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A01(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2H;->A00(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/2G;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A02:Lcom/facebook/ads/redexgen/X/2G;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A03(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A04:Lcom/facebook/ads/redexgen/X/MT;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A09(Lcom/facebook/ads/redexgen/X/MP;)Z

    move-result v0

    if-eqz v0, :cond_9f

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A0E:I

    :goto_25
    iput v0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A01:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A09(Lcom/facebook/ads/redexgen/X/MP;)Z

    move-result v0

    if-eqz v0, :cond_9c

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A0B:I

    :goto_2f
    iput v0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A00:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A0A(Lcom/facebook/ads/redexgen/X/MP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A05:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MQ;->setFocusable(Z)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MQ;->A01(Lcom/facebook/ads/redexgen/X/MP;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MQ;->A00(Lcom/facebook/ads/redexgen/X/MP;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getFooterView()Landroid/view/View;

    move-result-object v5

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    const/4 v9, -0x1

    const/4 v8, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x3

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A09:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v7, v4}, Lcom/facebook/ads/redexgen/X/MQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/MQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/MQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A0B(Lcom/facebook/ads/redexgen/X/MP;)Z

    move-result v0

    if-eqz v0, :cond_99

    :goto_95
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_99
    const/16 v1, 0x8

    goto :goto_95

    :cond_9c
    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A0C:I

    goto :goto_2f

    :cond_9f
    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A0F:I

    goto :goto_25
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MN;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MQ;-><init>(Lcom/facebook/ads/redexgen/X/MP;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/MP;)Landroid/view/View;
    .registers 16

    move-object v8, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v0, v8, Lcom/facebook/ads/redexgen/X/MQ;->A00:I

    invoke-virtual {v12, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A02(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/Ld;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01(Lcom/facebook/ads/redexgen/X/Ld;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget v0, v8, Lcom/facebook/ads/redexgen/X/MQ;->A01:I

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A00(Lcom/facebook/ads/redexgen/X/MP;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {v12, v1}, Lcom/facebook/ads/redexgen/X/LV;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x11

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v6, Lcom/facebook/ads/redexgen/X/MQ;->A09:I

    const/4 v9, 0x0

    invoke-virtual {v11, v6, v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x14

    invoke-static {v5, v7, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0X(Landroid/widget/TextView;ZI)V

    const v0, -0xe3e1df

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A04(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    invoke-static {v2, v9, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0X(Landroid/widget/TextView;ZI)V

    const v0, -0x9f9890

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A05(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v6, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A08(Lcom/facebook/ads/redexgen/X/MP;)Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A06(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/MQ;->A03:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    sget v3, Lcom/facebook/ads/redexgen/X/MQ;->A0F:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A0A:I

    invoke-virtual {v2, v9, v9, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/Ni;->setFullCircleCorners(Z)V

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/MQ;->A03:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/T8;->A05(II)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A06(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A07(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f1
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/MQ;->A03:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/MV;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/MV;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A07(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0E:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ld;)V

    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/MV;->setSelected(Z)V

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_110
    return-object v6
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/MP;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MP;->A0C(Lcom/facebook/ads/redexgen/X/MP;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A08:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01(Lcom/facebook/ads/redexgen/X/Ld;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/MN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MN;-><init>(Lcom/facebook/ads/redexgen/X/MQ;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A0D:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_46
    return-object v3
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/MQ;)Lcom/facebook/ads/redexgen/X/MT;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A04:Lcom/facebook/ads/redexgen/X/MT;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/MQ;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A05:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0T:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01(Lcom/facebook/ads/redexgen/X/Ld;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v1, -0xca871b

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A06:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    const/4 v3, 0x0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0X(Landroid/widget/TextView;ZI)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/MQ;->A0A:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MQ;->A02:Lcom/facebook/ads/redexgen/X/2G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2G;->A0J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/MO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MO;-><init>(Lcom/facebook/ads/redexgen/X/MQ;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
