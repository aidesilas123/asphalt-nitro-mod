###### Class com.facebook.ads.redexgen.X.V6 (com.facebook.ads.redexgen.X.V6)
.class public final Lcom/facebook/ads/redexgen/X/V6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gs;,
        Lcom/facebook/ads/redexgen/X/Gp;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/Loader$RetryAction;,
        Lcom/facebook/ads/redexgen/X/Gr;,
        Lcom/facebook/ads/redexgen/X/Go;,
        Lcom/facebook/ads/redexgen/X/Gq;,
        Lcom/facebook/ads/redexgen/X/Gu;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Gp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gp<",
            "+",
            "Lcom/facebook/ads/redexgen/X/Gq;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/io/IOException;

.field public final A02:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A0T(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A02:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/V6;)Lcom/facebook/ads/redexgen/X/Gp;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/Gp;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/V6;Lcom/facebook/ads/redexgen/X/Gp;)Lcom/facebook/ads/redexgen/X/Gp;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/Gp;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/V6;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Ljava/io/IOException;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/V6;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/V6;->A02:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/Gq;Lcom/facebook/ads/redexgen/X/Go;I)J
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/Gq;",
            ">(TT;",
            "Lcom/facebook/ads/redexgen/X/Go<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_20

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v2, Lcom/facebook/ads/redexgen/X/Gp;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Gp;-><init>(Lcom/facebook/ads/redexgen/X/V6;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Gq;Lcom/facebook/ads/redexgen/X/Go;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Gp;->A06(J)V

    return-wide v8

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final A05()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/Gp;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A07(Z)V

    return-void
.end method

.method public final A06(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Ljava/io/IOException;

    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/Gp;

    if-eqz v1, :cond_11

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_e

    iget p1, v1, Lcom/facebook/ads/redexgen/X/Gp;->A03:I

    :cond_e
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/Gp;->A05(I)V

    :cond_11
    return-void

    :cond_12
    throw v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Gr;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/Gp;

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A07(Z)V

    :cond_8
    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A02:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Gs;-><init>(Lcom/facebook/ads/redexgen/X/Gr;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A02:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final A08()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:Lcom/facebook/ads/redexgen/X/Gp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
