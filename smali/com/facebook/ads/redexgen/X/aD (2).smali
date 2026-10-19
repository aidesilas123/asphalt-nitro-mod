###### Class com.facebook.ads.redexgen.X.AbstractC1551aD (com.facebook.ads.redexgen.X.aD)
.class public abstract Lcom/facebook/ads/redexgen/X/aD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RVCacheListener"
.end annotation


# instance fields
.field public final A00:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:Z

    return-void
.end method


# virtual methods
.method public abstract A00()V
.end method

.method public abstract A01(Z)V
.end method

.method public final AAn()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->A00()V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aD;->A01(Z)V

    goto :goto_7
.end method

.method public final AAw()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aD;->A01(Z)V

    return-void
.end method
