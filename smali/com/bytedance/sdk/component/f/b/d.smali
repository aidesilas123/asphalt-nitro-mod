###### Class com.bytedance.sdk.component.f.b.d (com.bytedance.sdk.component.f.b.d)
.class public Lcom/bytedance/sdk/component/f/b/d;
.super Lcom/bytedance/sdk/component/f/b/c;
.source "PostExecutor.java"


# instance fields
.field a:Lcom/bytedance/sdk/component/b/a/n;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/b/a/k;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/b/c;-><init>(Lcom/bytedance/sdk/component/b/a/k;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/b/a/p;)Lcom/bytedance/sdk/component/b/a/i;
    .registers 2

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/p;->e()Lcom/bytedance/sdk/component/b/a/i;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/b/a/p;)Lcom/bytedance/sdk/component/b/a/i;
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/b/a/p;)Lcom/bytedance/sdk/component/b/a/i;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/component/b/a/i;)Ljava/nio/charset/Charset;
    .registers 3

    if-eqz p1, :cond_9

    :try_start_2
    sget-object v0, Lcom/bytedance/sdk/component/b/a/b/i;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/i;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_b

    :cond_9
    sget-object p1, Lcom/bytedance/sdk/component/b/a/b/i;->a:Ljava/nio/charset/Charset;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    :goto_b
    return-object p1

    :catch_c
    sget-object p1, Lcom/bytedance/sdk/component/b/a/b/i;->a:Ljava/nio/charset/Charset;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/b/a/i;)Ljava/nio/charset/Charset;
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/b/a/i;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/f/b;Lcom/bytedance/sdk/component/b/a/o;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/f/b;Lcom/bytedance/sdk/component/b/a/o;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/f/b;Lcom/bytedance/sdk/component/b/a/o;)V
    .registers 3

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->i()Lcom/bytedance/sdk/component/b/a/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/f/b;->a(Lcom/bytedance/sdk/component/b/a/j;)V

    :cond_b
    return-void
.end method

.method private d(Ljava/lang/String;)[B
    .registers 7

    const-string v0, "PostExecutor"

    const/4 v1, 0x0

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_8e

    :cond_d
    const/4 v2, 0x0

    new-array v2, v2, [B

    :try_start_10
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_4d
    .catchall {:try_start_10 .. :try_end_15} :catchall_4a

    :try_start_15
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_48
    .catchall {:try_start_15 .. :try_end_1a} :catchall_46

    :try_start_1a
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_43
    .catchall {:try_start_1a .. :try_end_23} :catchall_40

    :try_start_23
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :try_start_33
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_6d

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :catchall_40
    move-exception p1

    move-object v1, v4

    goto :goto_6e

    :catch_43
    move-exception p1

    move-object v1, v4

    goto :goto_4f

    :catchall_46
    move-exception p1

    goto :goto_6e

    :catch_48
    move-exception p1

    goto :goto_4f

    :catchall_4a
    move-exception p1

    move-object v3, v1

    goto :goto_6e

    :catch_4d
    move-exception p1

    move-object v3, v1

    :goto_4f
    :try_start_4f
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_46

    if-eqz v1, :cond_64

    :try_start_58
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_64

    :catch_5c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :try_start_6a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_37

    :cond_6d
    :goto_6d
    return-object v2

    :goto_6e
    if-eqz v1, :cond_7c

    :try_start_70
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_7c

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    :goto_7c
    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    :try_start_81
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_8d

    :catch_85
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    throw p1

    :cond_8e
    :goto_8e
    return-object v1
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/f/b;
    .registers 15

    const-string v0, "content-type"

    :try_start_2
    new-instance v1, Lcom/bytedance/sdk/component/b/a/m$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/b/a/m$a;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_12e

    const-string v3, "PostExecutor"

    if-eqz v2, :cond_29

    :try_start_11
    const-string v0, "execute: Url is Empty"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/f/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/component/f/b;

    const/4 v5, 0x0

    const/16 v6, 0x1388

    const-string v7, "URL_NULL_MSG"

    const/4 v8, 0x0

    const-string v9, "URL_NULL_BODY"

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    :cond_29
    iget-object v2, p0, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/m$a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    if-nez v2, :cond_4a

    const-string v0, "RequestBody is null, content type is not support!!"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/f/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/component/f/b;

    const/4 v5, 0x0

    const/16 v6, 0x1388

    const-string v7, "BODY_NULL_MSG"

    const/4 v8, 0x0

    const-string v9, "BODY_NULL_BODY"

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    :cond_4a
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/f/b/c;->a(Lcom/bytedance/sdk/component/b/a/m$a;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/component/b/a/m$a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Lcom/bytedance/sdk/component/b/a/n;)Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/m$a;->b()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/f/b/c;->c:Lcom/bytedance/sdk/component/b/a/k;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/b/a/k;->a(Lcom/bytedance/sdk/component/b/a/m;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/b/a/b;->a()Lcom/bytedance/sdk/component/b/a/o;

    move-result-object v1

    if-eqz v1, :cond_12c

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->g()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v2

    if-eqz v2, :cond_9e

    const/4 v3, 0x0

    :goto_76
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/b/a/f;->a()I

    move-result v4

    if-ge v3, v4, :cond_9e

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/b/a/f;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/b/a/f;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_9b

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    if-nez v5, :cond_94

    const-string v4, ""

    goto :goto_98

    :cond_94
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_98
    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_9e
    invoke-static {v6}, Lcom/bytedance/sdk/component/f/d/a;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/p;->d()[B

    move-result-object v0

    new-instance v12, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/component/f/b;->a([B)V

    goto :goto_128

    :cond_cb
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/b/c;->g:Z

    if-eqz v0, :cond_106

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/p;->d()[B

    move-result-object v0

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/b/a/p;)Lcom/bytedance/sdk/component/b/a/i;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/b/a/i;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v12, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/component/f/b;->a([B)V

    goto :goto_128

    :cond_106
    new-instance v12, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->d()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/p;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->b()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/o;->a()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    :goto_128
    invoke-direct {p0, v12, v1}, Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/f/b;Lcom/bytedance/sdk/component/b/a/o;)V
    :try_end_12b
    .catchall {:try_start_11 .. :try_end_12b} :catchall_12e

    return-object v12

    :cond_12c
    const/4 v0, 0x0

    return-object v0

    :catchall_12e
    move-exception v0

    new-instance v11, Lcom/bytedance/sdk/component/f/b;

    const/4 v2, 0x0

    const/16 v3, 0x1389

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    const-string v6, "BODY_NULL_BODY"

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v11
.end method

.method public a(Lcom/bytedance/sdk/component/f/a/a;)V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/b/a/m$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/b/a/m$a;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    return-void

    :cond_18
    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/m$a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    if-nez v1, :cond_2e

    if-eqz p1, :cond_2d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "RequestBody is null, content type is not support!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :cond_2d
    return-void

    :cond_2e
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/f/b/c;->a(Lcom/bytedance/sdk/component/b/a/m$a;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/component/b/a/m$a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Lcom/bytedance/sdk/component/b/a/n;)Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/m$a;->b()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/b/c;->c:Lcom/bytedance/sdk/component/b/a/k;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/b/a/k;->a(Lcom/bytedance/sdk/component/b/a/m;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/f/b/d$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/f/b/d$1;-><init>(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/f/a/a;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/b/a/b;->a(Lcom/bytedance/sdk/component/b/a/c;)V
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_51

    goto :goto_61

    :catchall_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :goto_61
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_13

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/b/d;->d(Ljava/lang/String;)[B

    move-result-object p1

    const-string p2, "application/json; charset=utf-8"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/component/f/b/d;->a(Ljava/lang/String;[B)V

    const-string p1, "Content-Encoding"

    const-string p2, "gzip"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/f/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_13
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/f/b/d;->c(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 3

    invoke-static {p1}, Lcom/bytedance/sdk/component/b/a/i;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/i;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/b/a/n;->a(Lcom/bytedance/sdk/component/b/a/i;[B)Lcom/bytedance/sdk/component/b/a/n;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_7
    const-string p1, "{}"

    :goto_9
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/b/a/i;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/i;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/b/a/n;->a(Lcom/bytedance/sdk/component/b/a/i;Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/n;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    return-void
.end method

.method public c()Lcom/bytedance/sdk/component/b/a/n;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "{}"

    :cond_8
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/b/a/i;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/i;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/b/a/n;->a(Lcom/bytedance/sdk/component/b/a/i;Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/n;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/b/d;->a:Lcom/bytedance/sdk/component/b/a/n;

    return-void
.end method
