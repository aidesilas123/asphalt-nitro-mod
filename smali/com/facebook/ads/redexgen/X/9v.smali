###### Class com.facebook.ads.redexgen.X.C08909v (com.facebook.ads.redexgen.X.9v)
.class public final Lcom/facebook/ads/redexgen/X/9v;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/9v;

.field public static final A03:Lcom/facebook/ads/redexgen/X/9v;

.field public static final A04:Lcom/facebook/ads/redexgen/X/9v;

.field public static final A05:Lcom/facebook/ads/redexgen/X/9v;

.field public static final A06:Lcom/facebook/ads/redexgen/X/9v;


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {v5, v3, v4, v3, v4}, Lcom/facebook/ads/redexgen/X/9v;-><init>(JJ)V

    sput-object v5, Lcom/facebook/ads/redexgen/X/9v;->A04:Lcom/facebook/ads/redexgen/X/9v;

    const-wide v1, 0x7fffffffffffffffL

    new-instance v0, Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/facebook/ads/redexgen/X/9v;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/9v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/9v;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9v;->A06:Lcom/facebook/ads/redexgen/X/9v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/9v;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/9v;

    sput-object v5, Lcom/facebook/ads/redexgen/X/9v;->A03:Lcom/facebook/ads/redexgen/X/9v;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    cmp-long v0, p3, v1

    if-ltz v0, :cond_1a

    :goto_12
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    return-void

    :cond_1a
    const/4 v3, 0x0

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    return v5

    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    :cond_11
    return v2

    :cond_12
    check-cast p1, Lcom/facebook/ads/redexgen/X/9v;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_25

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_25

    :goto_24
    return v5

    :cond_25
    const/4 v5, 0x0

    goto :goto_24
.end method

.method public final hashCode()I
    .registers 5

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:J

    long-to-int v0, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    return v3
.end method
