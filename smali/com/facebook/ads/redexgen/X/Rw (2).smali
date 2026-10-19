###### Class com.facebook.ads.redexgen.X.C1332Rw (com.facebook.ads.redexgen.X.Rw)
.class public final Lcom/facebook/ads/redexgen/X/Rw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5H;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7I;->A9C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5J;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5J;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7I;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7I;Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/redexgen/X/7I;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8k()Z
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/redexgen/X/7I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Td;->A0Z()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/redexgen/X/7I;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A0Y(Lcom/facebook/ads/redexgen/X/5J;)V

    return v2

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/redexgen/X/7I;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7I;->A0J(Lcom/facebook/ads/redexgen/X/7I;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/redexgen/X/7I;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7I;->A0K(Lcom/facebook/ads/redexgen/X/7I;)Z

    move-result v0

    return v0
.end method
