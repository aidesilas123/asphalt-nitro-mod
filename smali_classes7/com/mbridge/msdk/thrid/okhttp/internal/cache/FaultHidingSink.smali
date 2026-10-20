###### Class com.mbridge.msdk.thrid.okhttp.internal.cache.FaultHidingSink (com.mbridge.msdk.thrid.okhttp.internal.cache.FaultHidingSink)
.class Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;
.super Lcom/mbridge/msdk/thrid/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/thrid/okio/ForwardingSink;-><init>(Lcom/mbridge/msdk/thrid/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/mbridge/msdk/thrid/okio/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_10
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/mbridge/msdk/thrid/okio/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_10
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .registers 2

    return-void
.end method

.method public write(Lcom/mbridge/msdk/thrid/okio/Buffer;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/Buffer;->skip(J)V

    return-void

    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/ForwardingSink;->write(Lcom/mbridge/msdk/thrid/okio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_13
    return-void
.end method
