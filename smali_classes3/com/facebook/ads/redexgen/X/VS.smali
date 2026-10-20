###### Class com.facebook.ads.redexgen.X.VS (com.facebook.ads.redexgen.X.VS)
.class public final Lcom/facebook/ads/redexgen/X/VS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FW;


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HW2qPt5u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AwGYl2mpYTTxi9jMk2ztyBHwHH9P0uOm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ziApCMCdbQMQdjd0mTARuvEC3B"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RZTttmRl2v5Rh0lD63G6fj8mov5GfzUW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CAabTzRSjKw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MBUj6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1ELfNFRtAis"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0tjH0VZdGvNSLcI7F3HjH1zffCsfPrCD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VS;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A6T(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public final A6t(I)J
    .registers 5

    if-nez p1, :cond_1d

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/VS;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A01:[Ljava/lang/String;

    const-string v1, "5DVkB5gcIO90TUIp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_3

    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A6u()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final A7L(J)I
    .registers 6

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method
