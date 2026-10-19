###### Class com.facebook.ads.redexgen.X.QL (com.facebook.ads.redexgen.X.QL)
.class public final Lcom/facebook/ads/redexgen/X/QL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadConfig"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/QM;

.field public final A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QM;JZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QL;->A01:Lcom/facebook/ads/redexgen/X/QM;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:J

    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/QL;->A02:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/QM;JZLcom/facebook/ads/redexgen/X/QK;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/QL;-><init>(Lcom/facebook/ads/redexgen/X/QM;JZ)V

    return-void
.end method
