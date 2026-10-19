###### Class com.facebook.ads.redexgen.X.C1357Sv (com.facebook.ads.redexgen.X.Sv)
.class public final Lcom/facebook/ads/redexgen/X/Sv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Km;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9D;->A06()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9D;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAv()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A0A(Lcom/facebook/ads/redexgen/X/9D;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A00(Lcom/facebook/ads/redexgen/X/9D;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A00(Lcom/facebook/ads/redexgen/X/9D;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9D;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    :cond_1d
    return-void
.end method

.method public final ACZ(F)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A00(Lcom/facebook/ads/redexgen/X/9D;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdInfo()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0G()Lcom/facebook/ads/redexgen/X/1O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1O;->A00()J

    move-result-wide v1

    long-to-float v0, v1

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sv;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A00(Lcom/facebook/ads/redexgen/X/9D;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setProgressImmediate(F)V

    :cond_27
    return-void
.end method
