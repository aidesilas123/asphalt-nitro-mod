###### Class com.facebook.ads.redexgen.X.GM (com.facebook.ads.redexgen.X.GM)
.class public final Lcom/facebook/ads/redexgen/X/GM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/MappingTrackSelector$MappedTrackInfo$RendererSupport;
    }
.end annotation


# instance fields
.field public final A00:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A01:I

.field public final A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

.field public final A03:[I

.field public final A04:[I

.field public final A05:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

.field public final A06:[[[I


# direct methods
.method public constructor <init>([I[Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[I[[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GM;->A04:[I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GM;->A05:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/GM;->A06:[[[I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GM;->A03:[I

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/GM;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A00:I

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A01:I

    return v0
.end method

.method public final A01(I)I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A04:[I

    aget v0, v0, p1

    return v0
.end method

.method public final A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A05:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method
