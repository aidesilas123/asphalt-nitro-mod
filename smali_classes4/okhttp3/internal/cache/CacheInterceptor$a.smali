###### Class okhttp3.internal.cache.CacheInterceptor.a (okhttp3.internal.cache.CacheInterceptor$a)
.class public final Lokhttp3/internal/cache/CacheInterceptor$a;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/CacheInterceptor;->a(Lokhttp3/internal/cache/a;Lokhttp3/Response;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1",
        "Lokio/Source;",
        "cacheRequestClosed",
        "",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "timeout",
        "Lokio/Timeout;",
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
.field private a:Z

.field final synthetic b:Lokio/e;

.field final synthetic c:Lokhttp3/internal/cache/a;

.field final synthetic d:Lokio/d;


# direct methods
.method constructor <init>(Lokio/e;Lokhttp3/internal/cache/a;Lokio/d;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->b:Lokio/e;

    iput-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->c:Lokhttp3/internal/cache/a;

    iput-object p3, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->d:Lokio/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->a:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/y;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->a:Z

    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->c:Lokhttp3/internal/cache/a;

    invoke-interface {v0}, Lokhttp3/internal/cache/a;->abort()V

    :cond_16
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->b:Lokio/e;

    invoke-interface {v0}, Lokio/y;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_6
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->b:Lokio/e;

    invoke-interface {v1, p1, p2, p3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide p2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_35

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1e

    iget-boolean p1, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->a:Z

    if-nez p1, :cond_1d

    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->a:Z

    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->d:Lokio/d;

    invoke-interface {p1}, Lokio/w;->close()V

    :cond_1d
    return-wide v1

    :cond_1e
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->d:Lokio/d;

    invoke-interface {v0}, Lokio/d;->y()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->j(Lokio/Buffer;JJ)Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->d:Lokio/d;

    invoke-interface {p1}, Lokio/d;->emitCompleteSegments()Lokio/d;

    return-wide p2

    :catch_35
    move-exception p1

    iget-boolean p2, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->a:Z

    if-nez p2, :cond_41

    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->a:Z

    iget-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->c:Lokhttp3/internal/cache/a;

    invoke-interface {p2}, Lokhttp3/internal/cache/a;->abort()V

    :cond_41
    throw p1
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$a;->b:Lokio/e;

    invoke-interface {v0}, Lokio/y;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method
