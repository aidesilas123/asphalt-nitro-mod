###### Class com.bytedance.sdk.component.d.c.a.a.b (com.bytedance.sdk.component.d.c.a.a.b)
.class public Lcom/bytedance/sdk/component/d/c/a/a/b;
.super Ljava/lang/Object;
.source "LruCountDiskCache.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/c;


# instance fields
.field private a:J

.field private b:Lcom/bytedance/sdk/component/d/c/a/a/a;


# direct methods
.method public constructor <init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/b;->a:J

    const v1, 0x134627e

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p2

    move-object v5, p4

    :try_start_c
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/d/c/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/b;->b:Lcom/bytedance/sdk/component/d/c/a/a/a;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_1d

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LruCountDiskCache"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/b;->b:Lcom/bytedance/sdk/component/d/c/a/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c/a/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$c;->a(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LruCountDiskCache"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-object v1
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/b;->b(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/d/c/a/a/b;->a(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;[B)Z
    .registers 9

    const-string v0, "LruCountDiskCache"

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/b;->b:Lcom/bytedance/sdk/component/d/c/a/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_82

    if-eqz p2, :cond_82

    if-nez p1, :cond_d

    goto/16 :goto_82

    :cond_d
    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_6a
    .catchall {:try_start_e .. :try_end_12} :catchall_68

    const-string v4, "save "

    if-nez v1, :cond_31

    :try_start_16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for edit null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_64
    .catchall {:try_start_16 .. :try_end_2d} :catchall_68

    invoke-static {v3}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return v2

    :cond_31
    :try_start_31
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    sget-object v5, Lcom/bytedance/sdk/component/d/c/a/a/a;->c:Ljava/io/OutputStream;

    if-ne v3, v5, :cond_54

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for null OutputStream"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_50} :catch_64
    .catchall {:try_start_31 .. :try_end_50} :catchall_68

    invoke-static {v3}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return v2

    :cond_54
    :try_start_54
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/b;->b:Lcom/bytedance/sdk/component/d/c/a/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5f} :catch_64
    .catchall {:try_start_54 .. :try_end_5f} :catchall_68

    invoke-static {v3}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    const/4 p1, 0x1

    return p1

    :catch_64
    move-exception p1

    move-object p2, v3

    move-object v3, v1

    goto :goto_6c

    :catchall_68
    move-exception p1

    goto :goto_7e

    :catch_6a
    move-exception p1

    move-object p2, v3

    :goto_6c
    :try_start_6c
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_7c

    if-eqz v3, :cond_78

    :try_start_75
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7c

    :catch_78
    :cond_78
    invoke-static {p2}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return v2

    :catchall_7c
    move-exception p1

    move-object v3, p2

    :goto_7e
    invoke-static {v3}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_82
    :goto_82
    return v2
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/b;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)[B
    .registers 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/b;->b:Lcom/bytedance/sdk/component/d/c/a/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    if-nez p1, :cond_8

    goto :goto_63

    :cond_8
    :try_start_8
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c/a/a/a$c;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_47
    .catchall {:try_start_8 .. :try_end_c} :catchall_44

    if-nez p1, :cond_15

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$c;->a(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_47
    .catchall {:try_start_16 .. :try_end_1a} :catchall_44

    if-eqz p1, :cond_36

    :try_start_1c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_33
    .catchall {:try_start_1c .. :try_end_21} :catchall_30

    const/16 v3, 0x400

    :try_start_23
    new-array v3, v3, [B

    :goto_25
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_37

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_25

    :catchall_30
    move-exception v0

    move-object v2, v1

    goto :goto_5b

    :catch_33
    move-exception v0

    move-object v2, v1

    goto :goto_4a

    :cond_36
    move-object v2, v1

    :cond_37
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3b} :catch_42
    .catchall {:try_start_23 .. :try_end_3b} :catchall_5a

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_42
    move-exception v0

    goto :goto_4a

    :catchall_44
    move-exception v0

    move-object v2, v1

    goto :goto_5c

    :catch_47
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    :goto_4a
    :try_start_4a
    const-string v3, "LruCountDiskCache"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_5a

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_5a
    move-exception v0

    :goto_5b
    move-object v1, p1

    :goto_5c
    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_63
    :goto_63
    return-object v1
.end method

.method public c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/b;->b:Lcom/bytedance/sdk/component/d/c/a/a/a;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c/a/a/a$c;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_11
    .catchall {:try_start_2 .. :try_end_8} :catchall_f

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return v0

    :catchall_f
    move-exception p1

    goto :goto_1f

    :catch_11
    move-exception p1

    :try_start_12
    const-string v2, "LruCountDiskCache"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return v0

    :goto_1f
    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    throw p1
.end method
