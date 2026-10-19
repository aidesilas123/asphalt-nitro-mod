###### Class com.bykv.vk.openvk.component.video.a.b.f (com.bykv.vk.openvk.component.video.a.b.f)
.class public Lcom/bykv/vk/openvk/component/video/a/b/f;
.super Ljava/lang/Object;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/f$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/bykv/vk/openvk/component/video/a/b/f;


# instance fields
.field private volatile a:Ljava/net/ServerSocket;

.field private volatile b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

.field private volatile f:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

.field private volatile g:Lcom/bykv/vk/openvk/component/video/a/b/a/b;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/bykv/vk/openvk/component/video/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bykv/vk/openvk/component/video/a/b/g$c;

.field private volatile j:Lcom/bykv/vk/openvk/component/video/a/b/c;

.field private volatile k:Lcom/bykv/vk/openvk/component/video/a/b/c;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->h:Landroid/util/SparseArray;

    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/f$1;

    invoke-direct {v2, p0}, Lcom/bykv/vk/openvk/component/video/a/b/f$1;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->i:Lcom/bykv/vk/openvk/component/video/a/b/g$c;

    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/f$2;

    invoke-direct {v2, p0}, Lcom/bykv/vk/openvk/component/video/a/b/f$2;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->l:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/b/f;I)I
    .registers 2

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->b:I

    return p1
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/b/f;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static a()Lcom/bykv/vk/openvk/component/video/a/b/f;
    .registers 2

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/f;->d:Lcom/bykv/vk/openvk/component/video/a/b/f;

    if-nez v0, :cond_17

    const-class v0, Lcom/bykv/vk/openvk/component/video/a/b/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bykv/vk/openvk/component/video/a/b/f;->d:Lcom/bykv/vk/openvk/component/video/a/b/f;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;-><init>()V

    sput-object v1, Lcom/bykv/vk/openvk/component/video/a/b/f;->d:Lcom/bykv/vk/openvk/component/video/a/b/f;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/f;->d:Lcom/bykv/vk/openvk/component/video/a/b/f;

    return-object v0
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/b/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->a:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method static synthetic c(Lcom/bykv/vk/openvk/component/video/a/b/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->e()V

    return-void
.end method

.method static synthetic d(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/net/ServerSocket;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->a:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic e(Lcom/bykv/vk/openvk/component/video/a/b/f;)I
    .registers 1

    iget p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->b:I

    return p0
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_13
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->a:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/ServerSocket;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->f()V

    :cond_1b
    return-void
.end method

.method private f()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->h:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_f
    if-ge v2, v3, :cond_28

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_3e

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/a/b/g;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/g;->a()V

    goto :goto_2d

    :cond_3d
    return-void

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method static synthetic f(Lcom/bykv/vk/openvk/component/video/a/b/f;)Z
    .registers 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private g()Z
    .registers 6

    const-string v0, "ping error"

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/f$a;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->i()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->b:I

    invoke-direct {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/a/b/f$a;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/bytedance/sdk/component/g/g;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/util/concurrent/Callable;II)V

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->h()V

    const/4 v1, 0x0

    :try_start_1f
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_4a

    const-string v3, "ProxyServer"

    if-nez v2, :cond_3b

    :try_start_2d
    const-string v2, "Ping error"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->e()V

    return v1

    :cond_3b
    const-string v2, "pingTest: "

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v2, :cond_49

    const-string v2, "Ping OK!"

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_4a

    :cond_49
    return v4

    :catchall_4a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->e()V

    return v1
.end method

.method static synthetic h(Lcom/bykv/vk/openvk/component/video/a/b/f;)Lcom/bykv/vk/openvk/component/video/a/b/b/c;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    return-object p0
.end method

.method private h()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "Ping"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "OK\n"

    sget-object v3, Lcom/bykv/vk/openvk/component/video/a/c/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_3b
    .catchall {:try_start_1 .. :try_end_38} :catchall_39

    goto :goto_48

    :catchall_39
    move-exception v1

    goto :goto_53

    :catch_3b
    move-exception v1

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "ping error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_39

    :cond_48
    :goto_48
    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/Socket;)V

    const-string v0, "ProxyServer"

    const-string v1, "answerPing: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_53
    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/Socket;)V

    throw v1
.end method

.method static synthetic i(Lcom/bykv/vk/openvk/component/video/a/b/f;)Lcom/bykv/vk/openvk/component/video/a/b/g$c;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->i:Lcom/bykv/vk/openvk/component/video/a/b/g$c;

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    const-string v1, "MTI3LjAuMC4x"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public varargs a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "url"

    if-eqz p4, :cond_df

    array-length v1, p4

    if-nez v1, :cond_9

    goto/16 :goto_df

    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    const-string p1, "key"

    const-string p2, "key is empty"

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p4, v2

    return-object p1

    :cond_1a
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    if-nez v1, :cond_28

    const-string p1, "db"

    const-string p2, "VideoProxyDB is null"

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p4, v2

    return-object p1

    :cond_28
    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->g:Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    goto :goto_2f

    :cond_2d
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->f:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    :goto_2f
    if-nez v1, :cond_3b

    const-string p1, "cache"

    const-string p2, "Cache is null"

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p4, v2

    return-object p1

    :cond_3b
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ProxyServer is not running, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "state"

    invoke-static {p2, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p4, v2

    return-object p1

    :cond_5d
    invoke-static {p4}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6b

    const-string p1, "url not start with http/https"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p4, v2

    return-object p1

    :cond_6b
    if-eqz p2, :cond_6f

    move-object p2, p3

    goto :goto_73

    :cond_6f
    invoke-static {p3}, Lcom/bykv/vk/openvk/component/video/api/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_73
    invoke-static {p3, p2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_81

    const-string p1, "combine proxy url error"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p4, v2

    return-object p1

    :cond_81
    const-string p3, ":"

    const-string p4, "https://"

    if-eqz p1, :cond_b3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->i()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?f="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "&"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d6

    :cond_b3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->i()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_d6
    const-string p2, "s"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_df
    :goto_df
    const-string p1, "url is empty"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->f:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    return-void
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->e:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    return-void
.end method

.method a(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->h:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/a/b/g;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/bykv/vk/openvk/component/video/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 p1, 0x1

    monitor-exit v1

    return p1

    :cond_2e
    monitor-exit v1

    return v0

    :catchall_30
    move-exception p1

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw p1
.end method

.method b()Lcom/bykv/vk/openvk/component/video/a/b/c;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->j:Lcom/bykv/vk/openvk/component/video/a/b/c;

    return-object v0
.end method

.method c()Lcom/bykv/vk/openvk/component/video/a/b/c;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->k:Lcom/bykv/vk/openvk/component/video/a/b/c;

    return-object v0
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f;->l:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "csj_proxy_server"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_19
    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.f.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.b.f$1)
.class Lcom/bykv/vk/openvk/component/video/a/b/f$1;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/a/b/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/f;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/component/video/a/b/g;)V
    .registers 5

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/a/b/a;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1c

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/a/b/g;)V
    .registers 5

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_1a

    const-string v0, "ProxyServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterExecute, ProxyTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/a/b/a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_25
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_36

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_36
    monitor-exit v1

    return-void

    :catchall_38
    move-exception p1

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_38

    throw p1
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.f.AnonymousClass2 (com.bykv.vk.openvk.component.video.a.b.f$2)
.class Lcom/bykv/vk/openvk/component/video/a/b/f$2;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/f;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "ProxyServer"

    :try_start_2
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v4}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_11a

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->d(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/f;I)I

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->e(Lcom/bykv/vk/openvk/component/video/a/b/f;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    const-string v0, "socket not bound"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->c(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    return-void

    :cond_3c
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->b(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->e(Lcom/bykv/vk/openvk/component/video/a/b/f;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/j;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->f(Lcom/bykv/vk/openvk/component/video/a/b/f;)Z

    move-result v1

    if-nez v1, :cond_54

    return-void

    :cond_54
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "run:  state = "

    aput-object v3, v2, v5

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v4}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_74

    return-void

    :cond_74
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v5

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v1, :cond_8c

    const-string v1, "proxy server start!"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    :try_start_8c
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->g(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_ed

    if-ne v1, v6, :cond_10b

    :try_start_98
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->d(Lcom/bykv/vk/openvk/component/video/a/b/f;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a2} :catch_da
    .catchall {:try_start_98 .. :try_end_a2} :catchall_ed

    :try_start_a2
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->h(Lcom/bykv/vk/openvk/component/video/a/b/f;)Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    move-result-object v2

    if-eqz v2, :cond_d6

    new-instance v3, Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a(Ljava/net/Socket;)Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/b/f;->i(Lcom/bykv/vk/openvk/component/video/a/b/f;)Lcom/bykv/vk/openvk/component/video/a/b/g$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/g$c;)Lcom/bykv/vk/openvk/component/video/a/b/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/g$a;->a()Lcom/bykv/vk/openvk/component/video/a/b/g;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;

    const-string v3, "ProxyTask"

    const/16 v4, 0xa

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f$2;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/a/b/g;)V

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_8c

    :cond_d6
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/Socket;)V

    goto :goto_8c

    :catch_da
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "accept error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_a2 .. :try_end_e7} :catchall_ed

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x3

    if-le v5, v1, :cond_8c

    goto :goto_10b

    :catchall_ed
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy server crashed!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "error"

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    :goto_10b
    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v1, :cond_114

    const-string v1, "proxy server closed!"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_114
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->c(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    return-void

    :catch_11a
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v2, :cond_137

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create ServerSocket error!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create ServerSocket error"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2;->a:Lcom/bykv/vk/openvk/component/video/a/b/f;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->c(Lcom/bykv/vk/openvk/component/video/a/b/f;)V

    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.f.AnonymousClass2.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.b.f$2$1)
.class Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/g;

.field final synthetic b:Lcom/bykv/vk/openvk/component/video/a/b/f$2;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f$2;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/a/b/g;)V
    .registers 5

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;->b:Lcom/bykv/vk/openvk/component/video/a/b/f$2;

    iput-object p4, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/g;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$2$1;->a:Lcom/bykv/vk/openvk/component/video/a/b/g;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/g;->run()V

    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.f.a (com.bykv.vk.openvk.component.video.a.b.f$a)
.class final Lcom/bykv/vk/openvk/component/video/a/b/f$a;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 8

    const-string v0, "call: "

    const-string v1, "ProxyServer"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$a;->a:Ljava/lang/String;

    iget v5, p0, Lcom/bykv/vk/openvk/component/video/a/b/f$a;->b:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_4a

    const/16 v2, 0x7d0

    :try_start_13
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v4, "Ping\n"

    sget-object v5, Lcom/bykv/vk/openvk/component/video/a/c/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_48

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/Socket;)V

    return-object v0

    :catchall_48
    move-exception v2

    goto :goto_4e

    :catchall_4a
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ping error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_4e .. :try_end_70} :catchall_76

    :cond_70
    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/Socket;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catchall_76
    move-exception v0

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/net/Socket;)V

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
