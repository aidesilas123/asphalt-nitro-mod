###### Class okhttp3.internal.cache.DiskLruCache.e (okhttp3.internal.cache.DiskLruCache$e)
.class public final Lokhttp3/internal/cache/DiskLruCache$e;
.super Lokhttp3/internal/concurrent/a;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/d/a;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Lokhttp3/internal/concurrent/Task;",
        "runOnce",
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
.field final synthetic e:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$e;->e:Lokhttp3/internal/cache/DiskLruCache;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lokhttp3/internal/concurrent/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public f()J
    .registers 6

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$e;->e:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->j()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3a

    if-eqz v1, :cond_12

    goto :goto_38

    :cond_12
    const/4 v1, 0x1

    :try_start_13
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->J()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_3a

    goto :goto_1a

    :catch_17
    :try_start_17
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3a

    :goto_1a
    :try_start_1a
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->v()V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lokhttp3/internal/cache/DiskLruCache;->access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_3a

    goto :goto_36

    :catch_28
    :try_start_28
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/w;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/d;)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_3a

    :cond_36
    :goto_36
    monitor-exit v0

    return-wide v2

    :cond_38
    :goto_38
    monitor-exit v0

    return-wide v2

    :catchall_3a
    move-exception v1

    monitor-exit v0

    throw v1
.end method
