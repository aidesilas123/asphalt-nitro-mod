###### Class com.bykv.vk.openvk.component.video.a.a.a.b (com.bykv.vk.openvk.component.video.a.a.a.b)
.class public Lcom/bykv/vk/openvk/component/video/a/a/a/b;
.super Ljava/lang/Object;
.source "MediaDownloadPlayCacheImpl.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/a/a/a/c;


# instance fields
.field private volatile a:J

.field private final b:Ljava/lang/Object;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:J

.field private volatile f:J

.field private volatile g:Z

.field private volatile h:Z

.field private i:Ljava/io/RandomAccessFile;

.field private final j:Lcom/bykv/vk/openvk/component/video/api/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->f:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->g:Z

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    :try_start_21
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/e/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/e/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    goto :goto_5a

    :cond_4f
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    :goto_5a
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->e:J

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a()V
    :try_end_6b
    .catchall {:try_start_21 .. :try_end_6b} :catchall_6c

    goto :goto_84

    :catchall_6c
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error using file "

    aput-object v1, v0, p1

    const/4 p1, 0x1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    const-string p2, " as disc cache"

    aput-object p2, v0, p1

    const-string p1, "CSJ_MediaDLPlay"

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_84
    :goto_84
    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J

    return-wide v0
.end method

.method static synthetic d(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    return-object p0
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private e()J
    .registers 3

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/io/RandomAccessFile;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private f()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_2a

    const-string v1, "CSJ_MediaDLPlay"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "complete: isCompleted "

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_9b

    return-void

    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    iget-object v6, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_3b
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v1, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    const-string v1, "CSJ_MediaDLPlay"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "complete: rename "

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_97

    :cond_62
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error renaming file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for completion!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8a
    .catchall {:try_start_2a .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v1

    :try_start_8b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "CSJ_MediaDLPlay"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_99

    :goto_97
    :try_start_97
    monitor-exit v0

    return-void

    :catchall_99
    move-exception v1

    throw v1

    :catchall_9b
    move-exception v1

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_9b

    throw v1
.end method

.method static synthetic g(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->f:J

    return-wide v0
.end method

.method static synthetic h(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    return-object p0
.end method

.method static synthetic i(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->f()V

    return-void
.end method


# virtual methods
.method public a(J[BII)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    :try_start_4
    iget-wide v4, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J

    const/4 v0, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_c

    return v0

    :cond_c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_f
    iget-boolean v7, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->g:Z

    if-nez v7, :cond_8b

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b:Ljava/lang/Object;

    monitor-enter v7
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_8c

    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->e()J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-gez v10, :cond_4b

    const-string v6, "CSJ_MediaDLPlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read:  read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v6, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual {v6, v10, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    goto :goto_79

    :cond_4b
    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    const-string v13, "CSJ_MediaDLPlay"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "read: wait at "

    aput-object v15, v14, v4

    const/4 v15, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "  file size = "

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x21

    iget-object v8, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b:Ljava/lang/Object;

    const-wide/16 v13, 0x21

    invoke-virtual {v8, v13, v14}, Ljava/lang/Object;->wait(J)V

    :goto_79
    monitor-exit v7
    :try_end_7a
    .catchall {:try_start_16 .. :try_end_7a} :catchall_88

    if-lez v6, :cond_7d

    return v6

    :cond_7d
    const/16 v7, 0x4e20

    if-ge v5, v7, :cond_82

    goto :goto_f

    :cond_82
    :try_start_82
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_8c

    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8c

    :cond_8b
    return v0

    :catchall_8c
    move-exception v0

    :try_start_8d
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_94

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_94
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_9a
    .catchall {:try_start_8d .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    throw v0
.end method

.method public a()V
    .registers 7

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/c;->d()Lcom/bytedance/sdk/component/b/a/k;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/c;->d()Lcom/bytedance/sdk/component/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    goto :goto_16

    :cond_f
    new-instance v0, Lcom/bytedance/sdk/component/b/a/k$a;

    const-string v1, "v_cache"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/b/a/k$a;-><init>(Ljava/lang/String;)V

    :goto_16
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->p()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/b/a/k$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->q()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/b/a/k$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->r()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/b/a/k$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/k$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/k$a;->a()Lcom/bytedance/sdk/component/b/a/k;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "RANGE, bytes="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " file hash="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "CSJ_MediaDLPlay"

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/component/b/a/m$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/b/a/m$a;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->j:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/m$a;->a()Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/m$a;->b()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/k;->a(Lcom/bytedance/sdk/component/b/a/m;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;-><init>(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/b/a/b;->a(Lcom/bytedance/sdk/component/b/a/c;)V

    return-void
.end method

.method public b()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->g:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c:Ljava/io/File;

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    :cond_14
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    if-eqz v0, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v0

    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    :cond_24
    :goto_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->g:Z

    return-void

    :catchall_28
    move-exception v0

    throw v0
.end method

.method public c()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J

    goto :goto_42

    :cond_10
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :cond_14
    :try_start_14
    iget-wide v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_5a

    const-wide/32 v5, -0x80000000

    cmp-long v7, v3, v5

    if-nez v7, :cond_41

    :try_start_1d
    const-string v3, "CSJ_MediaDLPlay"

    const-string v4, "totalLength: wait"

    invoke-static {v3, v4}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b:Ljava/lang/Object;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_2d} :catch_35
    .catchall {:try_start_1d .. :try_end_2d} :catchall_5a

    const/16 v3, 0x4e20

    if-le v2, v3, :cond_14

    const-wide/16 v1, -0x1

    :try_start_33
    monitor-exit v0

    return-wide v1

    :catch_35
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "total length InterruptException"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_5a

    :goto_42
    const-string v0, "CSJ_MediaDLPlay"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "totalLength= "

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-wide v3, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a:J

    return-wide v0

    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method
