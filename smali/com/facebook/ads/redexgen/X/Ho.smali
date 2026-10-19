###### Class com.facebook.ads.redexgen.X.C1069Ho (com.facebook.ads.redexgen.X.Ho)
.class public final Lcom/facebook/ads/redexgen/X/Ho;
.super Ljava/io/BufferedOutputStream;
.source ""


# instance fields
.field public A00:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public final A00(Ljava/io/OutputStream;)V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ho;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->count:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Z

    return-void
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Z

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ho;->flush()V

    goto :goto_9
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_8

    :catchall_8
    move-exception v1

    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_13
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    if-nez v1, :cond_13

    move-object v1, v0

    :cond_13
    :goto_13
    if-eqz v1, :cond_18

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A0Y(Ljava/lang/Throwable;)V

    :cond_18
    return-void
.end method
