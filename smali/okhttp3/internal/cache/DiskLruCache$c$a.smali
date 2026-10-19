###### Class okhttp3.internal.cache.DiskLruCache.c.a (okhttp3.internal.cache.DiskLruCache$c$a)
.class public final Lokhttp3/internal/cache/DiskLruCache$c$a;
.super Lokio/j;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache$c;->k(I)Lokio/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$Entry$newSource$1",
        "Lokio/ForwardingSource;",
        "closed",
        "",
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
.field private a:Z

.field final synthetic b:Lokio/y;

.field final synthetic c:Lokhttp3/internal/cache/DiskLruCache;

.field final synthetic d:Lokhttp3/internal/cache/DiskLruCache$c;


# direct methods
.method constructor <init>(Lokio/y;Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$c;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->b:Lokio/y;

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->c:Lokhttp3/internal/cache/DiskLruCache;

    iput-object p3, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->d:Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-direct {p0, p1}, Lokio/j;-><init>(Lokio/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    invoke-super {p0}, Lokio/j;->close()V

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->a:Z

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->a:Z

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->c:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->d:Lokhttp3/internal/cache/DiskLruCache$c;

    monitor-enter v0

    :try_start_f
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$c;->n(I)V

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->f()I

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->i()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->x(Lokhttp3/internal/cache/DiskLruCache$c;)Z

    :cond_27
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_2b

    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2e
    :goto_2e
    return-void
.end method
