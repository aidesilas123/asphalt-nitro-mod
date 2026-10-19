###### Class com.mbridge.msdk.foundation.same.net.e.a (com.mbridge.msdk.foundation.same.net.e.a)
.class public Lcom/mbridge/msdk/foundation/same/net/e/a;
.super Lcom/mbridge/msdk/foundation/same/net/j;
.source "FileDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mbridge/msdk/foundation/same/net/j<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mbridge/msdk/foundation/same/net/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/same/net/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/mbridge/msdk/foundation/same/net/j;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/e/a;->d:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/e/a;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/mbridge/msdk/foundation/same/net/f/c;)Lcom/mbridge/msdk/foundation/same/net/l;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/f/c;",
            ")",
            "Lcom/mbridge/msdk/foundation/same/net/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/j;->d()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/e/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/e/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3c

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/e/a;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/e/a;->d:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/l;->a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/f/c;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object p1

    return-object p1

    :cond_2b
    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/e/a;->c:Ljava/lang/String;

    const-string v2, "Can\'t rename the download temporary file!"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    invoke-direct {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/l;->a(Lcom/mbridge/msdk/foundation/same/net/b/a;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object p1

    return-object p1

    :cond_3c
    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/e/a;->c:Ljava/lang/String;

    const-string v2, "Download temporary file was invalid!"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    invoke-direct {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/l;->a(Lcom/mbridge/msdk/foundation/same/net/b/a;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object p1

    return-object p1

    :cond_4d
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/l;->a(Lcom/mbridge/msdk/foundation/same/net/b/a;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/net/f/b;Lcom/mbridge/msdk/foundation/same/net/c;)[B
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v8, "Error occured when calling InputStream.close"

    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/g/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_20

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_21

    :cond_20
    move-wide v9, v2

    :goto_21
    cmp-long v0, v9, v2

    if-gtz v0, :cond_2c

    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/e/a;->c:Ljava/lang/String;

    const-string v4, "Response doesn\'t present Content-Length!"

    invoke-static {v1, v4}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const/4 v11, 0x0

    if-lez v0, :cond_4a

    iget-object v0, v7, Lcom/mbridge/msdk/foundation/same/net/e/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v4, v0, v9

    if-nez v4, :cond_4a

    iget-object v0, v7, Lcom/mbridge/msdk/foundation/same/net/e/a;->d:Ljava/io/File;

    iget-object v1, v7, Lcom/mbridge/msdk/foundation/same/net/e/a;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-wide v3, v9

    move-wide v5, v9

    invoke-interface/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/net/c;->a(Lcom/mbridge/msdk/foundation/same/net/j;JJ)V

    return-object v11

    :cond_4a
    new-instance v12, Ljava/io/RandomAccessFile;

    iget-object v0, v7, Lcom/mbridge/msdk/foundation/same/net/e/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rw"

    invoke-direct {v12, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :try_start_5a
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/f/b;->c()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_b2

    :try_start_5e
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/g/b;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_73

    instance-of v0, v1, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_73

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_71
    .catchall {:try_start_5e .. :try_end_71} :catchall_af

    move-object v13, v0

    goto :goto_74

    :cond_73
    move-object v13, v1

    :goto_74
    const/16 v0, 0x1800

    :try_start_76
    new-array v0, v0, [B

    :goto_78
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_9f

    const/4 v4, 0x0

    invoke-virtual {v12, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v1

    add-long v14, v2, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-wide v3, v9

    move-wide v5, v14

    invoke-interface/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/net/c;->a(Lcom/mbridge/msdk/foundation/same/net/j;JJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/foundation/same/net/j;->d()Z

    move-result v1

    if-eqz v1, :cond_9b

    move-object/from16 v1, p2

    invoke-interface {v1, v7}, Lcom/mbridge/msdk/foundation/same/net/c;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V
    :try_end_9a
    .catchall {:try_start_76 .. :try_end_9a} :catchall_ac

    goto :goto_9f

    :cond_9b
    move-object/from16 v1, p2

    move-wide v2, v14

    goto :goto_78

    :cond_9f
    :goto_9f
    :try_start_9f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_a8

    :catch_a3
    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/e/a;->c:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a8
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    return-object v11

    :catchall_ac
    move-exception v0

    move-object v11, v13

    goto :goto_b3

    :catchall_af
    move-exception v0

    move-object v11, v1

    goto :goto_b3

    :catchall_b2
    move-exception v0

    :goto_b3
    if-eqz v11, :cond_be

    :try_start_b5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_be

    :catch_b9
    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/e/a;->c:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public final h()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
