###### Class com.bytedance.sdk.component.f.b.a.AnonymousClass1 (com.bytedance.sdk.component.f.b.a$1)
.class Lcom/bytedance/sdk/component/f/b/a$1;
.super Ljava/lang/Object;
.source "DownloadExecutor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/f/b/a;->a(Lcom/bytedance/sdk/component/f/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/f/a/a;

.field final synthetic b:J

.field final synthetic c:Lcom/bytedance/sdk/component/f/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/f/b/a;Lcom/bytedance/sdk/component/f/a/a;J)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iput-wide p3, p0, Lcom/bytedance/sdk/component/f/b/a$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/b/a/b;Lcom/bytedance/sdk/component/b/a/o;)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error occured when calling tmpFile.close"

    const-string v3, "Error occured when calling InputStream.close"

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    if-eqz v0, :cond_2b1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_2b1

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->g()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v4

    if-eqz v4, :cond_2c

    const/4 v5, 0x0

    :goto_18
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/f;->a()I

    move-result v6

    if-ge v5, v6, :cond_2c

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/b/a/f;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/b/a/f;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2c
    new-instance v15, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v12

    move-object v4, v15

    move-object v8, v0

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v4

    if-eqz v4, :cond_2a9

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/b/a/p;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_60

    invoke-static {v0}, Lcom/bytedance/sdk/component/f/b/a;->a(Ljava/util/Map;)J

    move-result-wide v4

    :cond_60
    invoke-static {v0}, Lcom/bytedance/sdk/component/f/b/a;->b(Ljava/util/Map;)Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_d9

    iget-wide v10, v1, Lcom/bytedance/sdk/component/f/b/a$1;->b:J

    add-long/2addr v4, v10

    const-string v10, "Content-Range"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/bytedance/sdk/component/f/b/a$1;->b:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v12

    if-ne v12, v9, :cond_d9

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/f/b/a;->a(Lcom/bytedance/sdk/component/f/b/a;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Content-Range Header is invalid Assume["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] vs Real["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], please remove the temporary file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v5, v5, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    return-void

    :cond_d9
    move-wide v10, v4

    const-string v4, "Rename fail"

    cmp-long v5, v10, v6

    if-lez v5, :cond_128

    iget-object v5, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v5, v5, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_128

    iget-object v5, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v5, v5, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v5, v12, v10

    if-nez v5, :cond_128

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v2, v0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    iget-object v0, v0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_11b

    iget-object v5, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    move-wide v6, v10

    move-wide v8, v10

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/component/f/b/a;->a(JJLcom/bytedance/sdk/component/f/a/a;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/component/f/b;->a(Ljava/io/File;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    invoke-virtual {v0, v2, v15}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V

    goto :goto_127

    :cond_11b
    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :goto_127
    return-void

    :cond_128
    :try_start_128
    new-instance v12, Ljava/io/RandomAccessFile;

    iget-object v13, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v13, v13, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v12, v13, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_133
    .catchall {:try_start_128 .. :try_end_133} :catchall_144

    if-eqz v8, :cond_13e

    move-object v13, v15

    :try_start_136
    iget-wide v14, v1, Lcom/bytedance/sdk/component/f/b/a$1;->b:J

    invoke-virtual {v12, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v14, v1, Lcom/bytedance/sdk/component/f/b/a$1;->b:J

    goto :goto_147

    :cond_13e
    move-object v13, v15

    invoke-virtual {v12, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_142
    .catchall {:try_start_136 .. :try_end_142} :catchall_142

    :catchall_142
    :goto_142
    move-wide v14, v6

    goto :goto_147

    :catchall_144
    move-object v13, v15

    const/4 v12, 0x0

    goto :goto_142

    :goto_147
    :try_start_147
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/component/b/a/p;->c()Ljava/io/InputStream;

    move-result-object v5
    :try_end_14f
    .catchall {:try_start_147 .. :try_end_14f} :catchall_263

    :try_start_14f
    invoke-static {v0}, Lcom/bytedance/sdk/component/f/b/a;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_15f

    instance-of v0, v5, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_15f

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    :cond_15f
    const/16 v0, 0x4000

    new-array v0, v0, [B

    move-wide/from16 v18, v6

    const/4 v6, 0x0

    :goto_166
    rsub-int v7, v6, 0x4000

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/16 v16, 0x1

    if-eq v7, v9, :cond_1bb

    add-int/2addr v6, v7

    move-wide/from16 v23, v10

    int-to-long v9, v7

    add-long v9, v18, v9

    const-wide/16 v18, 0x4000

    rem-long v18, v9, v18
    :try_end_17a
    .catchall {:try_start_14f .. :try_end_17a} :catchall_25f

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_18e

    move-object v7, v2

    move-object v11, v3

    :try_start_182
    iget-wide v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->b:J

    sub-long v2, v23, v2

    cmp-long v18, v9, v2

    if-nez v18, :cond_18b

    goto :goto_190

    :cond_18b
    const/16 v16, 0x0

    goto :goto_190

    :cond_18e
    move-object v7, v2

    move-object v11, v3

    :goto_190
    if-eqz v16, :cond_19c

    invoke-virtual {v12, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v2, v6

    add-long/2addr v14, v2

    const/4 v6, 0x0

    :cond_19c
    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    move-object v3, v13

    move-wide/from16 v25, v14

    iget-wide v13, v1, Lcom/bytedance/sdk/component/f/b/a$1;->b:J

    add-long v17, v13, v9

    iget-object v13, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    move-object/from16 v16, v2

    move-wide/from16 v19, v23

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Lcom/bytedance/sdk/component/f/b/a;->a(JJLcom/bytedance/sdk/component/f/a/a;)V

    move-object v13, v3

    move-object v2, v7

    move-wide/from16 v18, v9

    move-object v3, v11

    move-wide/from16 v10, v23

    move-wide/from16 v14, v25

    const/4 v9, -0x1

    goto :goto_166

    :cond_1bb
    move-object v7, v2

    move-wide/from16 v23, v10

    move-object v11, v3

    move-object v3, v13

    if-nez v8, :cond_1d0

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    move-wide/from16 v25, v9

    goto :goto_1d2

    :catchall_1cd
    move-exception v0

    goto/16 :goto_267

    :cond_1d0
    move-wide/from16 v25, v23

    :goto_1d2
    const-wide/16 v9, 0x0

    cmp-long v0, v25, v9

    if-lez v0, :cond_224

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_224

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v0, v9, v25

    if-nez v0, :cond_224

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v2, v0, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    iget-object v0, v0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_217

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    move-object/from16 v22, v0

    move-wide/from16 v23, v25

    move-object/from16 v27, v2

    invoke-virtual/range {v22 .. v27}, Lcom/bytedance/sdk/component/f/b/a;->a(JJLcom/bytedance/sdk/component/f/a/a;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/f/b/a;->a:Ljava/io/File;

    move-object v2, v3

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/f/b;->a(Ljava/io/File;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v3, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V

    goto :goto_250

    :cond_217
    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    goto :goto_250

    :cond_224
    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " tempFile.length() == fileSize is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    iget-object v6, v6, Lcom/bytedance/sdk/component/f/b/a;->b:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v6, v9, v25

    if-nez v6, :cond_242

    const/4 v14, 0x1

    goto :goto_243

    :cond_242
    const/4 v14, 0x0

    :goto_243
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    :try_end_250
    .catchall {:try_start_182 .. :try_end_250} :catchall_1cd

    :goto_250
    :try_start_250
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_253
    .catchall {:try_start_250 .. :try_end_253} :catchall_254

    goto :goto_257

    :catchall_254
    invoke-static {v11}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    :goto_257
    :try_start_257
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25a
    .catchall {:try_start_257 .. :try_end_25a} :catchall_25b

    goto :goto_2b1

    :catchall_25b
    invoke-static {v7}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    goto :goto_2b1

    :catchall_25f
    move-exception v0

    move-object v7, v2

    move-object v11, v3

    goto :goto_267

    :catchall_263
    move-exception v0

    move-object v7, v2

    move-object v11, v3

    const/4 v5, 0x0

    :goto_267
    :try_start_267
    const-string v2, "Error occured when FileRequest.parseHttpResponse"

    invoke-static {v2}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v3, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    if-nez v8, :cond_286

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/f/b/a;->a(Lcom/bytedance/sdk/component/f/b/a;)V
    :try_end_286
    .catchall {:try_start_267 .. :try_end_286} :catchall_297

    :cond_286
    if-eqz v5, :cond_28f

    :try_start_288
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_28b
    .catchall {:try_start_288 .. :try_end_28b} :catchall_28c

    goto :goto_28f

    :catchall_28c
    invoke-static {v11}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    :cond_28f
    :goto_28f
    :try_start_28f
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_292
    .catchall {:try_start_28f .. :try_end_292} :catchall_293

    goto :goto_296

    :catchall_293
    invoke-static {v7}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    :goto_296
    return-void

    :catchall_297
    move-exception v0

    if-eqz v5, :cond_2a1

    :try_start_29a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29d
    .catchall {:try_start_29a .. :try_end_29d} :catchall_29e

    goto :goto_2a1

    :catchall_29e
    invoke-static {v11}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    :cond_2a1
    :goto_2a1
    :try_start_2a1
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a4
    .catchall {:try_start_2a1 .. :try_end_2a4} :catchall_2a5

    goto :goto_2a8

    :catchall_2a5
    invoke-static {v7}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;)V

    :goto_2a8
    throw v0

    :cond_2a9
    move-object v2, v15

    iget-object v0, v1, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v3, v1, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V

    :cond_2b1
    :goto_2b1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/a$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/a$1;->c:Lcom/bytedance/sdk/component/f/b/a;

    invoke-static {p1}, Lcom/bytedance/sdk/component/f/b/a;->a(Lcom/bytedance/sdk/component/f/b/a;)V

    return-void
.end method
