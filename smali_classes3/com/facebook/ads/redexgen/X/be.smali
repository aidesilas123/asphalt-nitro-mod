###### Class com.facebook.ads.redexgen.X.AbstractC1633be (com.facebook.ads.redexgen.X.be)
.class public abstract Lcom/facebook/ads/redexgen/X/be;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bf;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/bf;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/redexgen/X/bf;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bf;->onStart()V

    :cond_7
    return-void
.end method

.method public final A01()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/redexgen/X/bf;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bf;->onStop()V

    :cond_7
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/redexgen/X/bf;

    return-void
.end method
