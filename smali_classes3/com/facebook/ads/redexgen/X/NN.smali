###### Class com.facebook.ads.redexgen.X.NN (com.facebook.ads.redexgen.X.NN)
.class public final Lcom/facebook/ads/redexgen/X/NN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CtaAsCreativeInnerSquareClickListener"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:Landroid/view/View$OnClickListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5NPsaGxTntAZUh5vvPpYLifVDwpYE9gO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yAdF8jFrPkVudWekKgJT40sKzU7M"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P84QernMh58Oht"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HVjKxCVNtxzSBN1ofjZs3kMRuF4TzLwS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c9t8G7uI59pglLVDHXf1Cg7BVtBq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zkFcC9XFE44gS7Ii7sdayH8FvB1qc1Nx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mQLKSBYKXRgBaCP29rEHxwq0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ifKB8OntsRJFcWFaLpGEPIeHfTRm85bo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NN;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NN;->A02:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final A00(FF)V
    .registers 3

    iput p1, p0, Lcom/facebook/ads/redexgen/X/NN;->A00:F

    iput p2, p0, Lcom/facebook/ads/redexgen/X/NN;->A01:F

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :try_start_8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v0, v4, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    if-eq v4, v6, :cond_82

    if-le v4, v6, :cond_4e

    iget v7, v3, Lcom/facebook/ads/redexgen/X/NN;->A00:F

    int-to-float v0, v5

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_4e
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_88

    sub-int v8, v4, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/NN;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3d
    sget-object v2, Lcom/facebook/ads/redexgen/X/NN;->A03:[Ljava/lang/String;

    const-string v1, "IaFg43gDfmav4cpS3tfI5ukrEyaV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "YCQU4nAsEaYrX5eT9av2YKK9p1Sz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    int-to-float v0, v8

    cmpg-float v0, v7, v0

    if-lez v0, :cond_82

    :cond_4e
    if-le v6, v4, :cond_87

    :try_start_50
    iget v4, v3, Lcom/facebook/ads/redexgen/X/NN;->A01:F
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_88

    int-to-float v0, v5

    cmpl-float v7, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NN;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_73

    sget-object v2, Lcom/facebook/ads/redexgen/X/NN;->A03:[Ljava/lang/String;

    const-string v1, "DOfOMptgN0kFoREvgd3Bxl9Eys2o9Nt4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ltz v7, :cond_87

    :goto_6c
    sub-int/2addr v6, v5

    int-to-float v0, v6

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_87

    goto :goto_82

    :cond_73
    sget-object v2, Lcom/facebook/ads/redexgen/X/NN;->A03:[Ljava/lang/String;

    const-string v1, "SME7OxnBFewA4wdZ4tQVNxKrxX7o"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "dj4w34xtzstsWLpNapZgfCztNtRS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ltz v7, :cond_87

    goto :goto_6c

    :cond_82
    :goto_82
    :try_start_82
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/NN;->A02:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_87
    return-void
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
