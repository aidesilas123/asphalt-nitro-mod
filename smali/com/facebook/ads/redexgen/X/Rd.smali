###### Class com.facebook.ads.redexgen.X.C1313Rd (com.facebook.ads.redexgen.X.Rd)
.class public final Lcom/facebook/ads/redexgen/X/Rd;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PY;


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public A01:Landroid/widget/TextView;

.field public A02:Landroid/widget/TextView;

.field public A03:Landroid/widget/TextView;

.field public final A04:Lcom/facebook/ads/MediaView;

.field public final A05:Lcom/facebook/ads/NativeAd;

.field public final A06:Lcom/facebook/ads/redexgen/X/PZ;

.field public final A07:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LrUXeZd5oXG5wJ7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S6ePTdxfK6c7yhvbHMQjZqIgQsLDz3QO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YqVXoEdDoNpK3nL0El5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Exhg7LXIw6HgSAmcccR052cOKtX3WF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "59F20xOEewuTmZzPatOKMeF6XI6ZvB1j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IRBrDKvf2o0dBHWjf99N02m12yrR0Bg7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KZ90h8EmVWfLUNKv0pT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A08:[Ljava/lang/String;

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rd;->A0E:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rd;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x43af0000    # 350.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rd;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x432f0000    # 175.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/J6;Lcom/facebook/ads/redexgen/X/J7;Lcom/facebook/ads/redexgen/X/Ni;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .registers 19

    move-object v6, p1

    invoke-direct {p0, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Ljava/util/ArrayList;

    move-object v7, p2

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    move-object/from16 v3, p6

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    new-instance v5, Lcom/facebook/ads/redexgen/X/PZ;

    move-object v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/PZ;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/J6;Lcom/facebook/ads/redexgen/X/Ni;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Lcom/facebook/ads/redexgen/X/PZ;

    sget v1, Lcom/facebook/ads/redexgen/X/Rd;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rd;->A0E:I

    invoke-virtual {v5, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->setPadding(IIII)V

    const/4 v4, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/Rd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/J7;->A09:Lcom/facebook/ads/redexgen/X/J7;

    if-eq p4, v0, :cond_37

    sget-object v0, Lcom/facebook/ads/redexgen/X/J7;->A0B:Lcom/facebook/ads/redexgen/X/J7;

    if-ne p4, v0, :cond_3a

    :cond_37
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/Rd;->A07(Lcom/facebook/ads/redexgen/X/J6;)V

    :cond_3a
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Rd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/J7;->A0B:Lcom/facebook/ads/redexgen/X/J7;

    if-ne p4, v0, :cond_4e

    invoke-virtual {v7}, Lcom/facebook/ads/NativeAd;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    if-eq v1, v0, :cond_57

    :cond_4e
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/Rd;->A06(Lcom/facebook/ads/redexgen/X/J6;)V

    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/Rd;->A04(Lcom/facebook/ads/redexgen/X/J6;)V

    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/Rd;->A05(Lcom/facebook/ads/redexgen/X/J6;)V

    :cond_57
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private A00()I
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    :goto_11
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_97

    sget-object v3, Lcom/facebook/ads/redexgen/X/Rd;->A08:[Ljava/lang/String;

    const-string v1, "SrhbzBCrZmwJCsE1GN19GBhRpshhKBl4"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "lZXGEU0s5y97LRskCQS4IC0Q6rEMlB8o"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    if-eqz v4, :cond_8d

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    :goto_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    :goto_4b
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_91

    sget-object v3, Lcom/facebook/ads/redexgen/X/Rd;->A08:[Ljava/lang/String;

    const-string v1, "nRuc5lutSXPKh9f7kKzdW2kIhLu3nB9m"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "FuxAmHJZMOFMUG38wB3yXnFuBZuRMBRE"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget v0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:I

    add-int/2addr v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Rd;->A0D:I

    add-int/2addr v2, v0

    :cond_7b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rd;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PZ;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v7

    sub-int/2addr v1, v6

    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    return v1

    :cond_8b
    const/4 v5, 0x0

    goto :goto_4b

    :cond_8d
    const/4 v6, 0x0

    goto :goto_3b

    :cond_8f
    const/4 v7, 0x0

    goto :goto_11

    :cond_91
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_97
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_16
    return-void
.end method

.method private A02(I)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    sget v0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:I

    const/4 v2, 0x0

    if-le p1, v0, :cond_25

    const/4 v0, 0x0

    :goto_8
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0N(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:I

    if-le p1, v0, :cond_22

    const/4 v0, 0x0

    :goto_12
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0N(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Rd;->A09:I

    if-le p1, v0, :cond_1f

    :goto_1b
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LV;->A0N(Landroid/view/View;I)V

    return-void

    :cond_1f
    const/16 v2, 0x8

    goto :goto_1b

    :cond_22
    const/16 v0, 0x8

    goto :goto_12

    :cond_25
    const/16 v0, 0x8

    goto :goto_8
.end method

.method public static varargs A03(II[Landroid/widget/TextView;)V
    .registers 9

    array-length v5, p2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_33

    aget-object v3, p2, v4

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/LV;->A04(Landroid/widget/TextView;I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v3, p0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr v0, v2

    sub-int/2addr p1, v0

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_33
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/J6;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/J6;->A06(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    sget v1, Lcom/facebook/ads/redexgen/X/Rd;->A0C:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Rd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/J6;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->hasCallToAction()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/J6;->A05(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    sget v3, Lcom/facebook/ads/redexgen/X/Rd;->A0D:I

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Rd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/J6;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/J6;->A07(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    sget v2, Lcom/facebook/ads/redexgen/X/Rd;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Rd;->A0D:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Rd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_47
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/J6;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/J6;->A06(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    sget v2, Lcom/facebook/ads/redexgen/X/Rd;->A0C:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/Rd;->A0D:I

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Rd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_47
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .registers 10

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/PZ;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/PZ;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PZ;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    add-int v0, p3, v2

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    add-int/2addr p3, v2

    :cond_29
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1}, Lcom/facebook/ads/MediaView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/facebook/ads/MediaView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    :cond_4d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_76

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_8a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A08:[Ljava/lang/String;

    const-string v1, "gjv6mmFqHT0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v3, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_76
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:Landroid/widget/TextView;

    if-eqz v2, :cond_89

    sget v1, Lcom/facebook/ads/redexgen/X/Rd;->A0C:I

    add-int/2addr p2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    sub-int/2addr v0, v1

    sub-int/2addr p4, v1

    sub-int/2addr p5, v1

    invoke-virtual {v2, p2, v0, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    :cond_89
    return-void

    :cond_8a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onMeasure(II)V
    .registers 7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A02(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A01()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A00()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaWidth()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaHeight()I

    move-result v0

    if-nez v0, :cond_46

    :cond_21
    move v0, v2

    :goto_22
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lcom/facebook/ads/MediaView;->measure(II)V

    if-ge v0, v2, :cond_45

    sub-int/2addr v2, v0

    const/4 v0, 0x3

    new-array v3, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Landroid/widget/TextView;

    aput-object v0, v3, v1

    invoke-static {p1, v2, v3}, Lcom/facebook/ads/redexgen/X/Rd;->A03(II[Landroid/widget/TextView;)V

    :cond_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0N()Z

    move-result v0

    if-eqz v0, :cond_56

    move v0, v2

    goto :goto_22

    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaHeight()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_22
.end method

.method public final unregisterView()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    return-void
.end method
