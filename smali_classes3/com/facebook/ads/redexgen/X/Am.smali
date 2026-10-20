###### Class com.facebook.ads.redexgen.X.C0906Am (com.facebook.ads.redexgen.X.Am)
.class public final Lcom/facebook/ads/redexgen/X/Am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Uy;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Uy;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/H6;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:J

.field public final A02:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/H6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:J

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Ljava/util/TreeSet;

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/H6;Lcom/facebook/ads/redexgen/X/H6;)I
    .registers 8

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/H6;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/H6;->A00:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_10

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/H6;->A00(Lcom/facebook/ads/redexgen/X/H6;)I

    move-result v0

    return v0

    :cond_10
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/H6;->A00:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/H6;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1a

    const/4 v0, -0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/H2;J)V
    .registers 9

    :catch_0
    :goto_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:J

    add-long/2addr v3, p2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    :try_start_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H6;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/H2;->AEZ(Lcom/facebook/ads/redexgen/X/H6;)V

    goto :goto_0

    :cond_1d
    return-void
    :try_end_1e
    .catch Lcom/facebook/ads/redexgen/X/H0; {:try_start_11 .. :try_end_1e} :catch_0
.end method


# virtual methods
.method public final AD0(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:J

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Am;->A01(Lcom/facebook/ads/redexgen/X/H2;J)V

    return-void
.end method

.method public final AD1(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:J

    return-void
.end method

.method public final AD2(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;Lcom/facebook/ads/redexgen/X/H6;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Am;->AD1(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V

    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Am;->AD0(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V

    return-void
.end method

.method public final AD3(Lcom/facebook/ads/redexgen/X/H2;Ljava/lang/String;JJ)V
    .registers 7

    invoke-direct {p0, p1, p5, p6}, Lcom/facebook/ads/redexgen/X/Am;->A01(Lcom/facebook/ads/redexgen/X/H2;J)V

    return-void
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/facebook/ads/redexgen/X/H6;

    check-cast p2, Lcom/facebook/ads/redexgen/X/H6;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Am;->A00(Lcom/facebook/ads/redexgen/X/H6;Lcom/facebook/ads/redexgen/X/H6;)I

    move-result v0

    return v0
.end method
