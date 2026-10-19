###### Class com.bykv.vk.openvk.component.video.a.a.b.b.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.a.b.b$1)
.class Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;
.super Ljava/lang/Object;
.source "ReallyVideoPreload.java"

# interfaces
.implements Lcom/bytedance/sdk/component/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/a/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/a/b/b;J)V
    .registers 4

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    iput-wide p2, p0, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/b/a/b;Lcom/bytedance/sdk/component/b/a/o;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-wide v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->a:J

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v8, " Preload size="

    const/4 v9, 0x2

    const-string v10, "Pre finally "

    const/4 v11, 0x4

    const-string v12, "VideoPreload"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_1dd

    :try_start_14
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1d9

    if-nez v0, :cond_77

    :try_start_1a
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v3, v4, v15}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Lcom/bykv/vk/openvk/component/video/api/c/c;ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_6e

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v10, v0, v14

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    aput-object v8, v0, v9

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v12, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_64
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/c;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    return-void

    :catchall_6e
    move-exception v0

    move-object v7, v6

    move-object/from16 p1, v8

    const/16 v5, 0x259

    move-object v8, v7

    goto/16 :goto_23e

    :cond_77
    :try_start_77
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v15
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_1d9

    :try_start_7b
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v15
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_1d2

    const-wide/16 v16, 0x0

    if-eqz v0, :cond_9b

    if-eqz v15, :cond_9b

    move-object/from16 p1, v8

    :try_start_87
    iget-wide v7, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->a:J

    invoke-virtual {v15}, Lcom/bytedance/sdk/component/b/a/p;->a()J

    move-result-wide v18

    add-long v7, v7, v18

    invoke-virtual {v15}, Lcom/bytedance/sdk/component/b/a/p;->c()Ljava/io/InputStream;

    move-result-object v0
    :try_end_93
    .catchall {:try_start_87 .. :try_end_93} :catchall_97

    move-wide/from16 v18, v7

    move-object v7, v0

    goto :goto_a0

    :catchall_97
    move-exception v0

    move-object v7, v6

    move-object v8, v7

    goto :goto_f1

    :cond_9b
    move-object/from16 p1, v8

    move-object v7, v6

    move-wide/from16 v18, v16

    :goto_a0
    if-nez v7, :cond_f6

    :try_start_a2
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v4, v8}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Lcom/bykv/vk/openvk/component/video/api/c/c;ILjava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_a2 .. :try_end_b3} :catchall_ef

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v7}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v10, v0, v14

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    aput-object p1, v0, v9

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v12, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_64

    :catchall_ef
    move-exception v0

    move-object v8, v6

    :goto_f1
    move-object v6, v15

    const/16 v5, 0x259

    goto/16 :goto_23e

    :cond_f6
    :try_start_f6
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Ljava/io/File;

    move-result-object v0

    const-string v6, "rw"

    invoke-direct {v8, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_f6 .. :try_end_103} :catchall_1cd

    const/16 v0, 0x2000

    :try_start_105
    new-array v0, v0, [B

    move-wide/from16 v20, v16

    const/4 v6, 0x0

    :goto_10a
    rsub-int v5, v6, 0x2000

    invoke-virtual {v7, v0, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_19c

    iget-object v9, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v9}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->c(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Z

    move-result v9

    if-eqz v9, :cond_165

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Lcom/bykv/vk/openvk/component/video/api/c/c;I)V
    :try_end_128
    .catchall {:try_start_105 .. :try_end_128} :catchall_1ca

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v8}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v7}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v10, v0, v14

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    const/4 v2, 0x2

    aput-object p1, v0, v2

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v12, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_64

    :cond_165
    add-int/2addr v6, v5

    int-to-long v13, v5

    add-long v20, v20, v13

    const-wide/16 v13, 0x2000

    :try_start_16b
    rem-long v13, v20, v13

    cmp-long v5, v13, v16

    if-eqz v5, :cond_17c

    iget-wide v13, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->a:J

    sub-long v13, v18, v13

    cmp-long v5, v20, v13

    if-nez v5, :cond_17a

    goto :goto_17c

    :cond_17a
    const/4 v5, 0x0

    goto :goto_17d

    :cond_17c
    :goto_17c
    const/4 v5, 0x1

    :goto_17d
    if-eqz v5, :cond_197

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iget-object v13, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v0, v5, v6, v13}, Lcom/bykv/vk/openvk/component/video/a/e/b;->a(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    int-to-long v5, v6

    add-long/2addr v3, v5

    const/4 v6, 0x0

    :cond_197
    const/4 v9, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_10a

    :cond_19c
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1bb

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v18, v3

    if-nez v0, :cond_1bb

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->d(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)V

    :cond_1bb
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->b(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Lcom/bykv/vk/openvk/component/video/api/c/c;I)V
    :try_end_1c8
    .catchall {:try_start_16b .. :try_end_1c8} :catchall_1ca

    move-object v6, v8

    goto :goto_1ef

    :catchall_1ca
    move-exception v0

    goto/16 :goto_f1

    :catchall_1cd
    move-exception v0

    move-object v6, v15

    const/16 v5, 0x259

    goto :goto_23d

    :catchall_1d2
    move-exception v0

    move-object/from16 p1, v8

    move-object v6, v15

    const/16 v5, 0x259

    goto :goto_23c

    :catchall_1d9
    move-exception v0

    move-object/from16 p1, v8

    goto :goto_239

    :cond_1dd
    move-object/from16 p1, v8

    :try_start_1df
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    const-string v4, "Network link failed."
    :try_end_1e7
    .catchall {:try_start_1df .. :try_end_1e7} :catchall_238

    const/16 v5, 0x259

    :try_start_1e9
    invoke-static {v0, v3, v5, v4}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Lcom/bykv/vk/openvk/component/video/api/c/c;ILjava/lang/String;)V
    :try_end_1ec
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_236

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_1ef
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v7}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    new-array v0, v11, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p1, v0, v2

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v12, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_22c
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/c;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    goto :goto_297

    :catchall_236
    move-exception v0

    goto :goto_23b

    :catchall_238
    move-exception v0

    :goto_239
    const/16 v5, 0x259

    :goto_23b
    const/4 v6, 0x0

    :goto_23c
    const/4 v7, 0x0

    :goto_23d
    const/4 v8, 0x0

    :goto_23e
    :try_start_23e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->e(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v4

    if-eqz v2, :cond_252

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v5

    :cond_252
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Lcom/bykv/vk/openvk/component/video/api/c/c;ILjava/lang/String;)V
    :try_end_259
    .catchall {:try_start_23e .. :try_end_259} :catchall_298

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v8}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v7}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    new-array v0, v11, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p1, v0, v2

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v12, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22c

    :goto_297
    return-void

    :catchall_298
    move-exception v0

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3, v8}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3, v7}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3, v6}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Ljava/io/Closeable;)V

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v12, v2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v2

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/a/b/c;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V
    .registers 5

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x259

    invoke-static {p1, v0, v1, p2}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;Lcom/bykv/vk/openvk/component/video/api/c/c;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/a/b/b$1;->b:Lcom/bykv/vk/openvk/component/video/a/a/b/b;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/a/b/b;->a(Lcom/bykv/vk/openvk/component/video/a/a/b/b;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/a/b/c;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    return-void
.end method
