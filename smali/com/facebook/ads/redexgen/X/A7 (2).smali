###### Class com.facebook.ads.redexgen.X.A7 (com.facebook.ads.redexgen.X.A7)
.class public final Lcom/facebook/ads/redexgen/X/A7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/A8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/audio/Ac3Util$SyncFrameInfo$StreamType;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A7;->A05:Ljava/lang/String;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/A7;->A04:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/A7;->A03:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/A7;->A01:I

    iput p6, p0, Lcom/facebook/ads/redexgen/X/A7;->A02:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIILcom/facebook/ads/redexgen/X/A5;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/A7;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
