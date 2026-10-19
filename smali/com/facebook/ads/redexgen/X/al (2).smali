###### Class com.facebook.ads.redexgen.X.C1585al (com.facebook.ads.redexgen.X.al)
.class public final Lcom/facebook/ads/redexgen/X/al;
.super Lcom/facebook/ads/redexgen/X/0r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ak;->A0E(Lcom/facebook/ads/redexgen/X/8G;Lcom/facebook/ads/redexgen/X/1s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ak;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/ak;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0r;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/ak;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ak;->A03(Lcom/facebook/ads/redexgen/X/ak;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0J()Lcom/facebook/ads/redexgen/X/b3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/ak;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(Lcom/facebook/ads/redexgen/X/ak;)Lcom/facebook/ads/redexgen/X/0w;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_13
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A3h(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/ak;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(Lcom/facebook/ads/redexgen/X/ak;)Lcom/facebook/ads/redexgen/X/0w;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/ak;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(Lcom/facebook/ads/redexgen/X/ak;)Lcom/facebook/ads/redexgen/X/0w;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/ak;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0w;->AAk(Lcom/facebook/ads/redexgen/X/ak;)V

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_13
.end method
