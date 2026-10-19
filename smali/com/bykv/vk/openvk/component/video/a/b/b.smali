###### Class com.bykv.vk.openvk.component.video.a.b.b (com.bykv.vk.openvk.component.video.a.b.b)
.class Lcom/bykv/vk/openvk/component/video/a/b/b;
.super Lcom/bykv/vk/openvk/component/video/a/b/a;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/b$a;,
        Lcom/bykv/vk/openvk/component/video/a/b/b$b;
    }
.end annotation


# instance fields
.field final m:Ljava/lang/Object;

.field final n:Ljava/lang/Object;

.field private final o:I

.field private final p:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

.field private volatile q:Lcom/bykv/vk/openvk/component/video/a/b/h$a;

.field private volatile r:Lcom/bykv/vk/openvk/component/video/a/b/c/b;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/b$a;)V
    .registers 4

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->d:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/a;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/a/a;Lcom/bykv/vk/openvk/component/video/a/b/b/c;)V

    iget v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->g:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->o:I

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->i:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->p:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

    iput-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->m:Ljava/lang/Object;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->f:Ljava/util/List;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->c:Lcom/bykv/vk/openvk/component/video/a/b/l;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->j:Lcom/bykv/vk/openvk/component/video/a/b/l;

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->h:Lcom/bykv/vk/openvk/component/video/a/b/i;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->i:Lcom/bykv/vk/openvk/component/video/a/b/i;

    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->n:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/bykv/vk/openvk/component/video/a/b/l$a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/a/b/h$a;,
            Lcom/bykv/vk/openvk/component/video/a/b/c/a;,
            Lcom/bykv/vk/openvk/component/video/a/b/c/b;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->a:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->o:I

    if-lez v3, :cond_44

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_44

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz p1, :cond_43

    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no necessary to download for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cache file size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void

    :cond_44
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->f()I

    move-result v3

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    move-result-object v4

    if-eqz v4, :cond_76

    iget v5, v4, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->c:I

    int-to-long v5, v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_76

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz p1, :cond_75

    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file download complete, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    return-void

    :cond_76
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->e()V

    long-to-int v5, v1

    iget v6, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->o:I

    const-string v7, "GET"

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a(Lcom/bykv/vk/openvk/component/video/a/b/l$a;IILjava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/e/a;

    move-result-object v6

    if-nez v6, :cond_85

    return-void

    :cond_85
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_88
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->e()V

    iget-object v10, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->i:Lcom/bykv/vk/openvk/component/video/a/b/i;

    if-nez v10, :cond_95

    sget-boolean v10, Lcom/bykv/vk/openvk/component/video/a/b/e;->e:Z

    if-eqz v10, :cond_95

    const/4 v10, 0x1

    goto :goto_96

    :cond_95
    const/4 v10, 0x0

    :goto_96
    invoke-static {v6, v10, v8}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Lcom/bykv/vk/openvk/component/video/a/b/e/a;ZZ)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1e6

    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Lcom/bykv/vk/openvk/component/video/a/b/e/a;)I

    move-result v10

    if-eqz v4, :cond_111

    iget v11, v4, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->c:I

    if-eq v11, v10, :cond_111

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_d4

    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length not match, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length not match, old length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", previousInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_111
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-static {v6, p1, v4, v3}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Lcom/bykv/vk/openvk/component/video/a/b/e/a;Lcom/bykv/vk/openvk/component/video/a/b/b/c;Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->b:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/a/b/b/a;

    move-result-object p1

    if-nez p1, :cond_124

    const/4 p1, 0x0

    goto :goto_126

    :cond_124
    iget p1, p1, Lcom/bykv/vk/openvk/component/video/a/b/b/a;->c:I

    :goto_126
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->d()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lcom/bykv/vk/openvk/component/video/a/b/h;

    sget-boolean v10, Lcom/bykv/vk/openvk/component/video/a/b/e;->d:Z

    if-eqz v10, :cond_133

    const-string v10, "rwd"

    goto :goto_135

    :cond_133
    const-string v10, "rw"

    :goto_135
    invoke-direct {v4, v0, v10}, Lcom/bykv/vk/openvk/component/video/a/b/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_88 .. :try_end_138} :catchall_20a

    :try_start_138
    invoke-virtual {v4, v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/h;->a(J)V

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_155

    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preload start from: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_155
    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_159
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1c6

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->e()V

    if-lez v1, :cond_181

    invoke-virtual {v4, v0, v9, v1}, Lcom/bykv/vk/openvk/component/video/a/b/h;->a([BII)V

    add-int/2addr v5, v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->i:Lcom/bykv/vk/openvk/component/video/a/b/i;

    if-eqz v2, :cond_179

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16f
    .catchall {:try_start_138 .. :try_end_16f} :catchall_1e3

    :try_start_16f
    iget-object v7, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->m:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_179

    :catchall_176
    move-exception p1

    monitor-exit v2
    :try_end_178
    .catchall {:try_start_16f .. :try_end_178} :catchall_176

    :try_start_178
    throw p1

    :cond_179
    :goto_179
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual {p0, p1, v5}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a(II)V

    :cond_181
    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->o:I

    if-lez v1, :cond_1c2

    if-lt v5, v1, :cond_1c2

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz p1, :cond_1ab

    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download, more data received, currentCacheFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_178 .. :try_end_1ab} :catchall_1e3

    :cond_1ab
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/io/Closeable;)V

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/a/b/h;->a()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a()V

    if-eqz p1, :cond_1c1

    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "cancel call"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c1
    return-void

    :cond_1c2
    :try_start_1c2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->e()V
    :try_end_1c5
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_1e3

    goto :goto_159

    :cond_1c6
    :try_start_1c6
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->c()V

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz p1, :cond_1d4

    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "download succeed, no need to cancel call"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d4
    .catchall {:try_start_1c6 .. :try_end_1d4} :catchall_1df

    :cond_1d4
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/io/Closeable;)V

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/a/b/h;->a()V

    return-void

    :catchall_1df
    move-exception p1

    move-object v7, v4

    const/4 v8, 0x0

    goto :goto_20b

    :catchall_1e3
    move-exception p1

    move-object v7, v4

    goto :goto_20b

    :cond_1e6
    :try_start_1e6
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20a
    .catchall {:try_start_1e6 .. :try_end_20a} :catchall_20a

    :catchall_20a
    move-exception p1

    :goto_20b
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/io/Closeable;)V

    if-eqz v7, :cond_217

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/component/video/a/b/h;->a()V

    :cond_217
    if-eqz v8, :cond_227

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a()V

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_227

    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v1, "cancel call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_227
    throw p1
.end method

.method private j()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/c/a;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->j:Lcom/bykv/vk/openvk/component/video/a/b/l;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/l;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->e()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->j:Lcom/bykv/vk/openvk/component/video/a/b/l;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/l;->b()Lcom/bykv/vk/openvk/component/video/a/b/l$a;

    move-result-object v0

    :try_start_12
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/b/l$a;)V
    :try_end_15
    .catch Lcom/bykv/vk/openvk/component/video/a/b/c/c; {:try_start_12 .. :try_end_15} :catch_4a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2d
    .catch Lcom/bykv/vk/openvk/component/video/a/b/h$a; {:try_start_12 .. :try_end_15} :catch_1c
    .catch Lcom/bykv/vk/openvk/component/video/a/b/c/b; {:try_start_12 .. :try_end_15} :catch_18
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    const/4 v0, 0x1

    return v0

    :catchall_17
    return v1

    :catch_18
    move-exception v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->r:Lcom/bykv/vk/openvk/component/video/a/b/c/b;

    return v1

    :catch_1c
    move-exception v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->q:Lcom/bykv/vk/openvk/component/video/a/b/h$a;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_2d
    move-exception v1

    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/l$a;->b()V

    :cond_35
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_0

    :cond_3c
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4a
    move-exception v1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/l$a;->a()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5c
    return v1
.end method


# virtual methods
.method h()Lcom/bykv/vk/openvk/component/video/a/b/h$a;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->q:Lcom/bykv/vk/openvk/component/video/a/b/h$a;

    return-object v0
.end method

.method i()Lcom/bykv/vk/openvk/component/video/a/b/c/b;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->r:Lcom/bykv/vk/openvk/component/video/a/b/c/b;

    return-object v0
.end method

.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->a:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_b
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/b;->j()Z
    :try_end_e
    .catch Lcom/bykv/vk/openvk/component/video/a/b/c/a; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_10

    :catch_f
    :catchall_f
    nop

    :goto_10
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->a:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b;->p:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

    if-eqz v0, :cond_28

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/b/b$b;->a(Lcom/bykv/vk/openvk/component/video/a/b/b;)V

    :cond_28
    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.b.a (com.bykv.vk.openvk.component.video.a.b.b$a)
.class final Lcom/bykv/vk/openvk/component/video/a/b/b$a;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/bykv/vk/openvk/component/video/a/b/l;

.field d:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

.field e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/a/b/i$b;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Lcom/bykv/vk/openvk/component/video/a/b/i;

.field i:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

.field j:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 2

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->g:I

    return-object p0
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/a/a;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->d:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/b$b;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->i:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

    return-object p0
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/i;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->h:Lcom/bykv/vk/openvk/component/video/a/b/i;

    return-object p0
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/l;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->c:Lcom/bykv/vk/openvk/component/video/a/b/l;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/Object;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawKey == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/util/List;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/a/b/i$b;",
            ">;)",
            "Lcom/bykv/vk/openvk/component/video/a/b/b$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->f:Ljava/util/List;

    return-object p0
.end method

.method a()Lcom/bykv/vk/openvk/component/video/a/b/b;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->d:Lcom/bykv/vk/openvk/component/video/a/b/a/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->c:Lcom/bykv/vk/openvk/component/video/a/b/l;

    if-eqz v0, :cond_22

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/b;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/b/b;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/b$a;)V

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method b(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->b:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.b.InterfaceC0087b (com.bykv.vk.openvk.component.video.a.b.b$b)
.class public interface abstract Lcom/bykv/vk/openvk/component/video/a/b/b$b;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/bykv/vk/openvk/component/video/a/b/b;)V
.end method
