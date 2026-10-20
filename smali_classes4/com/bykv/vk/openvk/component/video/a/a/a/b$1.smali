###### Class com.bykv.vk.openvk.component.video.a.a.a.b.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.a.a.b$1)
.class Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;
.super Ljava/lang/Object;
.source "MediaDownloadPlayCacheImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/b/a/b;Lcom/bytedance/sdk/component/b/a/o;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz p2, :cond_27d

    const/4 v3, 0x0

    :try_start_6
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1fc

    :try_start_1b
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-eqz v4, :cond_39

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/p;->a()J

    move-result-wide v5

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v0, v5, v6}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;J)J

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/p;->c()Ljava/io/InputStream;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_1bb

    :cond_39
    if-nez v3, :cond_71

    if-eqz v3, :cond_43

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_43

    :catchall_41
    move-exception v0

    goto :goto_6d

    :cond_43
    :goto_43
    if-eqz v4, :cond_48

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/p;->close()V

    :cond_48
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->h(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_70

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)V
    :try_end_6c
    .catchall {:try_start_3d .. :try_end_6c} :catchall_41

    goto :goto_70

    :goto_6d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_70
    :goto_70
    return-void

    :cond_71
    const/16 v0, 0x2000

    :try_start_73
    new-array v0, v0, [B

    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v10, v7

    const/4 v9, 0x0

    :goto_7f
    rsub-int v12, v9, 0x2000

    invoke-virtual {v3, v0, v9, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v13, -0x1

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v14, 0xa

    const/16 v22, 0x1

    if-eq v12, v13, :cond_159

    add-int/2addr v9, v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2000

    rem-long v12, v10, v12

    cmp-long v23, v12, v7

    if-eqz v23, :cond_b9

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v12

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v7

    sub-long/2addr v12, v7

    cmp-long v7, v10, v12

    if-nez v7, :cond_b7

    goto :goto_b9

    :cond_b7
    const/4 v7, 0x0

    goto :goto_ba

    :cond_b9
    :goto_b9
    const/4 v7, 0x1

    :goto_ba
    const-string v8, "CSJ_MediaDLPlay"

    const/16 v12, 0xe

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "Write segment,execAppend ="

    aput-object v13, v12, v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v22

    const-string v13, " offset="

    aput-object v13, v12, v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v20

    const-string v13, " totalLength = "

    aput-object v13, v12, v19

    iget-object v13, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v18

    const-string v13, " saveSize ="

    aput-object v13, v12, v17

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v16

    const-string v13, " startSaved="

    aput-object v13, v12, v15

    iget-object v13, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v15, 0x9

    aput-object v13, v12, v15

    const-string v13, " fileHash="

    aput-object v13, v12, v14

    const/16 v13, 0xb

    iget-object v14, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v14}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xc

    const-string v14, " url="

    aput-object v14, v12, v13

    const/16 v13, 0xd

    iget-object v14, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v14}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v12}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_155

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->e(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_132
    .catchall {:try_start_73 .. :try_end_132} :catchall_1bb

    :try_start_132
    iget-object v8, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v8}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->f(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v12

    iget-object v13, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v0, v12, v9, v13}, Lcom/bykv/vk/openvk/component/video/a/e/b;->a(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    monitor-exit v7

    int-to-long v7, v9

    add-long/2addr v5, v7

    const/4 v9, 0x0

    goto :goto_155

    :catchall_152
    move-exception v0

    monitor-exit v7
    :try_end_154
    .catchall {:try_start_132 .. :try_end_154} :catchall_152

    :try_start_154
    throw v0

    :cond_155
    :goto_155
    const-wide/16 v7, 0x0

    goto/16 :goto_7f

    :cond_159
    const-string v0, "CSJ_MediaDLPlay"

    new-array v5, v14, [Ljava/lang/Object;

    const-string v6, "Write segment,Write over, startIndex ="

    aput-object v6, v5, v2

    iget-object v6, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v22

    const-string v6, " totalLength = "

    aput-object v6, v5, v21

    iget-object v6, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v20

    const-string v6, " saveSize = "

    aput-object v6, v5, v19

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v18

    const-string v6, " writeEndSegment ="

    aput-object v6, v5, v17

    iget-object v6, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v6

    iget-object v8, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v8}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v8, v10, v6

    if-nez v8, :cond_19d

    goto :goto_19f

    :cond_19d
    const/16 v22, 0x0

    :goto_19f
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v16

    const-string v6, " url="

    aput-object v6, v5, v15

    iget-object v6, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->d(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v5, v7

    invoke-static {v0, v5}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1ba
    .catchall {:try_start_154 .. :try_end_1ba} :catchall_1bb

    goto :goto_1cc

    :catchall_1bb
    move-exception v0

    goto :goto_1fe

    :cond_1bd
    :try_start_1bd
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->g(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;J)J
    :try_end_1cb
    .catchall {:try_start_1bd .. :try_end_1cb} :catchall_1fc

    move-object v4, v3

    :goto_1cc
    if-eqz v3, :cond_1d1

    :try_start_1ce
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1d1
    if-eqz v4, :cond_1d6

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/p;->close()V

    :cond_1d6
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_28b

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->h(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_28b

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)V
    :try_end_1fa
    .catchall {:try_start_1ce .. :try_end_1fa} :catchall_215

    goto/16 :goto_28b

    :catchall_1fc
    move-exception v0

    move-object v4, v3

    :goto_1fe
    :try_start_1fe
    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v5, v2}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;Z)Z

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->g(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;J)J

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_20f
    .catchall {:try_start_1fe .. :try_end_20f} :catchall_245

    if-eqz v3, :cond_217

    :try_start_211
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_217

    :catchall_215
    move-exception v0

    goto :goto_241

    :cond_217
    :goto_217
    if-eqz v4, :cond_21c

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/p;->close()V

    :cond_21c
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_28b

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->h(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_28b

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)V
    :try_end_240
    .catchall {:try_start_211 .. :try_end_240} :catchall_215

    goto :goto_28b

    :goto_241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28b

    :catchall_245
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_24f

    :try_start_249
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_24f

    :catchall_24d
    move-exception v0

    goto :goto_279

    :cond_24f
    :goto_24f
    if-eqz v4, :cond_254

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/p;->close()V

    :cond_254
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_27c

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->h(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_27c

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->i(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)V
    :try_end_278
    .catchall {:try_start_249 .. :try_end_278} :catchall_24d

    goto :goto_27c

    :goto_279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_27c
    :goto_27c
    throw v2

    :cond_27d
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->g(Lcom/bykv/vk/openvk/component/video/a/a/a/b;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;J)J

    :cond_28b
    :goto_28b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V
    .registers 5

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;Z)Z

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/a/b$1;->a:Lcom/bykv/vk/openvk/component/video/a/a/a/b;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/a/a/a/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/a/b;J)J

    return-void
.end method
