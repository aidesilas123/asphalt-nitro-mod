###### Class com.facebook.ads.redexgen.X.QH (com.facebook.ads.redexgen.X.QH)
.class public final Lcom/facebook/ads/redexgen/X/QH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Format"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/QH;->A01:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/QH;->A00:I

    return-void
.end method
