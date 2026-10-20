###### Class com.facebook.ads.redexgen.X.R2 (com.facebook.ads.redexgen.X.R2)
.class public final Lcom/facebook/ads/redexgen/X/R2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A7v()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A00:I

    return-void
.end method


# virtual methods
.method public final A00()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A00:I

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
