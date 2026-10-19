###### Class com.bykv.vk.openvk.preload.geckox.buffer.a.c (com.bykv.vk.openvk.preload.geckox.buffer.a.c)
.class final Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;
.super Ljava/lang/Object;
.source "RAFBuffer.java"

# interfaces
.implements Lcom/bykv/vk/openvk/preload/geckox/buffer/a;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/io/File;


# direct methods
.method constructor <init>(JLjava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p1, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->a:J

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->e:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_16
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    iget-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/geckox/utils/CloseableUtils;->close(Ljava/io/Closeable;)Z

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create raf swap failed! path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " caused by: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    array-length v1, p1

    if-eqz v1, :cond_41

    if-gtz p3, :cond_11

    goto :goto_41

    :cond_11
    if-ltz p2, :cond_41

    array-length v1, p1

    if-lt p2, v1, :cond_17

    goto :goto_41

    :cond_17
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1e

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1e
    monitor-enter p0

    :try_start_1f
    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    iget-wide v3, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_29

    monitor-exit p0

    return v0

    :cond_29
    int-to-long v5, p3

    add-long/2addr v5, v1

    cmp-long v0, v5, v3

    if-lez v0, :cond_31

    sub-long/2addr v3, v1

    long-to-int p3, v3

    :cond_31
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    monitor-exit p0

    return p3

    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_3e

    throw p1

    :cond_41
    :goto_41
    return v0

    :cond_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized a(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_30

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_20

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p1

    iget-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_38

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    :cond_20
    :try_start_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "too large:"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "released!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->a([B)V

    return-void
.end method

.method public final a([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->a([BII)I

    return-void
.end method

.method public final b([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b([BII)I

    move-result p1

    return p1
.end method

.method public final b([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    if-eqz p1, :cond_42

    if-lez p3, :cond_42

    if-ltz p2, :cond_42

    array-length v0, p1

    if-lt p2, v0, :cond_12

    goto :goto_42

    :cond_12
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_19

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_19
    monitor-enter p0

    :try_start_1a
    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    iget-wide v2, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->a:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_25

    monitor-exit p0

    return v4

    :cond_25
    int-to-long v5, p3

    add-long/2addr v5, v0

    cmp-long v7, v5, v2

    if-lez v7, :cond_2d

    sub-long/2addr v2, v0

    long-to-int p3, v2

    :cond_2d
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_37

    monitor-exit p0

    return v4

    :cond_37
    iget-wide p2, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    monitor-exit p0

    return p1

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_3f

    throw p1

    :cond_42
    :goto_42
    const/4 p1, 0x0

    return p1

    :cond_44
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->a:J

    return-wide v0
.end method

.method public final b(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1f

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_10

    :goto_e
    move-wide p1, v0

    goto :goto_17

    :cond_10
    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->a:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    goto :goto_e

    :cond_17
    :goto_17
    iput-wide p1, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void

    :cond_1f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b:J

    return-wide v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "released!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->b([B)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, -0x1

    return v0

    :cond_b
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->c:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/CloseableUtils;->close(Ljava/io/Closeable;)Z

    return-void
.end method

.method public final f()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/c;->e:Ljava/io/File;

    return-object v0
.end method
