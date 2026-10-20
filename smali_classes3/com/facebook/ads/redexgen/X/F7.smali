###### Class com.facebook.ads.redexgen.X.F7 (com.facebook.ads.redexgen.X.F7)
.class public final Lcom/facebook/ads/redexgen/X/F7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/ads/AdPlaybackState$AdState;,
        Lcom/facebook/ads/redexgen/X/F5;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/F7;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:[J

.field public final A04:[Lcom/facebook/ads/redexgen/X/F5;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uUgQSQgVsgHH0N1UsfY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7AFLCGuL9JRzl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SUkqvXm6rFeJNlyU4q2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DM2QNBARzQjqq5KTyec"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OFwEtNlY3tfCjSjl1W0mAcBM0ytDkhEA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Uou0zfuAqjYMYyC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2ZbfYqEAzIBMf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F7;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [J

    new-instance v0, Lcom/facebook/ads/redexgen/X/F7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/F7;-><init>([J)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/F7;->A06:Lcom/facebook/ads/redexgen/X/F7;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v3, p1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:I

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A03:[J

    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/F5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A04:[Lcom/facebook/ads/redexgen/X/F5;

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v3, :cond_1f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F7;->A04:[Lcom/facebook/ads/redexgen/X/F5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F5;-><init>()V

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A02:J

    return-void
.end method


# virtual methods
.method public final A00(J)I
    .registers 10

    const/4 v3, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F7;->A03:[J

    array-length v0, v1

    if-ge v3, v0, :cond_3b

    aget-wide v5, v1, v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v5, v1

    if-eqz v0, :cond_3b

    cmp-long v4, p1, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/F7;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/F7;->A05:[Ljava/lang/String;

    const-string v1, "JOT1DKN2kTxJVBU4QbvAyq2E38ICiTh6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-gez v4, :cond_32

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A04:[Lcom/facebook/ads/redexgen/X/F5;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F5;->A02()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A03:[J

    array-length v0, v0

    if-ge v3, v0, :cond_41

    :goto_40
    return v3

    :cond_41
    const/4 v3, -0x1

    goto :goto_40
.end method

.method public final A01(J)I
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A03:[J

    array-length v0, v0

    add-int/lit8 v5, v0, -0x1

    :goto_5
    if-ltz v5, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A03:[J

    aget-wide v3, v0, v5

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_15

    cmp-long v0, v3, p1

    if-lez v0, :cond_18

    :cond_15
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_18
    if-ltz v5, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A04:[Lcom/facebook/ads/redexgen/X/F5;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F5;->A02()Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_24
    return v5

    :cond_25
    const/4 v5, -0x1

    goto :goto_24
.end method
