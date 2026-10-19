###### Class com.facebook.ads.redexgen.X.C0917Ax (com.facebook.ads.redexgen.X.Ax)
.class public final Lcom/facebook/ads/redexgen/X/Ax;
.super Lcom/facebook/ads/redexgen/X/VO;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/FixedTrackSelection$Factory;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;I)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;IILjava/lang/Object;)V
    .registers 6

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/VO;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)V

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A7n()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
