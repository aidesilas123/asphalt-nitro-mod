###### Class com.bytedance.sdk.component.b.a.a.a.e (com.bytedance.sdk.component.b.a.a.a.e)
.class public Lcom/bytedance/sdk/component/b/a/a/a/e;
.super Ljava/io/InputStream;
.source "NetInputStram.java"


# instance fields
.field a:Ljava/io/InputStream;

.field b:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_7
    return-void
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1

    :cond_9
    const-wide/16 p1, 0x0

    return-wide p1
.end method
