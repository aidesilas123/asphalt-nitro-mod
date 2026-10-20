###### Class com.mbridge.msdk.foundation.same.report.t (com.mbridge.msdk.foundation.same.report.t)
.class public final Lcom/mbridge/msdk/foundation/same/report/t;
.super Lcom/mbridge/msdk/e/a/a/a;
.source "SocketStack.java"


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/report/t;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/e/a/a/a;-><init>()V

    iput-byte p1, p0, Lcom/mbridge/msdk/foundation/same/report/t;->a:B

    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private static a(Ljava/net/Socket;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .registers 2

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/e/a/m;Ljava/util/Map;)Lcom/mbridge/msdk/e/a/a/f;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/e/a/a/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean p2, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz p2, :cond_2a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SocketStack executeRequest "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TrackManager_Volley"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 p2, 0x0

    :try_start_2b
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->e()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_152

    :try_start_38
    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_14c

    if-eqz v1, :cond_144

    const/16 v2, 0x8

    :try_start_47
    new-array v3, v2, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_141

    :try_start_4d
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-byte v5, p0, Lcom/mbridge/msdk/foundation/same/report/t;->a:B

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->n()[B

    move-result-object p1

    const/4 v5, 0x1

    if-eqz p1, :cond_67

    array-length v6, p1

    if-nez v6, :cond_62

    goto :goto_67

    :cond_62
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_6a

    :cond_67
    :goto_67
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_6a
    sget-object v6, Lcom/mbridge/msdk/foundation/same/report/t;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    if-eqz p1, :cond_a7

    array-length v7, p1

    if-nez v7, :cond_7b

    goto :goto_a7

    :cond_7b
    array-length v7, p1

    if-nez v7, :cond_80

    move-object p1, p2

    goto :goto_94

    :cond_80
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    :goto_94
    if-nez p1, :cond_98

    const/4 v7, 0x0

    goto :goto_99

    :cond_98
    array-length v7, p1

    :goto_99
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_b1

    :cond_a7
    :goto_a7
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_b1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-array v7, v2, [B

    invoke-virtual {p1, v7, v6, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_c1
    .catchall {:try_start_4d .. :try_end_c1} :catchall_13c

    :try_start_c1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    aget-byte v4, v7, v5

    const/4 v7, 0x2

    if-ne v4, v7, :cond_d0

    const/4 v4, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v4, 0x0

    :goto_d1
    new-array v7, v2, [B

    new-instance v8, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v7}, Ljava/io/DataInputStream;->readFully([B)V

    if-eqz v4, :cond_fc

    if-nez v2, :cond_fc

    new-instance v4, Lcom/mbridge/msdk/e/a/a/f;

    const/16 v5, 0xcc

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, v5, v6, v2, p2}, Lcom/mbridge/msdk/e/a/a/f;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_ef
    .catchall {:try_start_c1 .. :try_end_ef} :catchall_137

    :goto_ef
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/nio/ByteBuffer;)V

    return-object v4

    :cond_fc
    const/16 v4, 0x1f4

    if-ge v2, v5, :cond_117

    :try_start_100
    new-instance v2, Lcom/mbridge/msdk/e/a/a/f;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v4, v5, v6, p2}, Lcom/mbridge/msdk/e/a/a/f;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_137

    :goto_10a
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/nio/ByteBuffer;)V

    return-object v2

    :cond_117
    :try_start_117
    aget-byte v7, v7, v6

    if-ne v7, v5, :cond_11c

    goto :goto_11d

    :cond_11c
    const/4 v5, 0x0

    :goto_11d
    if-eqz v5, :cond_12c

    new-instance v4, Lcom/mbridge/msdk/e/a/a/f;

    const/16 v5, 0xc8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, v5, v6, v2, p2}, Lcom/mbridge/msdk/e/a/a/f;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    goto :goto_ef

    :cond_12c
    new-instance v2, Lcom/mbridge/msdk/e/a/a/f;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v4, v5, v6, p2}, Lcom/mbridge/msdk/e/a/a/f;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_136
    .catchall {:try_start_117 .. :try_end_136} :catchall_137

    goto :goto_10a

    :catchall_137
    move-exception p2

    move-object v10, v0

    move-object v0, p1

    move-object p1, p2

    goto :goto_13f

    :catchall_13c
    move-exception p1

    move-object v10, v0

    move-object v0, p2

    :goto_13f
    move-object p2, v10

    goto :goto_156

    :catchall_141
    move-exception p1

    move-object v3, p2

    goto :goto_14f

    :cond_144
    :try_start_144
    new-instance p1, Ljava/io/IOException;

    const-string v2, "create outputStream exception"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_14c
    .catchall {:try_start_144 .. :try_end_14c} :catchall_141

    :catchall_14c
    move-exception p1

    move-object v1, p2

    move-object v3, v1

    :goto_14f
    move-object p2, v0

    move-object v0, v3

    goto :goto_156

    :catchall_152
    move-exception p1

    move-object v0, p2

    move-object v1, v0

    move-object v3, v1

    :goto_156
    :try_start_156
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_15c

    :catchall_15c
    move-exception p1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/report/t;->a(Ljava/nio/ByteBuffer;)V

    throw p1
.end method
