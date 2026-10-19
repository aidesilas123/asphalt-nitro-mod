###### Class okio.FileHandle (okio.FileHandle)
.class public abstract Lokio/FileHandle;
.super Ljava/lang/Object;
.source "FileHandle.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileHandle$a;,
        Lokio/FileHandle$b;
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokio/FileHandle;->a:Z

    return-void
.end method

.method public static final synthetic access$getClosed$p(Lokio/FileHandle;)Z
    .registers 1

    iget-boolean p0, p0, Lokio/FileHandle;->b:Z

    return p0
.end method

.method public static final synthetic access$getOpenStreamCount$p(Lokio/FileHandle;)I
    .registers 1

    iget p0, p0, Lokio/FileHandle;->c:I

    return p0
.end method

.method public static final synthetic access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J
    .registers 6

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->i(JLokio/Buffer;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setOpenStreamCount$p(Lokio/FileHandle;I)V
    .registers 2

    iput p1, p0, Lokio/FileHandle;->c:I

    return-void
.end method

.method public static final synthetic access$writeNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->m(JLokio/Buffer;J)V

    return-void
.end method

.method private final i(JLokio/Buffer;J)J
    .registers 21

    move-object/from16 v0, p3

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-ltz v4, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_5a

    add-long v2, p1, p4

    move-wide/from16 v10, p1

    :goto_12
    cmp-long v4, v10, v2

    if-gez v4, :cond_57

    invoke-virtual {v0, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v12

    iget-object v7, v12, Lokio/u;->b:[B

    iget v8, v12, Lokio/u;->d:I

    sub-long v4, v2, v10

    rsub-int v6, v8, 0x2000

    int-to-long v13, v6

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v9, v4

    move-object v4, p0

    move-wide v5, v10

    invoke-virtual/range {v4 .. v9}, Lokio/FileHandle;->f(J[BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_47

    iget v1, v12, Lokio/u;->c:I

    iget v2, v12, Lokio/u;->d:I

    if-ne v1, v2, :cond_40

    invoke-virtual {v12}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v12}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_40
    cmp-long v0, p1, v10

    if-nez v0, :cond_57

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_47
    iget v5, v12, Lokio/u;->d:I

    add-int/2addr v5, v4

    iput v5, v12, Lokio/u;->d:I

    int-to-long v4, v4

    add-long/2addr v10, v4

    invoke-virtual/range {p3 .. p3}, Lokio/Buffer;->I()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->x(J)V

    goto :goto_12

    :cond_57
    sub-long v10, v10, p1

    return-wide v10

    :cond_5a
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "byteCount < 0: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final m(JLokio/Buffer;J)V
    .registers 14

    invoke-virtual {p3}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    add-long/2addr p4, p1

    :cond_b
    :goto_b
    cmp-long v0, p1, p4

    if-gez v0, :cond_4a

    iget-object v6, p3, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-long v0, p4, p1

    iget v2, v6, Lokio/u;->d:I

    iget v3, v6, Lokio/u;->c:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    iget-object v3, v6, Lokio/u;->b:[B

    iget v4, v6, Lokio/u;->c:I

    move-object v0, p0

    move-wide v1, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lokio/FileHandle;->h(J[BII)V

    iget v0, v6, Lokio/u;->c:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/u;->c:I

    int-to-long v0, v7

    add-long/2addr p1, v0

    invoke-virtual {p3}, Lokio/Buffer;->I()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Lokio/Buffer;->x(J)V

    iget v0, v6, Lokio/u;->c:I

    iget v1, v6, Lokio/u;->d:I

    if-ne v0, v1, :cond_b

    invoke-virtual {v6}, Lokio/u;->b()Lokio/u;

    move-result-object v0

    iput-object v0, p3, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_b

    :cond_4a
    return-void
.end method

.method public static synthetic sink$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/w;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    const-wide/16 p1, 0x0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->j(J)Lokio/w;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic source$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/y;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    const-wide/16 p1, 0x0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->l(J)Lokio/y;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: source"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokio/FileHandle;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lokio/FileHandle;->b:Z

    iget v0, p0, Lokio/FileHandle;->c:I
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_17

    if-eqz v0, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_17

    monitor-exit p0

    invoke-virtual {p0}, Lokio/FileHandle;->d()V

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract e()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract f(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract g()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract h(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final j(J)Lokio/w;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/FileHandle;->a:Z

    if-eqz v0, :cond_27

    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Lokio/FileHandle;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    iget v0, p0, Lokio/FileHandle;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokio/FileHandle;->c:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_24

    monitor-exit p0

    new-instance v0, Lokio/FileHandle$a;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$a;-><init>(Lokio/FileHandle;J)V

    return-object v0

    :cond_18
    :try_start_18
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_27
    const-string p1, "file handle is read-only"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokio/FileHandle;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    monitor-exit p0

    invoke-virtual {p0}, Lokio/FileHandle;->g()J

    move-result-wide v0

    return-wide v0

    :cond_f
    :try_start_f
    const-string v0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l(J)Lokio/y;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokio/FileHandle;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    iget v0, p0, Lokio/FileHandle;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokio/FileHandle;->c:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_20

    monitor-exit p0

    new-instance v0, Lokio/FileHandle$b;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$b;-><init>(Lokio/FileHandle;J)V

    return-object v0

    :cond_14
    :try_start_14
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
