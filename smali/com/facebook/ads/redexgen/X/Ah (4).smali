###### Class com.facebook.ads.redexgen.X.C0901Ah (com.facebook.ads.redexgen.X.Ah)
.class public final Lcom/facebook/ads/redexgen/X/Ah;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackParametersCheckpoint"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/9f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9f;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/9f;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:J

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Ah;->A01:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9f;JJLcom/facebook/ads/redexgen/X/Ad;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ah;-><init>(Lcom/facebook/ads/redexgen/X/9f;JJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ah;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ah;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ah;)Lcom/facebook/ads/redexgen/X/9f;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/9f;

    return-object p0
.end method
