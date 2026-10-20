###### Class okhttp3.internal.http2.Http2Stream.c (okhttp3.internal.http2.d$c)
.class public final Lokhttp3/internal/http2/d$c;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u001d\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\"J\u0008\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002R\u001a\u0010\u0007\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
        "maxByteCount",
        "",
        "finished",
        "",
        "(Lokhttp3/internal/http2/Http2Stream;JZ)V",
        "closed",
        "getClosed$okhttp",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "getFinished$okhttp",
        "setFinished$okhttp",
        "readBuffer",
        "Lokio/Buffer;",
        "getReadBuffer",
        "()Lokio/Buffer;",
        "receiveBuffer",
        "getReceiveBuffer",
        "trailers",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "setTrailers",
        "(Lokhttp3/Headers;)V",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
        "receive",
        "source",
        "Lokio/BufferedSource;",
        "receive$okhttp",
        "timeout",
        "Lokio/Timeout;",
        "updateConnectionFlowControl",
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
.field private final a:J

.field private b:Z

.field private final c:Lokio/Buffer;

.field private final d:Lokio/Buffer;

.field private e:Lokhttp3/Headers;

.field private f:Z

.field final synthetic g:Lokhttp3/internal/http2/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/d;JZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lokhttp3/internal/http2/d$c;->a:J

    iput-boolean p4, p0, Lokhttp3/internal/http2/d$c;->b:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->c:Lokio/Buffer;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->d:Lokio/Buffer;

    return-void
.end method

.method private final l(J)V
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_34

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_34
    :goto_34
    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->U(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Lokhttp3/internal/http2/d$c;->i(Z)V

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v1

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->d()V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_2b

    monitor-exit v0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_25

    invoke-direct {p0, v1, v2}, Lokhttp3/internal/http2/d$c;->l(J)V

    :cond_25
    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->b()V

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$c;->f:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$c;->b:Z

    return v0
.end method

.method public final f()Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->d:Lokio/Buffer;

    return-object v0
.end method

.method public final g()Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->c:Lokio/Buffer;

    return-object v0
.end method

.method public final h(Lokio/e;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

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
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_cb

    iget-object v2, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v2

    :try_start_42
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->e()Z

    move-result v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->I()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/d$c;->a:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_59

    const/4 v4, 0x1

    goto :goto_5a

    :cond_59
    const/4 v4, 0x0

    :goto_5a
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_c8

    monitor-exit v2

    if-eqz v4, :cond_6a

    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    iget-object p1, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/d;->f(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_6a
    if-eqz v3, :cond_70

    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    return-void

    :cond_70
    iget-object v2, p0, Lokhttp3/internal/http2/d$c;->c:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c2

    sub-long/2addr p2, v2

    iget-object v2, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v2

    :try_start_80
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->d()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->g()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->g()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->d()V

    goto :goto_b5

    :cond_96
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v8, 0x0

    :goto_a4
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->g()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Buffer;->D(Lokio/y;)J

    if-eqz v8, :cond_b4

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_b4
    .catchall {:try_start_80 .. :try_end_b4} :catchall_bf

    :cond_b4
    move-wide v3, v0

    :goto_b5
    monitor-exit v2

    cmp-long v2, v3, v0

    if-lez v2, :cond_39

    invoke-direct {p0, v3, v4}, Lokhttp3/internal/http2/d$c;->l(J)V

    goto/16 :goto_39

    :catchall_bf
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_c2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_c8
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_cb
    return-void
.end method

.method public final i(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/http2/d$c;->f:Z

    return-void
.end method

.method public final j(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/http2/d$c;->b:Z

    return-void
.end method

.method public final k(Lokhttp3/Headers;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->e:Lokhttp3/Headers;

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    :goto_14
    if-eqz v8, :cond_db

    :goto_16
    const/4 v8, 0x0

    iget-object v9, v1, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v9

    :try_start_1a
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v10

    invoke-virtual {v10}, Lokio/AsyncTimeout;->j()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_d8

    :try_start_21
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->i()Ljava/io/IOException;

    move-result-object v8

    if-nez v8, :cond_39

    new-instance v8, Lokhttp3/internal/http2/i;

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v10}, Lokhttp3/internal/http2/i;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->d()Z

    move-result v10

    if-nez v10, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Lokio/Buffer;->I()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v6

    if-lez v14, :cond_9b

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Lokio/Buffer;->I()J

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-virtual {v10, v0, v14, v15}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v10

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->l()J

    move-result-wide v14

    add-long/2addr v14, v10

    invoke-virtual {v9, v14, v15}, Lokhttp3/internal/http2/d;->C(J)V

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->l()J

    move-result-wide v14

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->k()J

    move-result-wide v16

    sub-long v14, v14, v16

    if-nez v8, :cond_aa

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/Http2Connection;->i()Lokhttp3/internal/http2/h;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/h;->c()I

    move-result v16

    div-int/lit8 v4, v16, 0x2

    int-to-long v5, v4

    cmp-long v4, v14, v5

    if-ltz v4, :cond_aa

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v4

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->j()I

    move-result v5

    invoke-virtual {v4, v5, v14, v15}, Lokhttp3/internal/http2/Http2Connection;->a0(IJ)V

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->l()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lokhttp3/internal/http2/d;->B(J)V

    goto :goto_aa

    :cond_9b
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->e()Z

    move-result v4

    if-nez v4, :cond_a9

    if-nez v8, :cond_a9

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->F()V
    :try_end_a6
    .catchall {:try_start_21 .. :try_end_a6} :catchall_cf

    move-wide v10, v12

    const/4 v4, 0x1

    goto :goto_ab

    :cond_a9
    move-wide v10, v12

    :cond_aa
    :goto_aa
    const/4 v4, 0x0

    :goto_ab
    :try_start_ab
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/http2/d$d;->q()V

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_d8

    monitor-exit v9

    if-eqz v4, :cond_bb

    const-wide/16 v6, 0x0

    goto/16 :goto_16

    :cond_bb
    cmp-long v0, v10, v12

    if-eqz v0, :cond_c3

    invoke-direct {v1, v10, v11}, Lokhttp3/internal/http2/d$c;->l(J)V

    return-wide v10

    :cond_c3
    if-nez v8, :cond_c6

    return-wide v12

    :cond_c6
    throw v8

    :cond_c7
    :try_start_c7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/http2/d$d;->q()V

    throw v0
    :try_end_d8
    .catchall {:try_start_d0 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_db
    const-string v0, "byteCount < 0: "

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v0

    return-object v0
.end method
