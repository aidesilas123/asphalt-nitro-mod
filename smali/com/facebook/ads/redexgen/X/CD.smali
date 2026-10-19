###### Class com.facebook.ads.redexgen.X.CD (com.facebook.ads.redexgen.X.CD)
.class public final Lcom/facebook/ads/redexgen/X/CD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/We;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/C7;

.field public A05:Lcom/facebook/ads/redexgen/X/CM;

.field public final A06:Lcom/facebook/ads/redexgen/X/Bm;

.field public final A07:Lcom/facebook/ads/redexgen/X/CO;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A09:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VV6EzFzDFGyxh7278LhkWh1nAnO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RIeoUtwh2k0Lp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KiUc8yTTjWF6Y9v"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6tIA8m5WM2YSgVpCAFtgKZOFEkm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "A00z45"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ej2X1eDppCFfwh6aI5B812e88v7VHLnd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "obdd9bh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CD;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bm;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CD;->A06:Lcom/facebook/ads/redexgen/X/Bm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A08:Lcom/facebook/ads/redexgen/X/Hh;

    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/CN;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A07:Lcom/facebook/ads/redexgen/X/C7;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/C7;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A08:Lcom/facebook/ads/redexgen/X/CN;

    if-eqz v0, :cond_25

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    sget-object v1, Lcom/facebook/ads/redexgen/X/CD;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2c

    sget-object v2, Lcom/facebook/ads/redexgen/X/CD;->A0A:[Ljava/lang/String;

    const-string v1, "yH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/CO;->A08:Lcom/facebook/ads/redexgen/X/CN;

    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A05:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/CM;->A00(I)Lcom/facebook/ads/redexgen/X/CN;

    move-result-object v0

    goto :goto_24

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A0A:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CD;->A00()Lcom/facebook/ads/redexgen/X/CN;

    move-result-object v1

    iget v0, v1, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    if-eqz v0, :cond_18

    iget v0, v1, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CO;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A01:I

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_2b

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    :cond_2b
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/CD;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CD;->A01()V

    return-void
.end method


# virtual methods
.method public final A03()I
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A0A:Z

    const/4 v2, 0x0

    if-nez v0, :cond_8

    return v2

    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CD;->A00()Lcom/facebook/ads/redexgen/X/CN;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/CD;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object v3, Lcom/facebook/ads/redexgen/X/CD;->A0A:[Ljava/lang/String;

    const-string v1, "c"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    :goto_2f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CO;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A01:I

    aget-boolean v4, v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    if-eqz v4, :cond_5a

    const/16 v0, 0x80

    :goto_3f
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CD;->A06:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CD;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A06:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v5, v3}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    if-nez v4, :cond_68

    add-int/lit8 v0, v3, 0x1

    return v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_3f

    :cond_5c
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/CN;->A04:[B

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CD;->A08:Lcom/facebook/ads/redexgen/X/Hh;

    array-length v0, v3

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0b([BI)V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/CD;->A08:Lcom/facebook/ads/redexgen/X/Hh;

    array-length v3, v3

    goto :goto_2f

    :cond_68
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v1

    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    mul-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A06:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final A04()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CO;->A01()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A03:I

    return-void
.end method

.method public final A05(J)V
    .registers 9

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9E;->A01(J)J

    move-result-wide v4

    iget v3, p0, Lcom/facebook/ads/redexgen/X/CD;->A01:I

    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A00:I

    if-ge v3, v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/CO;->A00(I)J

    move-result-wide v1

    cmp-long v0, v1, v4

    if-gez v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A0I:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_20

    iput v3, p0, Lcom/facebook/ads/redexgen/X/CD;->A03:I

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_23
    return-void
.end method

.method public final A06(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CD;->A05:Lcom/facebook/ads/redexgen/X/CM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A07:Lcom/facebook/ads/redexgen/X/C7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/C7;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A00(I)Lcom/facebook/ads/redexgen/X/CN;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/CN;->A02:Ljava/lang/String;

    :goto_10
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CD;->A06:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A05:Lcom/facebook/ads/redexgen/X/CM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CM;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A02(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0I(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    return-void

    :cond_22
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/C7;)V
    .registers 5

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A05:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A04:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CD;->A06:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/CM;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CD;->A04()V

    return-void
.end method

.method public final A08()Z
    .registers 5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A01:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A01:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/CD;->A00:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/ads/redexgen/X/CD;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A07:Lcom/facebook/ads/redexgen/X/CO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CO;->A0E:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CD;->A02:I

    aget v0, v0, v1

    if-ne v2, v0, :cond_1c

    add-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/ads/redexgen/X/CD;->A02:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CD;->A00:I

    return v0

    :cond_1c
    return v3
.end method
