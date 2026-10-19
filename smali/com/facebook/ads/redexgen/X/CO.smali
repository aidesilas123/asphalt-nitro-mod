###### Class com.facebook.ads.redexgen.X.CO (com.facebook.ads.redexgen.X.CO)
.class public final Lcom/facebook/ads/redexgen/X/CO;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/C7;

.field public A08:Lcom/facebook/ads/redexgen/X/CN;

.field public A09:Lcom/facebook/ads/redexgen/X/Hh;

.field public A0A:Z

.field public A0B:Z

.field public A0C:[I

.field public A0D:[I

.field public A0E:[I

.field public A0F:[J

.field public A0G:[J

.field public A0H:[Z

.field public A0I:[Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Hx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VutN6lGbTtI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qYQ0MvWUv8Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S03PbS7CBB7Qa9LNqne809kWTfsCcOYT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wkl2QKty73uWRgng3ylrY2sBCsabW7qE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iu4lxNjBwDGgTbBIaWVT9T7j7cQi6zNN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "a5Fde8I7YqGVonU3ugZgHcMmcsmCDOtB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CO;->A0J:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)J
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0F:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0C:[I

    aget v0, v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A01()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/CO;->A02:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A06:J

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/CO;->A0A:Z

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/CO;->A0B:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A08:Lcom/facebook/ads/redexgen/X/CN;

    return-void
.end method

.method public final A02(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    if-ge v0, p1, :cond_11

    :cond_a
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    :cond_11
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CO;->A01:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0B:Z

    return-void
.end method

.method public final A03(II)V
    .registers 7

    iput p1, p0, Lcom/facebook/ads/redexgen/X/CO;->A02:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/CO;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0E:[I

    if-eqz v0, :cond_b

    array-length v0, v0

    if-ge v0, p1, :cond_31

    :cond_b
    new-array v3, p1, [J

    sget-object v1, Lcom/facebook/ads/redexgen/X/CO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1f

    :goto_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/CO;->A0J:[Ljava/lang/String;

    const-string v1, "ZgUWYZPBUUH4f5IflhoFXt9Z2beMZ7L4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VeOPEMocQkhcG8xqDUtsqj4H6GWeaBG3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/CO;->A0G:[J

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0E:[I

    :cond_31
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0D:[I

    if-eqz v0, :cond_38

    array-length v0, v0

    if-ge v0, p2, :cond_64

    :cond_38
    mul-int/lit8 v0, p2, 0x7d

    div-int/lit8 v3, v0, 0x64

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0D:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/CO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4d

    goto :goto_19

    :cond_4d
    sget-object v2, Lcom/facebook/ads/redexgen/X/CO;->A0J:[Ljava/lang/String;

    const-string v1, "QhoZMJVE40X"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0C:[I

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0F:[J

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0I:[Z

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A0H:[Z

    :cond_64
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Bb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A01:I

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CO;->A0B:Z

    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A01:I

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CO;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CO;->A0B:Z

    return-void
.end method
