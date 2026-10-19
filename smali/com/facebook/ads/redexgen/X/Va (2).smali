###### Class com.facebook.ads.redexgen.X.C1413Va (com.facebook.ads.redexgen.X.Va)
.class public final Lcom/facebook/ads/redexgen/X/Va;
.super Lcom/facebook/ads/redexgen/X/FV;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/FV;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/Va;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    iput p11, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:I

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Va;)I
    .registers 4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/Va;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:I

    if-ge v1, v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    if-le v1, v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/facebook/ads/redexgen/X/Va;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Va;->A00(Lcom/facebook/ads/redexgen/X/Va;)I

    move-result v0

    return v0
.end method
