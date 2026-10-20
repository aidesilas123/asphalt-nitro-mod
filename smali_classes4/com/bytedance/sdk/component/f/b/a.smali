###### Class com.bytedance.sdk.component.f.b.a (com.bytedance.sdk.component.f.b.a)
.class public Lcom/bytedance/sdk/component/f/b/a;
.super Lcom/bytedance/sdk/component/f/b/c;
.source "DownloadExecutor.java"


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/b/a/k;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/b/c;-><init>(Lcom/bytedance/sdk/component/b/a/k;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)J
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/component/f/b/a;->f(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/b/a;->c()V

    return-void
.end method

.method static synthetic b(Ljava/util/Map;)Z
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/f/b/a;->e(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private c()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method static synthetic c(Ljava/util/Map;)Z
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/f/b/a;->g(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static e(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Accept-Ranges"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "bytes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    :cond_12
    const-string v0, "accept-ranges"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    return v2

    :cond_21
    const-string v0, "Content-Range"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v0, "content-range"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_38
    if-eqz v0, :cond_41

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    return v2
.end method

.method private static f(Ljava/util/Map;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string v0, "content-length"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1f

    :cond_f
    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_28

    return-wide v1

    :cond_28
    if-eqz p0, :cond_32

    :try_start_2a
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    :cond_32
    return-wide v1
.end method

.method private static g(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "gzip"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/f/b;
    .registers 29

    move-object/from16 v1, p0

    const-string v2, "Error occured when calling tmpFile.close"

    const-string v3, "Error occured when calling InputStream.close"

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    const/4 v4, 0x0

    if-eqz v0, :cond_2e6

    iget-object v5, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    if-nez v5, :cond_11

    goto/16 :goto_2e6

    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    new-instance v0, Lcom/bytedance/sdk/component/f/b;

    const/4 v8, 0x1

    const/16 v9, 0xc8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v10, "Success"

    move-object v7, v0

    move-wide v13, v15

    invoke-direct/range {v7 .. v16}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/f/b;->a(Ljava/io/File;)V

    return-object v0

    :cond_3b
    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gez v0, :cond_46

    move-wide v7, v5

    :cond_46
    new-instance v0, Lcom/bytedance/sdk/component/b/a/m$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/b/a/m$a;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/f/b/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/component/b/a/m$a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Range"

    invoke-virtual {v1, v11, v9}, Lcom/bytedance/sdk/component/f/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v11, "DownloadExecutor"

    if-eqz v9, :cond_7d

    const-string v0, "execute: Url is Empty"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_7d
    :try_start_7d
    iget-object v9, v1, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/m$a;
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_82} :catch_2de

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/f/b/c;->a(Lcom/bytedance/sdk/component/b/a/m$a;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/m$a;->a()Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/m$a;->b()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v0

    :try_start_8d
    iget-object v9, v1, Lcom/bytedance/sdk/component/f/b/c;->c:Lcom/bytedance/sdk/component/b/a/k;

    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/b/a/k;->a(Lcom/bytedance/sdk/component/b/a/m;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/b/a/b;->a()Lcom/bytedance/sdk/component/b/a/o;

    move-result-object v0

    if-eqz v0, :cond_2dc

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v9

    if-eqz v9, :cond_2dc

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->g()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v12

    if-eqz v12, :cond_bf

    const/4 v13, 0x0

    :goto_ab
    invoke-virtual {v12}, Lcom/bytedance/sdk/component/b/a/f;->a()I

    move-result v14

    if-ge v13, v14, :cond_bf

    invoke-virtual {v12, v13}, Lcom/bytedance/sdk/component/b/a/f;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13}, Lcom/bytedance/sdk/component/b/a/f;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_ab

    :cond_bf
    new-instance v15, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v13

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v14

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v19

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v21

    move-object v12, v15

    move-object/from16 v23, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v9

    move-object/from16 v17, v18

    move-wide/from16 v18, v19

    move-wide/from16 v20, v21

    invoke-direct/range {v12 .. v21}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/component/b/a/p;->a()J

    move-result-wide v12

    cmp-long v14, v12, v5

    if-gtz v14, :cond_f7

    invoke-static {v9}, Lcom/bytedance/sdk/component/f/b/a;->f(Ljava/util/Map;)J

    move-result-wide v12

    :cond_f7
    iget-object v14, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v9}, Lcom/bytedance/sdk/component/f/b/a;->e(Ljava/util/Map;)Z

    move-result v16

    if-eqz v16, :cond_164

    add-long/2addr v12, v14

    const-string v6, "Content-Range"

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_164

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x1

    sub-long v14, v12, v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_164

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute: The Content-Range Header is invalid Assume["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] vs Real["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], please remove the temporary file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/bytedance/sdk/component/f/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/component/f/b/a;->c()V

    const/4 v2, 0x0

    return-object v2

    :cond_164
    const-wide/16 v4, 0x0

    cmp-long v6, v12, v4

    if-lez v6, :cond_195

    iget-object v4, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_195

    iget-object v4, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v4, v12

    if-nez v6, :cond_195

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_18e

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    move-object/from16 v4, v23

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/component/f/b;->a(Ljava/io/File;)V

    return-object v4

    :cond_18e
    const-string v0, "Rename fail"

    invoke-static {v11, v0}, Lcom/bytedance/sdk/component/f/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_193} :catch_2d5

    const/4 v2, 0x0

    return-object v2

    :cond_195
    move-object/from16 v4, v23

    :try_start_197
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v5, v6, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a0
    .catchall {:try_start_197 .. :try_end_1a0} :catchall_1af

    if-eqz v16, :cond_1a7

    :try_start_1a2
    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide v14, v7

    goto :goto_1b1

    :cond_1a7
    const-wide/16 v14, 0x0

    invoke-virtual {v5, v14, v15}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1ac
    .catchall {:try_start_1a2 .. :try_end_1ac} :catchall_1ac

    :catchall_1ac
    :goto_1ac
    const-wide/16 v14, 0x0

    goto :goto_1b1

    :catchall_1af
    const/4 v5, 0x0

    goto :goto_1ac

    :goto_1b1
    :try_start_1b1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/p;->c()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1b9
    .catchall {:try_start_1b1 .. :try_end_1b9} :catchall_2a1

    :try_start_1b9
    invoke-static {v9}, Lcom/bytedance/sdk/component/f/b/a;->g(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    instance-of v0, v6, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_1c9

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    :cond_1c9
    const/16 v0, 0x4000

    new-array v0, v0, [B

    const/4 v9, 0x0

    const-wide/16 v21, 0x0

    :goto_1d0
    rsub-int v10, v9, 0x4000

    invoke-virtual {v6, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/16 v23, 0x1

    move-object/from16 v24, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_209

    add-int/2addr v9, v10

    move-wide/from16 v25, v12

    int-to-long v11, v10

    add-long v21, v21, v11

    const-wide/16 v10, 0x4000

    rem-long v10, v21, v10

    const-wide/16 v12, 0x0

    cmp-long v27, v10, v12

    if-eqz v27, :cond_1f6

    sub-long v12, v25, v7

    cmp-long v10, v21, v12

    if-nez v10, :cond_1f4

    goto :goto_1f6

    :cond_1f4
    const/16 v23, 0x0

    :cond_1f6
    :goto_1f6
    if-eqz v23, :cond_203

    invoke-virtual {v5, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v9, v9

    add-long/2addr v14, v9

    const/4 v9, 0x0

    goto :goto_204

    :cond_203
    const/4 v11, 0x0

    :goto_204
    move-object/from16 v11, v24

    move-wide/from16 v12, v25

    goto :goto_1d0

    :cond_209
    move-wide/from16 v25, v12

    const/4 v11, 0x0

    if-eqz v10, :cond_214

    invoke-virtual {v5, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5, v0, v11, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_214
    const-wide/16 v9, 0x0

    if-eqz v16, :cond_220

    cmp-long v0, v7, v9

    if-nez v0, :cond_21d

    goto :goto_220

    :cond_21d
    move-wide/from16 v12, v25

    goto :goto_226

    :cond_220
    :goto_220
    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    :goto_226
    cmp-long v0, v12, v9

    if-lez v0, :cond_26b

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26b

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v0, v7, v12

    if-nez v0, :cond_26b

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    iget-object v7, v1, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_25a

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/component/f/b;->a(Ljava/io/File;)V
    :try_end_24b
    .catchall {:try_start_1b9 .. :try_end_24b} :catchall_29f

    :try_start_24b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_24e
    .catchall {:try_start_24b .. :try_end_24e} :catchall_24f

    goto :goto_252

    :catchall_24f
    :try_start_24f
    invoke-static {v3}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_252
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_252} :catch_2d5

    :goto_252
    :try_start_252
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_255
    .catchall {:try_start_252 .. :try_end_255} :catchall_256

    goto :goto_259

    :catchall_256
    :try_start_256
    invoke-static {v2}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_2d5

    :goto_259
    return-object v4

    :cond_25a
    :try_start_25a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_25d
    .catchall {:try_start_25a .. :try_end_25d} :catchall_25e

    goto :goto_261

    :catchall_25e
    :try_start_25e
    invoke-static {v3}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_261
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_261} :catch_2d5

    :goto_261
    :try_start_261
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_264
    .catchall {:try_start_261 .. :try_end_264} :catchall_266

    :goto_264
    const/4 v2, 0x0

    goto :goto_26a

    :catchall_266
    :try_start_266
    invoke-static {v2}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_269
    .catch Ljava/io/IOException; {:try_start_266 .. :try_end_269} :catch_2d5

    goto :goto_264

    :goto_26a
    return-object v2

    :cond_26b
    :try_start_26b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " tempFile.length() == fileSize is"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v4, v7, v12

    if-nez v4, :cond_281

    const/4 v15, 0x1

    goto :goto_282

    :cond_281
    const/4 v15, 0x0

    :goto_282
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v24

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/f/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28e
    .catchall {:try_start_26b .. :try_end_28e} :catchall_29f

    :try_start_28e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_291
    .catchall {:try_start_28e .. :try_end_291} :catchall_292

    goto :goto_295

    :catchall_292
    :try_start_292
    invoke-static {v3}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_295
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_295} :catch_2d5

    :goto_295
    :try_start_295
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_298
    .catchall {:try_start_295 .. :try_end_298} :catchall_29a

    :goto_298
    const/4 v2, 0x0

    goto :goto_29e

    :catchall_29a
    :try_start_29a
    invoke-static {v2}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_29d
    .catch Ljava/io/IOException; {:try_start_29a .. :try_end_29d} :catch_2d5

    goto :goto_298

    :goto_29e
    return-object v2

    :catchall_29f
    move-exception v0

    goto :goto_2a3

    :catchall_2a1
    move-exception v0

    const/4 v6, 0x0

    :goto_2a3
    :try_start_2a3
    const-string v4, "Error occured when FileRequest.parseHttpResponse"

    invoke-static {v4}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-nez v16, :cond_2b0

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/component/f/b/a;->c()V
    :try_end_2b0
    .catchall {:try_start_2a3 .. :try_end_2b0} :catchall_2c3

    :cond_2b0
    if-eqz v6, :cond_2b9

    :try_start_2b2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2b5
    .catchall {:try_start_2b2 .. :try_end_2b5} :catchall_2b6

    goto :goto_2b9

    :catchall_2b6
    :try_start_2b6
    invoke-static {v3}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2b9} :catch_2d5

    :cond_2b9
    :goto_2b9
    :try_start_2b9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2bc
    .catchall {:try_start_2b9 .. :try_end_2bc} :catchall_2be

    :goto_2bc
    const/4 v2, 0x0

    goto :goto_2c2

    :catchall_2be
    :try_start_2be
    invoke-static {v2}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_2c1
    .catch Ljava/io/IOException; {:try_start_2be .. :try_end_2c1} :catch_2d5

    goto :goto_2bc

    :goto_2c2
    return-object v2

    :catchall_2c3
    move-exception v0

    if-eqz v6, :cond_2cd

    :try_start_2c6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2c9
    .catchall {:try_start_2c6 .. :try_end_2c9} :catchall_2ca

    goto :goto_2cd

    :catchall_2ca
    :try_start_2ca
    invoke-static {v3}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_2cd} :catch_2d5

    :cond_2cd
    :goto_2cd
    :try_start_2cd
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d0
    .catchall {:try_start_2cd .. :try_end_2d0} :catchall_2d1

    goto :goto_2d4

    :catchall_2d1
    :try_start_2d1
    invoke-static {v2}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    :goto_2d4
    throw v0
    :try_end_2d5
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_2d5} :catch_2d5

    :catch_2d5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/component/f/b/a;->c()V

    :cond_2dc
    const/4 v2, 0x0

    return-object v2

    :catch_2de
    move-object v2, v4

    move-object v4, v11

    const-string v0, "execute: Url is not a valid HTTP or HTTPS URL"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2e6
    :goto_2e6
    move-object v2, v4

    return-object v2
.end method

.method protected a(JJLcom/bytedance/sdk/component/f/a/a;)V
    .registers 12

    if-eqz p5, :cond_9

    move-object v0, p5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;JJ)V

    :cond_9
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/f/a/a;)V
    .registers 15

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    if-eqz v0, :cond_a9

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    if-nez v1, :cond_a

    goto/16 :goto_a9

    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v0, Lcom/bytedance/sdk/component/f/b;

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "Success"

    move-object v3, v0

    move-wide v9, v11

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/b;->a(Ljava/io/File;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V

    return-void

    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_44

    goto :goto_45

    :cond_44
    move-wide v1, v3

    :goto_45
    new-instance v0, Lcom/bytedance/sdk/component/b/a/m$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/b/a/m$a;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/component/b/a/m$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-virtual {p0, v4, v3}, Lcom/bytedance/sdk/component/f/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    return-void

    :cond_7f
    :try_start_7f
    iget-object v3, p0, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/m$a;
    :try_end_84
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_84} :catch_9e

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/f/b/c;->a(Lcom/bytedance/sdk/component/b/a/m$a;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/m$a;->a()Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/m$a;->b()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/f/b/c;->c:Lcom/bytedance/sdk/component/b/a/k;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/b/a/k;->a(Lcom/bytedance/sdk/component/b/a/m;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/component/f/b/a$1;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/bytedance/sdk/component/f/b/a$1;-><init>(Lcom/bytedance/sdk/component/f/b/a;Lcom/bytedance/sdk/component/f/a/a;J)V

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/component/b/a/b;->a(Lcom/bytedance/sdk/component/b/a/c;)V

    return-void

    :catch_9e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is not a valid HTTP or HTTPS URL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    return-void

    :cond_a9
    :goto_a9
    if-eqz p1, :cond_b5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File info is null, please exec setFileInfo(String dir, String fileName)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :cond_b5
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".temp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    return-void
.end method
