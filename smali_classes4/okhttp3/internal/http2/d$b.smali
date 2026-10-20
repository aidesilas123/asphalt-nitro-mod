###### Class okhttp3.internal.http2.Http2Stream.b (okhttp3.internal.http2.d$b)
.class public final Lokhttp3/internal/http2/d$b;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSink;",
        "Lokio/Sink;",
        "finished",
        "",
        "(Lokhttp3/internal/http2/Http2Stream;Z)V",
        "closed",
        "getClosed",
        "()Z",
        "setClosed",
        "(Z)V",
        "getFinished",
        "setFinished",
        "sendBuffer",
        "Lokio/Buffer;",
        "trailers",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "setTrailers",
        "(Lokhttp3/Headers;)V",
        "close",
        "",
        "emitFrame",
        "outFinishedOnLastFrame",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "write",
        "source",
        "byteCount",
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

.field private final b:Lokio/Buffer;

.field private c:Lokhttp3/Headers;

.field private d:Z

.field final synthetic e:Lokhttp3/internal/http2/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/d;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lokhttp3/internal/http2/d$b;->a:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    return-void
.end method

.method private final a(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lokio/AsyncTimeout;->j()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_9d

    :goto_a
    :try_start_a
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->r()J

    move-result-wide v1

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->q()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2c

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$b;->e()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$b;->d()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->F()V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_94

    goto :goto_a

    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http2/d$d;->q()V

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->c()V

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->q()J

    move-result-wide v1

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->r()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->r()J

    move-result-wide v1

    add-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/d;->D(J)V

    if-eqz p1, :cond_60

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    cmp-long p1, v9, v1

    if-nez p1, :cond_60

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_62

    :cond_60
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_62
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_64
    .catchall {:try_start_2c .. :try_end_64} :catchall_9d

    monitor-exit v0

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object p1

    invoke-virtual {p1}, Lokio/AsyncTimeout;->j()V

    :try_start_6e
    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v5

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->j()I

    move-result v6

    iget-object v8, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/http2/Http2Connection;->V(IZLokio/Buffer;J)V
    :try_end_7f
    .catchall {:try_start_6e .. :try_end_7f} :catchall_89

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/http2/d$d;->q()V

    return-void

    :catchall_89
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$d;->q()V

    throw p1

    :catchall_94
    move-exception p1

    :try_start_95
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http2/d$d;->q()V

    throw p1
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_34

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_34
    :goto_34
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_37
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$b;->d()Z

    move-result v1
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_d6

    if-eqz v1, :cond_3f

    monitor-exit v0

    return-void

    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_d6

    monitor-exit v0

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->o()Lokhttp3/internal/http2/d$b;

    move-result-object v0

    iget-boolean v0, v0, Lokhttp3/internal/http2/d$b;->a:Z

    if-nez v0, :cond_bb

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_65

    const/4 v0, 0x1

    goto :goto_66

    :cond_65
    const/4 v0, 0x0

    :goto_66
    iget-object v4, p0, Lokhttp3/internal/http2/d$b;->c:Lokhttp3/Headers;

    if-eqz v4, :cond_6c

    const/4 v4, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    if-eqz v4, :cond_96

    :goto_6f
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_7d

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/d$b;->a(Z)V

    goto :goto_6f

    :cond_7d
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->j()I

    move-result v2

    iget-object v4, p0, Lokhttp3/internal/http2/d$b;->c:Lokhttp3/Headers;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lokhttp3/internal/Util;->toHeaderList(Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lokhttp3/internal/http2/Http2Connection;->W(IZLjava/util/List;)V

    goto :goto_bb

    :cond_96
    if-eqz v0, :cond_a6

    :goto_98
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_bb

    invoke-direct {p0, v3}, Lokhttp3/internal/http2/d$b;->a(Z)V

    goto :goto_98

    :cond_a6
    if-eqz v1, :cond_bb

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v4

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->j()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/http2/Http2Connection;->V(IZLokio/Buffer;J)V

    :cond_bb
    :goto_bb
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_be
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/d$b;->f(Z)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_d3

    monitor-exit v0

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->b()V

    return-void

    :catchall_d3
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_d6
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$b;->d:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$b;->a:Z

    return v0
.end method

.method public final f(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/http2/d$b;->d:Z

    return-void
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_34

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_34
    :goto_34
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_37
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->c()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_58

    monitor-exit v0

    :goto_3d
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_57

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/d$b;->a(Z)V

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_3d

    :cond_57
    return-void

    :catchall_58
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public n(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_39

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_39

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_39
    :goto_39
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    :goto_3e
    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_4f

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lokhttp3/internal/http2/d$b;->a(Z)V

    goto :goto_3e

    :cond_4f
    return-void
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v0

    return-object v0
.end method
