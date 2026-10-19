###### Class com.facebook.ads.redexgen.X.CC (com.facebook.ads.redexgen.X.CC)
.class public final Lcom/facebook/ads/redexgen/X/CC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/We;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/CC;->A01:J

    iput p3, p0, Lcom/facebook/ads/redexgen/X/CC;->A00:I

    return-void
.end method
