###### Class okhttp3.Cache (okhttp3.Cache)
.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$RealCacheRequest;,
        Lokhttp3/Cache$c;,
        Lokhttp3/Cache$a;,
        Lokhttp3/Cache$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0004BCDEB\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0018\u00010\"R\u00020\u000cH\u0002J\u0008\u0010#\u001a\u00020 H\u0016J\u0006\u0010$\u001a\u00020 J\r\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0008%J\u0006\u0010&\u001a\u00020 J\u0008\u0010\'\u001a\u00020 H\u0016J\u0017\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008,J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010-\u001a\u00020 J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\u0011J\u0017\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020)H\u0000\u00a2\u0006\u0002\u00081J\u0015\u00102\u001a\u00020 2\u0006\u0010*\u001a\u00020+H\u0000\u00a2\u0006\u0002\u00083J\u0006\u0010\u0016\u001a\u00020\u0011J\u0006\u00104\u001a\u00020\u0006J\r\u00105\u001a\u00020 H\u0000\u00a2\u0006\u0002\u00086J\u0015\u00107\u001a\u00020 2\u0006\u00108\u001a\u000209H\u0000\u00a2\u0006\u0002\u0008:J\u001d\u0010;\u001a\u00020 2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020)H\u0000\u00a2\u0006\u0002\u0008>J\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020A0@J\u0006\u0010\u0017\u001a\u00020\u0011J\u0006\u0010\u001c\u001a\u00020\u0011R\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u00048G\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001b\u00a8\u0006F"
    }
    d2 = {
        "Lokhttp3/Cache;",
        "Ljava/io/Closeable;",
        "Ljava/io/Flushable;",
        "directory",
        "Ljava/io/File;",
        "maxSize",
        "",
        "(Ljava/io/File;J)V",
        "fileSystem",
        "Lokhttp3/internal/io/FileSystem;",
        "(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V",
        "cache",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "getCache$okhttp",
        "()Lokhttp3/internal/cache/DiskLruCache;",
        "()Ljava/io/File;",
        "hitCount",
        "",
        "isClosed",
        "",
        "()Z",
        "networkCount",
        "requestCount",
        "writeAbortCount",
        "getWriteAbortCount$okhttp",
        "()I",
        "setWriteAbortCount$okhttp",
        "(I)V",
        "writeSuccessCount",
        "getWriteSuccessCount$okhttp",
        "setWriteSuccessCount$okhttp",
        "abortQuietly",
        "",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "close",
        "delete",
        "-deprecated_directory",
        "evictAll",
        "flush",
        "get",
        "Lokhttp3/Response;",
        "request",
        "Lokhttp3/Request;",
        "get$okhttp",
        "initialize",
        "put",
        "Lokhttp3/internal/cache/CacheRequest;",
        "response",
        "put$okhttp",
        "remove",
        "remove$okhttp",
        "size",
        "trackConditionalCacheHit",
        "trackConditionalCacheHit$okhttp",
        "trackResponse",
        "cacheStrategy",
        "Lokhttp3/internal/cache/CacheStrategy;",
        "trackResponse$okhttp",
        "update",
        "cached",
        "network",
        "update$okhttp",
        "urls",
        "",
        "",
        "CacheResponseBody",
        "Companion",
        "Entry",
        "RealCacheRequest",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lokhttp3/Cache$b;


# instance fields
.field private final b:Lokhttp3/internal/cache/DiskLruCache;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/Cache$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .registers 5

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/internal/d/a;->b:Lokhttp3/internal/d/a;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/d/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLokhttp3/internal/d/a;)V
    .registers 14

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/internal/cache/DiskLruCache;

    sget-object v8, Lokhttp3/internal/concurrent/TaskRunner;->b:Lokhttp3/internal/concurrent/TaskRunner;

    const v4, 0x31191

    const/4 v5, 0x2

    move-object v1, v0

    move-object v2, p4

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/d/a;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V

    iput-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method private final a(Lokhttp3/internal/cache/DiskLruCache$b;)V
    .registers 2

    if-nez p1, :cond_3

    goto :goto_6

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$b;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    :goto_6
    return-void
.end method

.method public static final key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v0, p0}, Lokhttp3/Cache$b;->b(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {p1}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Cache$b;->b(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_10
    iget-object v2, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache;->i(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$d;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_3c

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    :try_start_19
    new-instance v2, Lokhttp3/Cache$c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokhttp3/internal/cache/DiskLruCache$d;->e(I)Lokio/y;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/Cache$c;-><init>(Lokio/y;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_39

    invoke-virtual {v2, v0}, Lokhttp3/Cache$c;->d(Lokhttp3/internal/cache/DiskLruCache$d;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lokhttp3/Cache$c;->b(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {v0}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_34

    goto :goto_37

    :cond_34
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :goto_37
    return-object v1

    :cond_38
    return-object v0

    :catch_39
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_3c
    return-object v1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lokhttp3/Cache;->d:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lokhttp3/Cache;->c:I

    return v0
.end method

.method public final f(Lokhttp3/Response;)Lokhttp3/internal/cache/a;
    .registers 11

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/http/HttpMethod;->a:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    :try_start_1e
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Cache;->g(Lokhttp3/Request;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_25

    :catch_25
    return-object v2

    :cond_26
    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    return-object v2

    :cond_2f
    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$b;->a(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_38

    return-object v2

    :cond_38
    new-instance v1, Lokhttp3/Cache$c;

    invoke-direct {v1, p1}, Lokhttp3/Cache$c;-><init>(Lokhttp3/Response;)V

    :try_start_3d
    iget-object v3, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Cache$b;->b(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lokhttp3/internal/cache/DiskLruCache;->edit$default(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JILjava/lang/Object;)Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object p1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_53} :catch_5f

    if-nez p1, :cond_56

    return-object v2

    :cond_56
    :try_start_56
    invoke-virtual {v1, p1}, Lokhttp3/Cache$c;->f(Lokhttp3/internal/cache/DiskLruCache$b;)V

    new-instance v0, Lokhttp3/Cache$RealCacheRequest;

    invoke-direct {v0, p0, p1}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$b;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_60

    return-object v0

    :catch_5f
    move-object p1, v2

    :catch_60
    invoke-direct {p0, p1}, Lokhttp3/Cache;->a(Lokhttp3/internal/cache/DiskLruCache$b;)V

    return-object v2
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method public final g(Lokhttp3/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    sget-object v1, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {p1}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Cache$b;->b(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache;->w(Ljava/lang/String;)Z

    return-void
.end method

.method public final h(I)V
    .registers 2

    iput p1, p0, Lokhttp3/Cache;->d:I

    return-void
.end method

.method public final i(I)V
    .registers 2

    iput p1, p0, Lokhttp3/Cache;->c:I

    return-void
.end method

.method public final declared-synchronized j()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->f:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(Lokhttp3/internal/cache/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "cacheStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lokhttp3/Cache;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->g:I

    invoke-virtual {p1}, Lokhttp3/internal/cache/b;->b()Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_19

    iget p1, p0, Lokhttp3/Cache;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/Cache;->e:I

    goto :goto_25

    :cond_19
    invoke-virtual {p1}, Lokhttp3/internal/cache/b;->a()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_25

    iget p1, p0, Lokhttp3/Cache;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/Cache;->f:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l(Lokhttp3/Response;Lokhttp3/Response;)V
    .registers 4

    const-string v0, "cached"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/Cache$c;

    invoke-direct {v0, p2}, Lokhttp3/Cache$c;-><init>(Lokhttp3/Response;)V

    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lokhttp3/Cache$a;

    invoke-virtual {p1}, Lokhttp3/Cache$a;->d()Lokhttp3/internal/cache/DiskLruCache$d;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_1f
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$d;->d()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object p2

    if-nez p2, :cond_26

    return-void

    :cond_26
    invoke-virtual {v0, p2}, Lokhttp3/Cache$c;->f(Lokhttp3/internal/cache/DiskLruCache$b;)V

    invoke-virtual {p2}, Lokhttp3/internal/cache/DiskLruCache$b;->b()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2c} :catch_2d

    goto :goto_30

    :catch_2d
    invoke-direct {p0, p2}, Lokhttp3/Cache;->a(Lokhttp3/internal/cache/DiskLruCache$b;)V

    :goto_30
    return-void
.end method

###### Class okhttp3.Cache.RealCacheRequest (okhttp3.Cache$RealCacheRequest)
.class final Lokhttp3/Cache$RealCacheRequest;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Lokhttp3/internal/cache/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RealCacheRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0012\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokhttp3/Cache$RealCacheRequest;",
        "Lokhttp3/internal/cache/CacheRequest;",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V",
        "body",
        "Lokio/Sink;",
        "cacheOut",
        "done",
        "",
        "getDone",
        "()Z",
        "setDone",
        "(Z)V",
        "abort",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/cache/DiskLruCache$b;

.field private final b:Lokio/w;

.field private final c:Lokio/w;

.field private d:Z

.field final synthetic e:Lokhttp3/Cache;


# direct methods
.method public constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$b;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->e:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->a:Lokhttp3/internal/cache/DiskLruCache$b;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lokhttp3/internal/cache/DiskLruCache$b;->f(I)Lokio/w;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->b:Lokio/w;

    new-instance v0, Lokhttp3/Cache$RealCacheRequest$a;

    invoke-direct {v0, p1, p0, p2}, Lokhttp3/Cache$RealCacheRequest$a;-><init>(Lokhttp3/Cache;Lokhttp3/Cache$RealCacheRequest;Lokio/w;)V

    iput-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->c:Lokio/w;

    return-void
.end method

.method public static final synthetic access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$b;
    .registers 1

    iget-object p0, p0, Lokhttp3/Cache$RealCacheRequest;->a:Lokhttp3/internal/cache/DiskLruCache$b;

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cache$RealCacheRequest;->d:Z

    return v0
.end method

.method public abort()V
    .registers 4

    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->e:Lokhttp3/Cache;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lokhttp3/Cache$RealCacheRequest;->a()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_23

    if-eqz v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {p0, v1}, Lokhttp3/Cache$RealCacheRequest;->b(Z)V

    invoke-virtual {v0}, Lokhttp3/Cache;->d()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lokhttp3/Cache;->h(I)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_23

    monitor-exit v0

    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->b:Lokio/w;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1d
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->a:Lokhttp3/internal/cache/DiskLruCache$b;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$b;->a()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_22

    :catch_22
    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/Cache$RealCacheRequest;->d:Z

    return-void
.end method

.method public body()Lokio/w;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->c:Lokio/w;

    return-object v0
.end method

###### Class okhttp3.Cache.RealCacheRequest.a (okhttp3.Cache$RealCacheRequest$a)
.class public final Lokhttp3/Cache$RealCacheRequest$a;
.super Lokio/i;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$RealCacheRequest;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/Cache$RealCacheRequest$1",
        "Lokio/ForwardingSink;",
        "close",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic b:Lokhttp3/Cache;

.field final synthetic c:Lokhttp3/Cache$RealCacheRequest;


# direct methods
.method constructor <init>(Lokhttp3/Cache;Lokhttp3/Cache$RealCacheRequest;Lokio/w;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest$a;->b:Lokhttp3/Cache;

    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest$a;->c:Lokhttp3/Cache$RealCacheRequest;

    invoke-direct {p0, p3}, Lokio/i;-><init>(Lokio/w;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest$a;->b:Lokhttp3/Cache;

    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$a;->c:Lokhttp3/Cache$RealCacheRequest;

    monitor-enter v0

    :try_start_5
    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->a()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_27

    if-eqz v2, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    const/4 v2, 0x1

    :try_start_e
    invoke-virtual {v1, v2}, Lokhttp3/Cache$RealCacheRequest;->b(Z)V

    invoke-virtual {v0}, Lokhttp3/Cache;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lokhttp3/Cache;->i(I)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_27

    monitor-exit v0

    invoke-super {p0}, Lokio/i;->close()V

    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest$a;->c:Lokhttp3/Cache$RealCacheRequest;

    invoke-static {v0}, Lokhttp3/Cache$RealCacheRequest;->access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$b;->b()V

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method

###### Class okhttp3.Cache.a (okhttp3.Cache$a)
.class final Lokhttp3/Cache$a;
.super Lokhttp3/ResponseBody;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0007\u001a\u00020\rH\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\nH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokhttp3/Cache$CacheResponseBody;",
        "Lokhttp3/ResponseBody;",
        "snapshot",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "contentType",
        "",
        "contentLength",
        "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V",
        "bodySource",
        "Lokio/BufferedSource;",
        "getSnapshot",
        "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "",
        "Lokhttp3/MediaType;",
        "source",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/cache/DiskLruCache$d;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lokio/e;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lokhttp3/Cache$a;->a:Lokhttp3/internal/cache/DiskLruCache$d;

    iput-object p2, p0, Lokhttp3/Cache$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/Cache$a;->c:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lokhttp3/internal/cache/DiskLruCache$d;->e(I)Lokio/y;

    move-result-object p1

    new-instance p2, Lokhttp3/Cache$a$a;

    invoke-direct {p2, p1, p0}, Lokhttp3/Cache$a$a;-><init>(Lokio/y;Lokhttp3/Cache$a;)V

    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache$a;->d:Lokio/e;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 4

    iget-object v0, p0, Lokhttp3/Cache$a;->c:Ljava/lang/String;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 3

    iget-object v0, p0, Lokhttp3/Cache$a;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v1, Lokhttp3/MediaType;->a:Lokhttp3/MediaType$a;

    invoke-virtual {v1, v0}, Lokhttp3/MediaType$a;->b(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final d()Lokhttp3/internal/cache/DiskLruCache$d;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cache$a;->a:Lokhttp3/internal/cache/DiskLruCache$d;

    return-object v0
.end method

.method public source()Lokio/e;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cache$a;->d:Lokio/e;

    return-object v0
.end method

###### Class okhttp3.Cache.a.C0604a (okhttp3.Cache$a$a)
.class public final Lokhttp3/Cache$a$a;
.super Lokio/j;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$a;-><init>(Lokhttp3/internal/cache/DiskLruCache$d;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/Cache$CacheResponseBody$1",
        "Lokio/ForwardingSource;",
        "close",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lokio/y;

.field final synthetic b:Lokhttp3/Cache$a;


# direct methods
.method constructor <init>(Lokio/y;Lokhttp3/Cache$a;)V
    .registers 3

    iput-object p1, p0, Lokhttp3/Cache$a$a;->a:Lokio/y;

    iput-object p2, p0, Lokhttp3/Cache$a$a;->b:Lokhttp3/Cache$a;

    invoke-direct {p0, p1}, Lokio/j;-><init>(Lokio/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Cache$a$a;->b:Lokhttp3/Cache$a;

    invoke-virtual {v0}, Lokhttp3/Cache$a;->d()Lokhttp3/internal/cache/DiskLruCache$d;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$d;->close()V

    invoke-super {p0}, Lokio/j;->close()V

    return-void
.end method

###### Class okhttp3.Cache.b (okhttp3.Cache$b)
.class public final Lokhttp3/Cache$b;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0015\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\n\u0010\u001b\u001a\u00020\u0015*\u00020\u0017J\u0012\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001d*\u00020\u0011H\u0002J\n\u0010\u0010\u001a\u00020\u0011*\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lokhttp3/Cache$Companion;",
        "",
        "()V",
        "ENTRY_BODY",
        "",
        "ENTRY_COUNT",
        "ENTRY_METADATA",
        "VERSION",
        "key",
        "",
        "url",
        "Lokhttp3/HttpUrl;",
        "readInt",
        "source",
        "Lokio/BufferedSource;",
        "readInt$okhttp",
        "varyHeaders",
        "Lokhttp3/Headers;",
        "requestHeaders",
        "responseHeaders",
        "varyMatches",
        "",
        "cachedResponse",
        "Lokhttp3/Response;",
        "cachedRequest",
        "newRequest",
        "Lokhttp3/Request;",
        "hasVaryAll",
        "varyFields",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/Cache$b;-><init>()V

    return-void
.end method

.method private final d(Lokhttp3/Headers;)Ljava/util/Set;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_55

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Vary"

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_18
    move v3, v4

    goto :goto_7

    :cond_1a
    invoke-virtual {p1, v3}, Lokhttp3/Headers;->h(I)Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_2b

    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {v3}, Lkotlin/text/g;->getCASE_INSENSITIVE_ORDER(Lkotlin/jvm/internal/o0;)Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_2b
    new-array v9, v7, [C

    const/16 v3, 0x2c

    aput-char v3, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/g;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_55
    if-nez v2, :cond_5b

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v2

    :cond_5b
    return-object v2
.end method

.method private final e(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 9

    invoke-direct {p0, p2}, Lokhttp3/Cache$b;->d(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p1, Lokhttp3/internal/Util;->b:Lokhttp3/Headers;

    return-object p1

    :cond_d
    new-instance v0, Lokhttp3/Headers$a;

    invoke-direct {v0}, Lokhttp3/Headers$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_17
    if-ge v1, v2, :cond_2e

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lokhttp3/Headers$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$a;

    :cond_2c
    move v1, v3

    goto :goto_17

    :cond_2e
    invoke-virtual {v0}, Lokhttp3/Headers$a;->e()Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lokhttp3/Response;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/Cache$b;->d(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "*"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/ByteString;->a:Lokio/ByteString$Companion;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokio/ByteString$Companion;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->y()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->q()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lokio/e;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-interface {p1}, Lokio/e;->readDecimalLong()J

    move-result-wide v0

    invoke-interface {p1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_27

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_27

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-nez v2, :cond_27

    long-to-int p1, v0

    return p1

    :cond_27
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_46} :catch_46

    :catch_46
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->p()Lokhttp3/Response;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->f()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lokhttp3/Cache$b;->e(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .registers 7

    const-string v0, "cachedResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/Cache$b;->d(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_43

    :cond_23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lokhttp3/Headers;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v0}, Lokhttp3/Request;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    :cond_43
    :goto_43
    return v1
.end method

###### Class okhttp3.Cache.c (okhttp3.Cache$c)
.class final Lokhttp3/Cache$c;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#H\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010$\u001a\u00060%R\u00020&J\u001e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0002J\u0012\u0010,\u001a\u00020(2\n\u0010-\u001a\u00060.R\u00020&R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lokhttp3/Cache$Entry;",
        "",
        "rawSource",
        "Lokio/Source;",
        "(Lokio/Source;)V",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)V",
        "code",
        "",
        "handshake",
        "Lokhttp3/Handshake;",
        "isHttps",
        "",
        "()Z",
        "message",
        "",
        "protocol",
        "Lokhttp3/Protocol;",
        "receivedResponseMillis",
        "",
        "requestMethod",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "sentRequestMillis",
        "url",
        "Lokhttp3/HttpUrl;",
        "varyHeaders",
        "matches",
        "request",
        "Lokhttp3/Request;",
        "readCertificateList",
        "",
        "Ljava/security/cert/Certificate;",
        "source",
        "Lokio/BufferedSource;",
        "snapshot",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "writeCertList",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "certificates",
        "writeTo",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "Companion",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lokhttp3/Cache$c$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lokhttp3/HttpUrl;

.field private final e:Lokhttp3/Headers;

.field private final f:Ljava/lang/String;

.field private final g:Lokhttp3/Protocol;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Lokhttp3/Headers;

.field private final k:Lokhttp3/Handshake;

.field private final l:J

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lokhttp3/Cache$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$c$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/Cache$c;->a:Lokhttp3/Cache$c$a;

    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Sent-Millis"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lokhttp3/Cache$c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .registers 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$b;->f(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->s()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    invoke-virtual {p1}, Lokhttp3/Response;->h()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$c;->h:I

    invoke-virtual {p1}, Lokhttp3/Response;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {p1}, Lokhttp3/Response;->j()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {p1}, Lokhttp3/Response;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$c;->l:J

    invoke-virtual {p1}, Lokhttp3/Response;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$c;->m:J

    return-void
.end method

.method public constructor <init>(Lokio/y;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rawSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_8
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v0

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lokhttp3/HttpUrl;->a:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v2, v1}, Lokhttp3/HttpUrl$Companion;->g(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_100

    iput-object v2, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    new-instance v1, Lokhttp3/Headers$a;

    invoke-direct {v1}, Lokhttp3/Headers$a;-><init>()V

    sget-object v2, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v2, v0}, Lokhttp3/Cache$b;->c(Lokio/e;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v2, :cond_39

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->b(Ljava/lang/String;)Lokhttp3/Headers$a;

    goto :goto_2d

    :cond_39
    invoke-virtual {v1}, Lokhttp3/Headers$a;->e()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    sget-object v1, Lokhttp3/internal/http/g;->a:Lokhttp3/internal/http/g$a;

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/http/g$a;->a(Ljava/lang/String;)Lokhttp3/internal/http/g;

    move-result-object v1

    iget-object v2, v1, Lokhttp3/internal/http/g;->b:Lokhttp3/Protocol;

    iput-object v2, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    iget v2, v1, Lokhttp3/internal/http/g;->c:I

    iput v2, p0, Lokhttp3/Cache$c;->h:I

    iget-object v1, v1, Lokhttp3/internal/http/g;->d:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    new-instance v1, Lokhttp3/Headers$a;

    invoke-direct {v1}, Lokhttp3/Headers$a;-><init>()V

    sget-object v2, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v2, v0}, Lokhttp3/Cache$b;->c(Lokio/e;)I

    move-result v2

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v2, :cond_6d

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->b(Ljava/lang/String;)Lokhttp3/Headers$a;

    goto :goto_61

    :cond_6d
    sget-object v2, Lokhttp3/Cache$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Headers$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lokhttp3/Cache$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2}, Lokhttp3/Headers$a;->h(Ljava/lang/String;)Lokhttp3/Headers$a;

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->h(Ljava/lang/String;)Lokhttp3/Headers$a;

    const-wide/16 v7, 0x0

    if-nez v4, :cond_85

    move-wide v4, v7

    goto :goto_89

    :cond_85
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_89
    iput-wide v4, p0, Lokhttp3/Cache$c;->l:J

    if-nez v6, :cond_8e

    goto :goto_92

    :cond_8e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_92
    iput-wide v7, p0, Lokhttp3/Cache$c;->m:J

    invoke-virtual {v1}, Lokhttp3/Headers$a;->e()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-direct {p0}, Lokhttp3/Cache$c;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f8

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_ac

    const/4 v3, 0x1

    :cond_ac
    if-nez v3, :cond_dc

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lokhttp3/CipherSuite;->a:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v3, v1}, Lokhttp3/CipherSuite$Companion;->a(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    invoke-direct {p0, v0}, Lokhttp3/Cache$c;->c(Lokio/e;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0}, Lokhttp3/Cache$c;->c(Lokio/e;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Lokio/e;->exhausted()Z

    move-result v5

    if-nez v5, :cond_d1

    sget-object v5, Lokhttp3/TlsVersion;->a:Lokhttp3/TlsVersion$a;

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lokhttp3/TlsVersion$a;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_d3

    :cond_d1
    sget-object v0, Lokhttp3/TlsVersion;->f:Lokhttp3/TlsVersion;

    :goto_d3
    sget-object v5, Lokhttp3/Handshake;->a:Lokhttp3/Handshake$a;

    invoke-virtual {v5, v0, v1, v3, v4}, Lokhttp3/Handshake$a;->b(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    goto :goto_fa

    :cond_dc
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    iput-object v2, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    :goto_fa
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_fc
    .catchall {:try_start_8 .. :try_end_fc} :catchall_118

    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_100
    :try_start_100
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cache corruption for "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const-string v2, "cache corruption"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
    :try_end_118
    .catchall {:try_start_100 .. :try_end_118} :catchall_118

    :catchall_118
    move-exception v0

    :try_start_119
    throw v0
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final a()Z
    .registers 3

    iget-object v0, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final c(Lokio/e;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$b;->c(Lokio/e;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_e
    :try_start_e
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_3f

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    sget-object v6, Lokio/ByteString;->a:Lokio/ByteString$Companion;

    invoke-virtual {v6, v4}, Lokio/ByteString$Companion;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_3e} :catch_40

    goto :goto_1a

    :cond_3f
    return-object v2

    :catch_40
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e(Lokio/d;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/d;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    sget-object v2, Lokio/ByteString;->a:Lokio/ByteString$Companion;

    const-string v0, "bytes"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lokio/d;->writeByte(I)Lokio/d;
    :try_end_3c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_3c} :catch_3e

    goto :goto_12

    :cond_3d
    return-void

    :catch_3e
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final b(Lokhttp3/Request;Lokhttp3/Response;)Z
    .registers 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {p1}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    iget-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v0, p2, v1, p1}, Lokhttp3/Cache$b;->g(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public final d(Lokhttp3/internal/cache/DiskLruCache$d;)Lokhttp3/Response;
    .registers 7

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->p(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->h(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->g(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object v2

    new-instance v3, Lokhttp3/Response$a;

    invoke-direct {v3}, Lokhttp3/Response$a;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/Response$a;->s(Lokhttp3/Request;)Lokhttp3/Response$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->q(Lokhttp3/Protocol;)Lokhttp3/Response$a;

    move-result-object v2

    iget v3, p0, Lokhttp3/Cache$c;->h:I

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->g(I)Lokhttp3/Response$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->n(Ljava/lang/String;)Lokhttp3/Response$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->l(Lokhttp3/Headers;)Lokhttp3/Response$a;

    move-result-object v2

    new-instance v3, Lokhttp3/Cache$a;

    invoke-direct {v3, p1, v0, v1}, Lokhttp3/Cache$a;-><init>(Lokhttp3/internal/cache/DiskLruCache$d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {p1, v0}, Lokhttp3/Response$a;->j(Lokhttp3/Handshake;)Lokhttp3/Response$a;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$c;->l:J

    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$a;->t(J)Lokhttp3/Response$a;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$c;->m:J

    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$a;->r(J)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lokhttp3/internal/cache/DiskLruCache$b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$b;->f(I)Lokio/w;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object p1

    :try_start_e
    iget-object v1, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_118

    const/4 v3, 0x0

    :goto_3b
    const-string v4, ": "

    if-ge v3, v1, :cond_5e

    add-int/lit8 v5, v3, 0x1

    :try_start_41
    iget-object v6, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v6, v3}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v6

    invoke-interface {v6, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v4

    iget-object v6, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v6, v3}, Lokhttp3/Headers;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    invoke-interface {v3, v2}, Lokio/d;->writeByte(I)Lokio/d;

    move v3, v5

    goto :goto_3b

    :cond_5e
    new-instance v1, Lokhttp3/internal/http/g;

    iget-object v3, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    iget v5, p0, Lokhttp3/Cache$c;->h:I

    iget-object v6, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lokhttp3/internal/http/g;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/internal/http/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_8a
    if-ge v0, v1, :cond_ab

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v5, v0}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v5

    invoke-interface {v5, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v6, v0}, Lokhttp3/Headers;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    move v0, v3

    goto :goto_8a

    :cond_ab
    sget-object v0, Lokhttp3/Cache$c;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    iget-wide v5, p0, Lokhttp3/Cache$c;->l:J

    invoke-interface {v0, v5, v6}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    sget-object v0, Lokhttp3/Cache$c;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    iget-wide v3, p0, Lokhttp3/Cache$c;->m:J

    invoke-interface {v0, v3, v4}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-direct {p0}, Lokhttp3/Cache$c;->a()Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-interface {p1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Handshake;->a()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$c;->e(Lokio/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$c;->e(Lokio/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->e()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    :cond_111
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_113
    .catchall {:try_start_41 .. :try_end_113} :catchall_118

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_118
    move-exception v0

    :try_start_119
    throw v0
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class okhttp3.Cache.c.a (okhttp3.Cache$c$a)
.class public final Lokhttp3/Cache$c$a;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lokhttp3/Cache$Entry$Companion;",
        "",
        "()V",
        "RECEIVED_MILLIS",
        "",
        "SENT_MILLIS",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/Cache$c$a;-><init>()V

    return-void
.end method
