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
