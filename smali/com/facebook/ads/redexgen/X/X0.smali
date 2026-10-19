###### Class com.facebook.ads.redexgen.X.X0 (com.facebook.ads.redexgen.X.X0)
.class public final Lcom/facebook/ads/redexgen/X/X0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Bi;


# direct methods
.method public constructor <init>(J)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-nez v0, :cond_15

    sget-object v0, Lcom/facebook/ads/redexgen/X/Bk;->A03:Lcom/facebook/ads/redexgen/X/Bk;

    :goto_d
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/Bi;

    return-void

    :cond_15
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(JJ)V

    goto :goto_d
.end method


# virtual methods
.method public final A6k()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:J

    return-wide v0
.end method

.method public final A7l(J)Lcom/facebook/ads/redexgen/X/Bi;
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Lcom/facebook/ads/redexgen/X/Bi;

    return-object v0
.end method

.method public final A95()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
