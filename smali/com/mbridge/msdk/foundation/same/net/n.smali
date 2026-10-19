###### Class com.mbridge.msdk.foundation.same.net.n (com.mbridge.msdk.foundation.same.net.n)
.class public final Lcom/mbridge/msdk/foundation/same/net/n;
.super Ljava/lang/Object;
.source "SocketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/net/n$a;,
        Lcom/mbridge/msdk/foundation/same/net/n$b;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/net/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/mbridge/msdk/foundation/same/net/n$1;

    invoke-direct {v7, p0}, Lcom/mbridge/msdk/foundation/same/net/n$1;-><init>(Lcom/mbridge/msdk/foundation/same/net/n;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x5

    const/16 v2, 0xa

    const-wide/16 v3, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/mbridge/msdk/foundation/same/net/n;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/same/net/n$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/foundation/same/net/n;
    .registers 1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/n$b;->a()Lcom/mbridge/msdk/foundation/same/net/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_35

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_35

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_19
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_24

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    :cond_24
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_35
    :goto_35
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 14

    new-instance v7, Lcom/mbridge/msdk/foundation/same/net/n$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/foundation/same/net/n$a;-><init>(Lcom/mbridge/msdk/foundation/same/net/n;Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/mbridge/msdk/foundation/same/net/n$2;

    invoke-direct {p2, p0, v7}, Lcom/mbridge/msdk/foundation/same/net/n$2;-><init>(Lcom/mbridge/msdk/foundation/same/net/n;Lcom/mbridge/msdk/foundation/same/net/n$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.same.net.n.AnonymousClass1 (com.mbridge.msdk.foundation.same.net.n$1)
.class final Lcom/mbridge/msdk/foundation/same/net/n$1;
.super Ljava/lang/Object;
.source "SocketManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/net/n;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/n;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/n$1;->a:Lcom/mbridge/msdk/foundation/same/net/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "SocketThreadPool"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method

###### Class com.mbridge.msdk.foundation.same.net.n.AnonymousClass2 (com.mbridge.msdk.foundation.same.net.n$2)
.class final Lcom/mbridge/msdk/foundation/same/net/n$2;
.super Ljava/lang/Object;
.source "SocketManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/net/n;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/net/n$a;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/net/n;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/n;Lcom/mbridge/msdk/foundation/same/net/n$a;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/n$2;->b:Lcom/mbridge/msdk/foundation/same/net/n;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/n$2;->a:Lcom/mbridge/msdk/foundation/same/net/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$2;->a:Lcom/mbridge/msdk/foundation/same/net/n$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/net/n$a;->a()V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.same.net.n.a (com.mbridge.msdk.foundation.same.net.n$a)
.class public final Lcom/mbridge/msdk/foundation/same/net/n$a;
.super Ljava/lang/Object;
.source "SocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/net/n;

.field private b:Ljava/lang/String;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/io/OutputStream;

.field private e:Z

.field private f:Lcom/mbridge/msdk/foundation/same/net/e;

.field private g:Ljava/net/Socket;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/n;Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 7

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->a:Lcom/mbridge/msdk/foundation/same/net/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->e:Z

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->h:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->i:I

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->e:Z

    iput-object p6, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->f:Lcom/mbridge/msdk/foundation/same/net/e;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->f:Lcom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_24

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/f/c;

    const/16 v1, 0x194

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string p1, "Unknown exception"

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v1, 0xd

    invoke-direct {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->f:Lcom/mbridge/msdk/foundation/same/net/e;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/e;->onError(Lcom/mbridge/msdk/foundation/same/net/b/a;)V

    :cond_24
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 16

    const-string v0, " length : "

    const-string v1, "SocketManager"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->h:Ljava/lang/String;

    iget v5, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->i:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v4

    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_36

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v6

    iget-object v6, v6, Lcom/mbridge/msdk/foundation/same/net/g/d;->i:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_36

    :cond_34
    const/4 v3, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v3, 0x1

    :goto_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Socket connect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isAnalytics : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    const/16 v6, 0x8

    new-array v7, v6, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v10, 0x3

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_97

    :cond_8b
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-boolean v11, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->e:Z

    if-eqz v11, :cond_93

    const/4 v11, 0x3

    goto :goto_94

    :cond_93
    const/4 v11, 0x2

    :goto_94
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_97
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/n;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    int-to-short v11, v11

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_bf

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    iget-object v11, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    const/4 v11, 0x0

    goto :goto_102

    :cond_bf
    iget-boolean v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->e:Z

    if-eqz v7, :cond_e6

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_cd

    move-object v7, v2

    goto :goto_ec

    :cond_cd
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_ec

    :cond_e6
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    :goto_ec
    array-length v11, v7

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    iget-object v13, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V

    :goto_102
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Socket Request : header : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    new-array v11, v6, [B

    invoke-virtual {v7, v11, v4, v6}, Ljava/io/InputStream;->read([BII)I

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    aget-byte v12, v11, v5

    if-ne v12, v10, :cond_14c

    const/4 v10, 0x1

    goto :goto_14d

    :cond_14c
    const/4 v10, 0x0

    :goto_14d
    aget-byte v12, v11, v5

    if-ne v12, v9, :cond_153

    const/4 v12, 0x1

    goto :goto_154

    :cond_153
    const/4 v12, 0x0

    :goto_154
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Socket Response : header : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isGzip : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v8, [B

    new-instance v11, Ljava/io/DataInputStream;

    iget-object v13, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v11, v0}, Ljava/io/DataInputStream;->readFully([B)V

    if-nez v10, :cond_19c

    if-le v8, v9, :cond_19c

    aget-byte v9, v0, v4

    shl-int/lit8 v6, v9, 0x8

    aget-byte v9, v0, v5

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    const/16 v9, 0x1f8b

    if-ne v6, v9, :cond_19c

    const/4 v10, 0x1

    :cond_19c
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->f:Lcom/mbridge/msdk/foundation/same/net/e;
    :try_end_19e
    .catchall {:try_start_5 .. :try_end_19e} :catchall_2a7

    if-nez v6, :cond_1b8

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_1b7

    :try_start_1a4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1ae} :catch_1af

    goto :goto_1b7

    :catch_1af
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b7
    :goto_1b7
    return-void

    :cond_1b8
    if-eqz v12, :cond_1e2

    if-nez v8, :cond_1e2

    :try_start_1bc
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/f/c;

    const/16 v3, 0xcc

    invoke-direct {v0, v3, v2, v2}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/same/net/l;->a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/f/c;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
    :try_end_1ca
    .catchall {:try_start_1bc .. :try_end_1ca} :catchall_2a7

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_1e1

    :try_start_1ce
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d8} :catch_1d9

    goto :goto_1e1

    :catch_1d9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e1
    :goto_1e1
    return-void

    :cond_1e2
    if-ge v8, v5, :cond_201

    :try_start_1e4
    const-string v0, "The response data less than 1"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/n$a;->a(Ljava/lang/String;)V
    :try_end_1e9
    .catchall {:try_start_1e4 .. :try_end_1e9} :catchall_2a7

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_200

    :try_start_1ed
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1f7} :catch_1f8

    goto :goto_200

    :catch_1f8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_200
    :goto_200
    return-void

    :cond_201
    const/16 v9, 0xc8

    if-eqz v3, :cond_233

    :try_start_205
    aget-byte v0, v0, v4

    if-ne v0, v5, :cond_216

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/f/c;

    invoke-direct {v0, v9, v2, v2}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/same/net/l;->a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/f/c;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V

    goto :goto_21b

    :cond_216
    const-string v0, "The server returns fail"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/n$a;->a(Ljava/lang/String;)V
    :try_end_21b
    .catchall {:try_start_205 .. :try_end_21b} :catchall_2a7

    :goto_21b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_232

    :try_start_21f
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_229
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_229} :catch_22a

    goto :goto_232

    :catch_22a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_232
    :goto_232
    return-void

    :cond_233
    if-eqz v10, :cond_23c

    :try_start_235
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->a:Lcom/mbridge/msdk/foundation/same/net/n;

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/foundation/same/net/n;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_242

    :cond_23c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    :goto_242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24e

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_24f

    :cond_24e
    move-object v3, v2

    :goto_24f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket Response length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->f:Lcom/mbridge/msdk/foundation/same/net/e;

    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/f/c;

    invoke-direct {v4, v9, v2, v2}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/same/net/l;->a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/f/c;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/mbridge/msdk/foundation/same/net/e;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
    :try_end_27d
    .catchall {:try_start_235 .. :try_end_27d} :catchall_27e

    goto :goto_295

    :catchall_27e
    move-exception v0

    :try_start_27f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_292

    const-string v3, "The JSON data is illegal"

    :cond_292
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/net/n$a;->a(Ljava/lang/String;)V

    :goto_295
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_298
    .catchall {:try_start_27f .. :try_end_298} :catchall_2a7

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_2da

    :try_start_29c
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2a6
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_2a6} :catch_2d2

    goto :goto_2da

    :catchall_2a7
    move-exception v0

    :try_start_2a8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/n$a;->a(Ljava/lang/String;)V
    :try_end_2c3
    .catchall {:try_start_2a8 .. :try_end_2c3} :catchall_2db

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_2da

    :try_start_2c7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2d1
    .catch Ljava/io/IOException; {:try_start_2c7 .. :try_end_2d1} :catch_2d2

    goto :goto_2da

    :catch_2d2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2da
    :goto_2da
    return-void

    :catchall_2db
    move-exception v0

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->g:Ljava/net/Socket;

    if-eqz v3, :cond_2f3

    :try_start_2e0
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->c:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/n$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2ea
    .catch Ljava/io/IOException; {:try_start_2e0 .. :try_end_2ea} :catch_2eb

    goto :goto_2f3

    :catch_2eb
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f3
    :goto_2f3
    throw v0
.end method

###### Class com.mbridge.msdk.foundation.same.net.n.b (com.mbridge.msdk.foundation.same.net.n$b)
.class final Lcom/mbridge/msdk/foundation/same/net/n$b;
.super Ljava/lang/Object;
.source "SocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/foundation/same/net/n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/n;-><init>(Lcom/mbridge/msdk/foundation/same/net/n$1;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/net/n$b;->a:Lcom/mbridge/msdk/foundation/same/net/n;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/foundation/same/net/n;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/n$b;->a:Lcom/mbridge/msdk/foundation/same/net/n;

    return-object v0
.end method
