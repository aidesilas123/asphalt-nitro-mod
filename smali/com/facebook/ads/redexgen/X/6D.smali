###### Class com.facebook.ads.redexgen.X.C6D (com.facebook.ads.redexgen.X.6D)
.class public final Lcom/facebook/ads/redexgen/X/6D;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final A00:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/6D;->A00:J

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6D;->start()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v2, p0

    :goto_8
    :try_start_8
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/6D;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    :catch_d
    :try_start_d
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6B;->A01()V

    goto :goto_8
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
