###### Class com.mbridge.msdk.thrid.okhttp.internal.cache.CacheInterceptor.AnonymousClass1 (com.mbridge.msdk.thrid.okhttp.internal.cache.CacheInterceptor$1)
.class Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;Lcom/mbridge/msdk/thrid/okhttp/Response;)Lcom/mbridge/msdk/thrid/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lcom/mbridge/msdk/thrid/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

.field final synthetic val$source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;Lcom/mbridge/msdk/thrid/okio/BufferedSource;Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;Lcom/mbridge/msdk/thrid/okio/BufferedSink;)V
    .registers 5

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/mbridge/msdk/thrid/okio/BufferedSink;

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

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/Util;->discard(Lcom/mbridge/msdk/thrid/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;->abort()V

    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/Source;->close()V

    return-void
.end method

.method public read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/Source;->read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_19

    iget-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p1, :cond_18

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okio/Sink;->close()V

    :cond_18
    return-wide v1

    :cond_19
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/BufferedSink;->buffer()Lcom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/thrid/okio/Buffer;->copyTo(Lcom/mbridge/msdk/thrid/okio/Buffer;JJ)Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okio/BufferedSink;->emitCompleteSegments()Lcom/mbridge/msdk/thrid/okio/BufferedSink;

    return-wide p2

    :catch_30
    move-exception p1

    iget-boolean p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p2, :cond_3c

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    invoke-interface {p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;->abort()V

    :cond_3c
    throw p1
.end method

.method public timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/Source;->timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
