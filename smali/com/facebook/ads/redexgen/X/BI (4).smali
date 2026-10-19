###### Class com.facebook.ads.redexgen.X.BI (com.facebook.ads.redexgen.X.BI)
.class public abstract Lcom/facebook/ads/redexgen/X/BI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Vc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/37;,
        Lcom/facebook/ads/redexgen/X/38;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/38;

.field public final A03:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/38;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/BN;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/ads/redexgen/X/38;",
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

    const-string v0, "KcRMvDVLZNgc0ooVkhN4ahdKcengok4t"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7pRgSHJJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GNHbGuKbKosn0JAz4xkib8iBcGb5WNz5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hJNyShuwv1tZ2cTKHVoLW9isLSOVhBhj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "H7WHQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6cZmXLfi2DPGYj7ZmxIdQ5A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b2Hmg2LD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cSsJl4a3bVOvbO76ENMD9MAL1lcw3B"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    :goto_b
    const/16 v0, 0xa

    const/4 v3, 0x0

    if-ge v2, v0, :cond_1d

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/38;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/38;-><init>(Lcom/facebook/ads/redexgen/X/Ff;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    :goto_25
    const/4 v0, 0x2

    if-ge v2, v0, :cond_35

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/BI;Lcom/facebook/ads/redexgen/X/Ff;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_35
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/38;)V
    .registers 3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public A0L()Lcom/facebook/ads/redexgen/X/BO;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_5

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const-string v1, "MSCQz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2d

    const/4 v0, 0x0

    return-object v0

    :cond_2d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    return-object v0
.end method

.method public A0M()Lcom/facebook/ads/redexgen/X/BN;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    return-object v5

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_91

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/38;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/BN;

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00(I)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/38;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_84

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_57
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0P(Lcom/facebook/ads/redexgen/X/BO;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0R()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0N()Lcom/facebook/ads/redexgen/X/VZ;

    move-result-object v6

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ap;->A03()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/BN;

    iget-wide v4, v1, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/BN;->A09(JLcom/facebook/ads/redexgen/X/FW;J)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/38;)V

    return-object v3

    :cond_80
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/38;)V

    goto :goto_a

    :cond_84
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const-string v1, "Z7l20gfPvvtRCAhrDUNIN8ivECfXDju3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "MHWMj6Fd4O5yELPFkyyjrniha9DdnabU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_91
    return-object v5
.end method

.method public abstract A0N()Lcom/facebook/ads/redexgen/X/VZ;
.end method

.method public A0O(Lcom/facebook/ads/redexgen/X/BO;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    if-ne p1, v0, :cond_1d

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_5

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const-string v1, "h6rCbn8hi0Qg5CvGAi8vHFDPjl0uqV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "6Me2Lvii1P8K0tFjrCRJacm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ap;->A03()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/38;)V

    :goto_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    return-void

    :cond_3a
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:J

    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/38;->A01(Lcom/facebook/ads/redexgen/X/38;J)J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method public abstract A0P(Lcom/facebook/ads/redexgen/X/BO;)V
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/BN;)V
    .registers 3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BN;->A07()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract A0R()Z
.end method

.method public final bridge synthetic A50()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0L()Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A51()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0M()Lcom/facebook/ads/redexgen/X/BN;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AE8(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/facebook/ads/redexgen/X/BO;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/BI;->A0O(Lcom/facebook/ads/redexgen/X/BO;)V

    return-void
.end method

.method public AEO()V
    .registers 1

    return-void
.end method

.method public AFQ(J)V
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:J

    return-void
.end method

.method public flush()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:J

    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/38;)V

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    if-eqz v0, :cond_24

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/38;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/38;

    :cond_24
    return-void
.end method
