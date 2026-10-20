###### Class com.facebook.ads.redexgen.X.BP (com.facebook.ads.redexgen.X.BP)
.class public abstract Lcom/facebook/ads/redexgen/X/BP;
.super Lcom/facebook/ads/redexgen/X/XC;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Vc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/XC<",
        "Lcom/facebook/ads/redexgen/X/BO;",
        "Lcom/facebook/ads/redexgen/X/BN;",
        "Lcom/facebook/ads/redexgen/X/FX;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/Vc;"
    }
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A0J()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/BO;

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/BN;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XC;-><init>([Lcom/facebook/ads/redexgen/X/XE;[Lcom/facebook/ads/redexgen/X/XD;)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BP;->A00:Ljava/lang/String;

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/XC;->A0Y(I)V

    return-void
.end method

.method private final A0E()Lcom/facebook/ads/redexgen/X/3C;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3C;-><init>(Lcom/facebook/ads/redexgen/X/BP;)V

    return-object v0
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/BO;Lcom/facebook/ads/redexgen/X/BN;Z)Lcom/facebook/ads/redexgen/X/FX;
    .registers 11

    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/BP;->A0b([BIZ)Lcom/facebook/ads/redexgen/X/FW;

    move-result-object v4

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/BN;->A09(JLcom/facebook/ads/redexgen/X/FW;J)V

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A01(I)V

    const/4 v0, 0x0

    return-object v0
    :try_end_1d
    .catch Lcom/facebook/ads/redexgen/X/FX; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v0

    return-object v0
.end method

.method private final A0G(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/FX;
    .registers 5

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final A0H()Lcom/facebook/ads/redexgen/X/BO;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/BO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BO;-><init>()V

    return-object v0
.end method

.method public static A0I(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/BP;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0J()V
    .registers 1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/BP;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0x44t
        -0x2bt
        -0x34t
        -0x21t
        -0x29t
        -0x34t
        -0x36t
        -0x25t
        -0x34t
        -0x35t
        -0x79t
        -0x35t
        -0x34t
        -0x36t
        -0x2at
        -0x35t
        -0x34t
        -0x79t
        -0x34t
        -0x27t
        -0x27t
        -0x2at
        -0x27t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A0T()Lcom/facebook/ads/redexgen/X/XE;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BP;->A0H()Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0V()Lcom/facebook/ads/redexgen/X/XD;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BP;->A0E()Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0W(Lcom/facebook/ads/redexgen/X/XE;Lcom/facebook/ads/redexgen/X/XD;Z)Lcom/facebook/ads/redexgen/X/FX;
    .registers 5

    check-cast p1, Lcom/facebook/ads/redexgen/X/BO;

    check-cast p2, Lcom/facebook/ads/redexgen/X/BN;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/BP;->A0F(Lcom/facebook/ads/redexgen/X/BO;Lcom/facebook/ads/redexgen/X/BN;Z)Lcom/facebook/ads/redexgen/X/FX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BP;->A0G(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/FX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0a(Lcom/facebook/ads/redexgen/X/XD;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/BN;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/BP;->A0c(Lcom/facebook/ads/redexgen/X/BN;)V

    return-void
.end method

.method public abstract A0b([BIZ)Lcom/facebook/ads/redexgen/X/FW;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/BN;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/XC;->A0a(Lcom/facebook/ads/redexgen/X/XD;)V

    return-void
.end method

.method public final AFQ(J)V
    .registers 3

    return-void
.end method
