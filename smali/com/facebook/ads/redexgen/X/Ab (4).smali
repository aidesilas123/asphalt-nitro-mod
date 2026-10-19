###### Class com.facebook.ads.redexgen.X.C0895Ab (com.facebook.ads.redexgen.X.Ab)
.class public final Lcom/facebook/ads/redexgen/X/Ab;
.super Lcom/facebook/ads/redexgen/X/ZC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ai;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Ai;

.field public A04:[I

.field public final A05:Lcom/facebook/ads/redexgen/X/YA;

.field public final A06:Lcom/facebook/ads/redexgen/X/P5;

.field public final A07:Lcom/facebook/ads/redexgen/X/P6;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bHvO3zM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7z8VpEP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iw2Y0c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LME8njBPiXs011hhslbtp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9K0lNzbR5X2b0vS5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Pt0EnZUFnGQLsNks8pQcEgn0FivkNzUh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "t6anbflpJj2CGicCnIMdWTRCydsD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "D9TL9YTSSd0lWzGeUvgWfvwaUF0YdAOx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/P6;Lcom/facebook/ads/redexgen/X/P5;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZC;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A02:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A00:F

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ab;->A05:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ab;->A07:Lcom/facebook/ads/redexgen/X/P6;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ab;->A06:Lcom/facebook/ads/redexgen/X/P5;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(Lcom/facebook/ads/redexgen/X/Ab;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A03:Lcom/facebook/ads/redexgen/X/Ai;

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ab;)F
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A00:F

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ab;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A02:I

    return p0
.end method


# virtual methods
.method public final A1J(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;II)V
    .registers 21

    move-object/from16 v9, p0

    move-object v9, v9

    move/from16 v3, p3

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    move/from16 v1, p4

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v2, p2

    if-ne v8, v5, :cond_1c

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/ZC;->A2A()I

    move-result v0

    if-eq v0, v6, :cond_24

    :cond_1c
    if-ne v7, v5, :cond_2a

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/ZC;->A2A()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_24
    move-object/from16 v0, p1

    invoke-super {v9, v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/4c;->A1J(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;II)V

    return-void

    :cond_2a
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Ab;->A06:Lcom/facebook/ads/redexgen/X/P5;

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ab;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A01(I)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_55

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Ab;->A06:Lcom/facebook/ads/redexgen/X/P5;

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ab;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A02(I)[I

    move-result-object v3

    :cond_45
    :goto_45
    if-ne v8, v5, :cond_49

    aput v15, v3, v4

    :cond_49
    if-ne v7, v5, :cond_4d

    aput v14, v3, v6

    :cond_4d
    aget v1, v3, v4

    aget v0, v3, v6

    invoke-virtual {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A13(II)V

    return-void

    :cond_55
    filled-new-array {v4, v4}, [I

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    if-lt v0, v6, :cond_45

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-lez v0, :cond_115

    const/4 v11, 0x1

    :goto_66
    const/4 v10, 0x0

    :goto_67
    if-ge v10, v11, :cond_89

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/ZC;->A1q(I)Landroid/view/View;

    move-result-object v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_80

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_80
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    const-string v1, "FajaHWp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v12, :cond_94

    :cond_89
    iget v1, v9, Lcom/facebook/ads/redexgen/X/Ab;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_45

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ab;->A06:Lcom/facebook/ads/redexgen/X/P5;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/P5;->A00(I[I)V

    goto :goto_45

    :cond_94
    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/Ab;->A07:Lcom/facebook/ads/redexgen/X/P6;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v12, v1, v0}, Lcom/facebook/ads/redexgen/X/P6;->A00(Landroid/view/View;II)[I

    move-result-object v0

    iput-object v0, v9, Lcom/facebook/ads/redexgen/X/Ab;->A04:[I

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/ZC;->A2A()I

    move-result v0

    if-nez v0, :cond_d9

    aget v2, v3, v4

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Ab;->A04:[I

    aget v0, v1, v4

    add-int/2addr v2, v0

    aput v2, v3, v4

    if-nez v10, :cond_d6

    aget v12, v1, v6

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v0

    add-int/2addr v12, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_11b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    const-string v1, "o1L5u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    add-int/2addr v12, v0

    aput v12, v3, v6

    :cond_d6
    :goto_d6
    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    :cond_d9
    aget v13, v3, v6

    iget-object v12, v9, Lcom/facebook/ads/redexgen/X/Ab;->A04:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_106

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    const-string v1, "6nCDHSOFLCCkeDdRDThHGlolS6KLs45E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget v0, v12, v6

    add-int/2addr v13, v0

    aput v13, v3, v6

    if-nez v10, :cond_d6

    :goto_f7
    aget v1, v12, v4

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    aput v1, v3, v4

    goto :goto_d6

    :cond_106
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ab;->A08:[Ljava/lang/String;

    const-string v1, "KFvpvLkhCjqU9hzA1pvFB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aget v0, v12, v6

    add-int/2addr v13, v0

    aput v13, v3, v6

    if-nez v10, :cond_d6

    goto :goto_f7

    :cond_115
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v11

    goto/16 :goto_66

    :cond_11b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1t(I)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A02:I

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A2F(II)V

    return-void
.end method

.method public final A21(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4r;I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A03:Lcom/facebook/ads/redexgen/X/Ai;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4p;->A0A(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A03:Lcom/facebook/ads/redexgen/X/Ai;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A1L(Lcom/facebook/ads/redexgen/X/4p;)V

    return-void
.end method

.method public final A2K(D)V
    .registers 6

    const-wide/16 v1, 0x0

    cmpg-double v0, p1, v1

    if-gtz v0, :cond_8

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_8
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    div-double/2addr v1, p1

    double-to-float v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A00:F

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ab;->A05:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(Lcom/facebook/ads/redexgen/X/Ab;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ab;->A03:Lcom/facebook/ads/redexgen/X/Ai;

    return-void
.end method

.method public final A2L(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ab;->A01:I

    return-void
.end method

.method public final A2M(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ab;->A02:I

    return-void
.end method
