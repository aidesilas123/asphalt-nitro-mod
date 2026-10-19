###### Class com.facebook.ads.redexgen.X.C4 (com.facebook.ads.redexgen.X.C4)
.class public final Lcom/facebook/ads/redexgen/X/C4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StsdData"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A03:[Lcom/facebook/ads/redexgen/X/CN;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/facebook/ads/redexgen/X/CN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C4;->A03:[Lcom/facebook/ads/redexgen/X/CN;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C4;->A01:I

    return-void
.end method
