###### Class okhttp3.internal.cache.DiskLruCache.b (okhttp3.internal.cache.DiskLruCache$b)
.class public final Lokhttp3/internal/cache/DiskLruCache$b;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0008\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\r\u0010\u0011\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "",
        "entry",
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V",
        "done",
        "",
        "getEntry$okhttp",
        "()Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "written",
        "",
        "getWritten$okhttp",
        "()[Z",
        "abort",
        "",
        "commit",
        "detach",
        "detach$okhttp",
        "newSink",
        "Lokio/Sink;",
        "index",
        "",
        "newSource",
        "Lokio/Source;",
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
.field private final a:Lokhttp3/internal/cache/DiskLruCache$c;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$c;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-virtual {p2}, Lokhttp3/internal/cache/DiskLruCache$c;->g()Z

    move-result p2

    if-eqz p2, :cond_19

    const/4 p1, 0x0

    goto :goto_1f

    :cond_19
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result p1

    new-array p1, p1, [Z

    :goto_1f
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->b:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->e(Lokhttp3/internal/cache/DiskLruCache$b;Z)V

    :cond_1b
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2d

    monitor-exit v0

    return-void

    :cond_21
    :try_start_21
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->e(Lokhttp3/internal/cache/DiskLruCache$b;Z)V

    :cond_1a
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c

    monitor-exit v0

    return-void

    :cond_20
    :try_start_20
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->e(Lokhttp3/internal/cache/DiskLruCache$b;Z)V

    goto :goto_21

    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$c;->q(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final d()Lokhttp3/internal/cache/DiskLruCache$c;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    return-object v0
.end method

.method public final e()[Z
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->b:[Z

    return-object v0
.end method

.method public final f(I)Lokio/w;
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/w;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_64

    monitor-exit v0

    return-object p1

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->g()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->e()[Z

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-boolean v2, v1, p1

    :cond_30
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_3e
    .catchall {:try_start_1d .. :try_end_3e} :catchall_64

    :try_start_3e
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->l()Lokhttp3/internal/d/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lokhttp3/internal/d/a;->sink(Ljava/io/File;)Lokio/w;

    move-result-object p1
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_46} :catch_52
    .catchall {:try_start_3e .. :try_end_46} :catchall_64

    :try_start_46
    new-instance v1, Lokhttp3/internal/cache/c;

    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$b$a;

    invoke-direct {v2, v0, p0}, Lokhttp3/internal/cache/DiskLruCache$b$a;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$b;)V

    invoke-direct {v1, p1, v2}, Lokhttp3/internal/cache/c;-><init>(Lokio/w;Lkotlin/jvm/b/l;)V
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_64

    monitor-exit v0

    return-object v1

    :catch_52
    :try_start_52
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/w;

    move-result-object p1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_64

    monitor-exit v0

    return-object p1

    :cond_58
    :try_start_58
    const-string p1, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    monitor-exit v0

    throw p1
.end method
