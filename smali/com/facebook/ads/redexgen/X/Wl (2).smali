###### Class com.facebook.ads.redexgen.X.C1447Wl (com.facebook.ads.redexgen.X.Wl)
.class public final Lcom/facebook/ads/redexgen/X/Wl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wm;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/Bd;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Bc;

.field public A05:Lcom/facebook/ads/redexgen/X/Bm;

.field public A06:Lcom/facebook/ads/redexgen/X/Wm;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

.field public final A08:I

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/Be;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Bf;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Bg;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FKupPKXcsIkycQ3l5ptAH5wluEqc6YoI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ogqWAOna8QODFLIqijT7vOYnhApvYyU7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UAOUtvFDqNmRNLgZ1GU6DrNnbPesxUgh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z4WGtVpeHmr0jWMfeyoB2cmDzFByDj9w"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gdGWUcFUabEj8aTRXEAi5amp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tmhvTid"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WDNv6R6VbALBmvSk6DCmHF7NFi0i9puO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wl;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wn;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A0G:Lcom/facebook/ads/redexgen/X/Bd;

    const/16 v2, 0x20

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Wl;->A0J:I

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Wl;->A0H:I

    const/16 v2, 0x1c

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Wl;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Wl;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A08:I

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A09:J

    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bg;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Be;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Be;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0A:Lcom/facebook/ads/redexgen/X/Be;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bf;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0B:Lcom/facebook/ads/redexgen/X/Bf;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Bb;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:I

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_83

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v0, 0x4

    invoke-interface {p1, v1, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/Bb;->ADm([BIIZ)Z

    move-result v0

    if-nez v0, :cond_16

    return v5

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wl;->A06(IJ)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Bg;->A00(I)I

    move-result v0

    if-ne v0, v5, :cond_36

    :cond_30
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:I

    return v4

    :cond_36
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Bg;->A04(ILcom/facebook/ads/redexgen/X/Bg;)Z

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v9

    if-nez v2, :cond_7d

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Wl;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v3, v2

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x32

    if-eq v3, v2, :cond_be

    sget-object v7, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v3, "uwsYCHPiCgNXlhDD9rc7dT19"

    const/4 v2, 0x5

    aput-object v3, v7, v2

    invoke-interface {v8, v0, v1}, Lcom/facebook/ads/redexgen/X/Wm;->A7z(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A09:J

    cmp-long v2, v0, v9

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    const-wide/16 v0, 0x0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wm;->A7z(J)J

    move-result-wide v7

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A09:J

    sub-long/2addr v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:J

    :cond_7d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:I

    :cond_83
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:I

    invoke-interface {v1, p1, v0, v6}, Lcom/facebook/ads/redexgen/X/Bm;->AEq(Lcom/facebook/ads/redexgen/X/Bb;IZ)I

    move-result v1

    if-ne v1, v5, :cond_8e

    return v5

    :cond_8e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:I

    if-lez v0, :cond_96

    return v4

    :cond_96
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A03:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A03:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    add-long/2addr v6, v2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Wl;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A03:J

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:I

    return v4

    :cond_be
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hh;I)I
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v1

    add-int/lit8 v0, p1, 0x4

    if-lt v1, v0, :cond_3e

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_38

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v1, "RZ9mFeyNnV0sPgPCsPCuasZg37Uzdp17"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fK9CAyTZYj28knSP6u8xHPIK1qnXYcxa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A0J:I

    if-eq v3, v0, :cond_37

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A0H:I

    if-ne v3, v0, :cond_3e

    :cond_37
    return v3

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v1

    const/16 v0, 0x28

    if-lt v1, v0, :cond_54

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A0I:I

    if-ne v1, v0, :cond_54

    return v0

    :cond_54
    const/4 v0, 0x0

    return v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Bb;)Lcom/facebook/ads/redexgen/X/DJ;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Bg;->A04(ILcom/facebook/ads/redexgen/X/Bg;)Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/DJ;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7B()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DJ;-><init>(JJLcom/facebook/ads/redexgen/X/Bg;)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Bb;)Lcom/facebook/ads/redexgen/X/Wm;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    new-instance v9, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A05:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    const/16 v2, 0x15

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Bg;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v4, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v1, "1a7oiXE"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "rh"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    if-eq v6, v5, :cond_4b

    const/16 v2, 0x24

    goto :goto_4b

    :cond_45
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A01:I

    if-eq v0, v5, :cond_a7

    :cond_4b
    :goto_4b
    invoke-static {v9, v2}, Lcom/facebook/ads/redexgen/X/Wl;->A01(Lcom/facebook/ads/redexgen/X/Hh;I)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A0J:I

    if-eq v1, v0, :cond_57

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A0H:I

    if-ne v1, v0, :cond_aa

    :cond_57
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7B()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/D2;->A01(JJLcom/facebook/ads/redexgen/X/Bg;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/D2;

    move-result-object v4

    if-eqz v4, :cond_8f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0A:Lcom/facebook/ads/redexgen/X/Be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-nez v0, :cond_8f

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    add-int/lit16 v0, v2, 0x8d

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v0, 0x3

    invoke-interface {p1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0A:Lcom/facebook/ads/redexgen/X/Be;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Be;->A04(I)Z

    :cond_8f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    if-eqz v4, :cond_c3

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/D2;->A95()Z

    move-result v0

    if-nez v0, :cond_c3

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A0H:I

    if-ne v1, v0, :cond_c3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wl;->A02(Lcom/facebook/ads/redexgen/X/Bb;)Lcom/facebook/ads/redexgen/X/DJ;

    move-result-object v0

    return-object v0

    :cond_a7
    const/16 v2, 0xd

    goto :goto_4b

    :cond_aa
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A0I:I

    if-ne v1, v0, :cond_c4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7B()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/D3;->A00(JJLcom/facebook/ads/redexgen/X/Bg;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    :cond_c3
    :goto_c3
    return-object v4

    :cond_c4
    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    goto :goto_c3
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wl;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A0E:[B

    return-void

    :array_a
    .array-data 1
        -0x5et
        -0x39t
        -0x41t
        -0x38t
        -0x6et
        -0x5ct
        -0x60t
        -0x4ft
        -0x5et
        -0x59t
        -0x5ct
        -0x5dt
        0x5ft
        -0x4dt
        -0x52t
        -0x52t
        0x5ft
        -0x54t
        -0x60t
        -0x53t
        -0x48t
        0x5ft
        -0x5ft
        -0x48t
        -0x4dt
        -0x5ct
        -0x4et
        0x6dt
        -0x73t
        0x79t
        -0x77t
        -0x80t
        -0x64t
        -0x53t
        -0x4et
        -0x55t
    .end array-data
.end method

.method public static A06(IJ)Z
    .registers 7

    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v3, v0

    const-wide/32 v1, -0x1f400

    and-long/2addr v1, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Bb;Z)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_12a

    const/16 v5, 0x4000

    :goto_8
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v11

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    cmp-long v0, v11, v9

    if-nez v0, :cond_74

    iget v9, p0, Lcom/facebook/ads/redexgen/X/Wl;->A08:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v1, "aodgJ9F"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Mh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_127

    const/4 v0, 0x1

    :goto_3e
    if-eqz v0, :cond_124

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A04:Lcom/facebook/ads/redexgen/X/DQ;

    :goto_42
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0B:Lcom/facebook/ads/redexgen/X/Bf;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Bf;->A00(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v10

    iput-object v10, p0, Lcom/facebook/ads/redexgen/X/Wl;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    if-eqz v10, :cond_6a

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0A:Lcom/facebook/ads/redexgen/X/Be;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_118

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v1, "kwUpXSrSJ0NLH72x1DIQc8Fq054MCj03"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uritoxjB27zl8eiC6KQaQvgdEg1vP6Ps"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/Be;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Z

    :cond_6a
    :goto_6a
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7V()J

    move-result-wide v0

    long-to-int v2, v0

    if-nez p2, :cond_74

    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    if-lez v8, :cond_115

    const/4 v11, 0x1

    :goto_7b
    const/4 v10, 0x4

    sget-object v9, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v9, v0

    const/4 v0, 0x3

    aget-object v9, v9, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c5

    sget-object v9, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v1, "F41ajW8QxYjYysO7QQhMOwz5jLXMzQYc"

    const/4 v0, 0x0

    aput-object v1, v9, v0

    invoke-interface {p1, v12, v4, v10, v11}, Lcom/facebook/ads/redexgen/X/Bb;->ADm([BIIZ)Z

    move-result v0

    if-nez v0, :cond_cc

    :goto_9d
    if-eqz p2, :cond_c1

    add-int/2addr v2, v6

    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    :goto_a3
    iput v7, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v1, "JRrUIGwZBJczcB1fqhgNVGoVSbza2n0c"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_c1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    goto :goto_a3

    :cond_c5
    invoke-interface {p1, v12, v4, v10, v11}, Lcom/facebook/ads/redexgen/X/Bb;->ADm([BIIZ)Z

    move-result v0

    if-nez v0, :cond_cc

    goto :goto_9d

    :cond_cc
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0D:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v9

    if-eqz v7, :cond_e0

    int-to-long v0, v7

    invoke-static {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Wl;->A06(IJ)Z

    move-result v0

    if-eqz v0, :cond_e7

    :cond_e0
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Bg;->A00(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_101

    :cond_e7
    add-int/lit8 v1, v6, 0x1

    if-ne v6, v5, :cond_ee

    if-eqz p2, :cond_12e

    return v4

    :cond_ee
    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_fd

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    add-int v0, v2, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    :goto_fa
    move v6, v1

    goto/16 :goto_74

    :cond_fd
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    goto :goto_fa

    :cond_101
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_112

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/Bg;->A04(ILcom/facebook/ads/redexgen/X/Bg;)Z

    move v7, v9

    :cond_10b
    add-int/lit8 v0, v1, -0x4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    goto/16 :goto_74

    :cond_112
    if-ne v8, v10, :cond_10b

    goto :goto_9d

    :cond_115
    const/4 v11, 0x0

    goto/16 :goto_7b

    :cond_118
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wl;->A0F:[Ljava/lang/String;

    const-string v1, "W2SW3glva3ohlkheP4GgDHO6E3mNlxjo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/Be;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Z

    goto/16 :goto_6a

    :cond_124
    const/4 v1, 0x0

    goto/16 :goto_42

    :cond_127
    const/4 v0, 0x0

    goto/16 :goto_3e

    :cond_12a
    const/high16 v5, 0x20000

    goto/16 :goto_8

    :cond_12e
    const/4 v2, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A8e(Lcom/facebook/ads/redexgen/X/Bc;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wl;->A04:Lcom/facebook/ads/redexgen/X/Bc;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A04:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    return-void
.end method

.method public final AE9(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object v1, v1

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A01:I

    move-object/from16 v0, p1

    if-nez v2, :cond_10

    const/4 v2, 0x0

    :try_start_a
    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Wl;->A07(Lcom/facebook/ads/redexgen/X/Bb;Z)Z

    goto :goto_10
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_e} :catch_e

    :catch_e
    const/4 v0, -0x1

    return v0

    :cond_10
    :goto_10
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    if-nez v2, :cond_67

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A03(Lcom/facebook/ads/redexgen/X/Bb;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Bj;->A95()Z

    move-result v2

    if-nez v2, :cond_2e

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A08:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2e

    :cond_28
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A02(Lcom/facebook/ads/redexgen/X/Bb;)Lcom/facebook/ads/redexgen/X/DJ;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    :cond_2e
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Wl;->A04:Lcom/facebook/ads/redexgen/X/Bc;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Bc;->AEx(Lcom/facebook/ads/redexgen/X/Bj;)V

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Wl;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    const/4 v4, 0x0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Bg;->A06:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x1000

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v9, v2, Lcom/facebook/ads/redexgen/X/Bg;->A01:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A0C:Lcom/facebook/ads/redexgen/X/Bg;

    iget v10, v2, Lcom/facebook/ads/redexgen/X/Bg;->A03:I

    const/4 v11, -0x1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A0A:Lcom/facebook/ads/redexgen/X/Be;

    iget v12, v2, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A0A:Lcom/facebook/ads/redexgen/X/Be;

    iget v13, v2, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A08:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6c

    const/4 v2, 0x0

    :goto_5c
    const/16 v16, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v4 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    :cond_67
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/Bb;)I

    move-result v0

    return v0

    :cond_6c
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Wl;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    goto :goto_5c
.end method

.method public final AEw(JJ)V
    .registers 8

    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A01:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A02:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wl;->A03:J

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Wl;->A00:I

    return-void
.end method

.method public final AFg(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A07(Lcom/facebook/ads/redexgen/X/Bb;Z)Z

    move-result v0

    return v0
.end method
