###### Class com.tapjoy.internal.n3 (com.tapjoy.internal.n3)
.class public final Lcom/tapjoy/internal/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/h0;

.field public static final b:Lcom/tapjoy/internal/e3;


# instance fields
.field public final c:Ljava/net/URL;

.field public d:Landroid/graphics/Bitmap;

.field public e:[B

.field public f:Lcom/tapjoy/internal/s4;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/v3;

    invoke-direct {v0}, Lcom/tapjoy/internal/v3;-><init>()V

    instance-of v1, v0, Lcom/tapjoy/internal/m7;

    if-eqz v1, :cond_a

    goto :goto_10

    :cond_a
    new-instance v1, Lcom/tapjoy/internal/c2;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/c2;-><init>(Lcom/tapjoy/internal/v3;)V

    move-object v0, v1

    :goto_10
    sput-object v0, Lcom/tapjoy/internal/n3;->a:Lcom/tapjoy/internal/h0;

    new-instance v0, Lcom/tapjoy/internal/e3;

    invoke-direct {v0}, Lcom/tapjoy/internal/e3;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/b4;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->r()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    goto :goto_33

    :cond_10
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->r()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    goto :goto_17

    :cond_2c
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_17

    :cond_30
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    :goto_33
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .registers 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_93

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/tapjoy/internal/j5;

    invoke-direct {v1}, Lcom/tapjoy/internal/j5;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_4a

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v2, v1, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    iget-object v5, v1, Lcom/tapjoy/internal/j5;->a:[B

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([BB)V

    new-instance v5, Lcom/tapjoy/internal/s4;

    invoke-direct {v5}, Lcom/tapjoy/internal/s4;-><init>()V

    iput-object v5, v1, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iput v4, v1, Lcom/tapjoy/internal/j5;->d:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v1, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v1, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_51

    :cond_4a
    iput-object v2, v1, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    const/4 v4, 0x2

    iput v4, v3, Lcom/tapjoy/internal/s4;->b:I

    :goto_51
    invoke-virtual {v1}, Lcom/tapjoy/internal/j5;->c()Lcom/tapjoy/internal/s4;

    move-result-object v1

    iget v3, v1, Lcom/tapjoy/internal/s4;->b:I

    if-nez v3, :cond_5e

    iput-object p1, p0, Lcom/tapjoy/internal/n3;->e:[B

    iput-object v1, p0, Lcom/tapjoy/internal/n3;->f:Lcom/tapjoy/internal/s4;

    goto :goto_92

    :cond_5e
    sget-object p1, Lcom/tapjoy/internal/i9;->a:Lcom/tapjoy/internal/i9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    :goto_64
    :try_start_64
    instance-of v1, v0, Lcom/tapjoy/internal/u9;

    if-eqz v1, :cond_6e

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_6c
    move-object v2, p1

    goto :goto_8a

    :cond_6e
    new-instance v1, Lcom/tapjoy/internal/u9;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/u9;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_77
    .catch Ljava/lang/OutOfMemoryError; {:try_start_64 .. :try_end_77} :catch_7a
    .catchall {:try_start_64 .. :try_end_77} :catchall_78

    goto :goto_6c

    :catchall_78
    move-exception p1

    goto :goto_86

    :catch_7a
    move-exception v1

    const/16 v3, 0xa

    if-ge p1, v3, :cond_85

    :try_start_7f
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_64

    :cond_85
    throw v1
    :try_end_86
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7f .. :try_end_86} :catch_8a
    .catchall {:try_start_7f .. :try_end_86} :catchall_78

    :goto_86
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1

    :catch_8a
    :goto_8a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v2, p0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    :goto_92
    return-object v0

    :cond_93
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_9
.end method

.method public final c()V
    .registers 16

    sget-object v0, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    iget-object v0, v0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    const-string v1, "mm_external_cache_enabled"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/c4;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1d

    sget-object v2, Lcom/tapjoy/internal/n3;->a:Lcom/tapjoy/internal/h0;

    iget-object v3, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/h0;->a(Ljava/net/URL;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1d

    return-void

    :cond_1d
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_cc

    sget-object v4, Lcom/tapjoy/internal/m2;->a:Lcom/tapjoy/internal/m2;

    iget-object v5, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    iget-object v6, v4, Lcom/tapjoy/internal/m2;->b:Landroid/content/Context;

    const/4 v7, 0x0

    if-nez v6, :cond_2b

    goto :goto_94

    :cond_2b
    monitor-enter v4

    :try_start_2c
    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/m2;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v8, v4, Lcom/tapjoy/internal/m2;->e:Ljava/io/File;

    if-nez v8, :cond_45

    new-instance v8, Ljava/io/File;

    iget-object v9, v4, Lcom/tapjoy/internal/m2;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "tapjoy_mm_cache"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v4, Lcom/tapjoy/internal/m2;->e:Ljava/io/File;

    :cond_45
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_4e

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_4e
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_57

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_57
    invoke-direct {v6, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_62

    monitor-exit v4

    goto :goto_94

    :cond_62
    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    move-result-wide v8

    iget-object v10, v4, Lcom/tapjoy/internal/m2;->c:Landroid/content/SharedPreferences;

    invoke-interface {v10, v5, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v12, v10, v8

    if-ltz v12, :cond_72

    monitor-exit v4

    goto :goto_95

    :cond_72
    cmp-long v8, v10, v2

    if-eqz v8, :cond_90

    iget-object v8, v4, Lcom/tapjoy/internal/m2;->c:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v8, v4, Lcom/tapjoy/internal/m2;->d:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_90
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    monitor-exit v4
    :try_end_94
    .catchall {:try_start_2c .. :try_end_94} :catchall_c9

    :goto_94
    move-object v6, v7

    :goto_95
    if-eqz v6, :cond_cc

    :try_start_97
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9c} :catch_ad
    .catchall {:try_start_97 .. :try_end_9c} :catchall_a8

    :try_start_9c
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/n3;->b(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a6
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a3

    invoke-static {v4}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    goto :goto_b0

    :catchall_a3
    move-exception v0

    move-object v7, v4

    goto :goto_a9

    :catch_a6
    move-object v7, v4

    goto :goto_ad

    :catchall_a8
    move-exception v0

    :goto_a9
    invoke-static {v7}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_ad
    :goto_ad
    invoke-static {v7}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    :goto_b0
    iget-object v4, p0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-nez v4, :cond_bd

    iget-object v5, p0, Lcom/tapjoy/internal/n3;->e:[B

    if-eqz v5, :cond_b9

    goto :goto_bd

    :cond_b9
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_cc

    :cond_bd
    :goto_bd
    if-eqz v1, :cond_c8

    if-eqz v4, :cond_c8

    sget-object v0, Lcom/tapjoy/internal/n3;->a:Lcom/tapjoy/internal/h0;

    iget-object v1, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    invoke-interface {v0, v1, v4}, Lcom/tapjoy/internal/h0;->a(Ljava/net/URL;Landroid/graphics/Bitmap;)V

    :cond_c8
    return-void

    :catchall_c9
    move-exception v0

    :try_start_ca
    monitor-exit v4
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v0

    :cond_cc
    :goto_cc
    iget-object v4, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    const-string v5, "Cache-Control"

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_105

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_e7
    if-ge v8, v6, :cond_105

    aget-object v9, v5, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "max-age="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_102

    const/16 v5, 0x8

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :try_start_fd
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_101
    .catch Ljava/lang/NumberFormatException; {:try_start_fd .. :try_end_101} :catch_105

    goto :goto_105

    :cond_102
    add-int/lit8 v8, v8, 0x1

    goto :goto_e7

    :catch_105
    :cond_105
    :goto_105
    move-wide v13, v2

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/n3;->b(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v12

    invoke-static {v2}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    sget-object v10, Lcom/tapjoy/internal/m2;->a:Lcom/tapjoy/internal/m2;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0xe10

    cmp-long v4, v13, v2

    if-ltz v4, :cond_11d

    const/4 v7, 0x1

    :cond_11d
    if-eqz v7, :cond_13b

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_129

    iget-object v0, p0, Lcom/tapjoy/internal/n3;->e:[B

    if-eqz v0, :cond_13b

    :cond_129
    iget-object v11, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    iget-object v0, v10, Lcom/tapjoy/internal/m2;->b:Landroid/content/Context;

    if-nez v0, :cond_130

    goto :goto_13b

    :cond_130
    iget-object v0, v10, Lcom/tapjoy/internal/m2;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/tapjoy/internal/p1;

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/tapjoy/internal/p1;-><init>(Lcom/tapjoy/internal/m2;Ljava/net/URL;Ljava/io/ByteArrayInputStream;J)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_13b
    :goto_13b
    if-eqz v1, :cond_148

    iget-object v0, p0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_148

    sget-object v1, Lcom/tapjoy/internal/n3;->a:Lcom/tapjoy/internal/h0;

    iget-object v2, p0, Lcom/tapjoy/internal/n3;->c:Ljava/net/URL;

    invoke-interface {v1, v2, v0}, Lcom/tapjoy/internal/h0;->a(Ljava/net/URL;Landroid/graphics/Bitmap;)V

    :cond_148
    return-void
.end method
