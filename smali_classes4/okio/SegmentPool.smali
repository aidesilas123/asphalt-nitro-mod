###### Class okio.SegmentPool (okio.SegmentPool)
.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# static fields
.field public static final a:Lokio/SegmentPool;

.field private static final b:I

.field private static final c:Lokio/u;

.field private static final d:I

.field private static final e:[Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lokio/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->a:Lokio/SegmentPool;

    const/high16 v0, 0x10000

    sput v0, Lokio/SegmentPool;->b:I

    new-instance v0, Lokio/u;

    const/4 v7, 0x0

    new-array v2, v7, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/u;-><init>([BIIZZ)V

    sput-object v0, Lokio/SegmentPool;->c:Lokio/u;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    sput v0, Lokio/SegmentPool;->d:I

    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2e
    if-ge v7, v0, :cond_3a

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_3a
    sput-object v1, Lokio/SegmentPool;->e:[Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lokio/u;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget v2, Lokio/SegmentPool;->d:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v1, v0

    sget-object v0, Lokio/SegmentPool;->e:[Ljava/util/concurrent/atomic/AtomicReference;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final recycle(Lokio/u;)V
    .registers 6

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/u;->g:Lokio/u;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lokio/u;->h:Lokio/u;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lokio/u;->e:Z

    if-eqz v0, :cond_18

    return-void

    :cond_18
    sget-object v0, Lokio/SegmentPool;->a:Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/u;

    sget-object v3, Lokio/SegmentPool;->c:Lokio/u;

    if-ne v2, v3, :cond_29

    return-void

    :cond_29
    if-nez v2, :cond_2d

    const/4 v3, 0x0

    goto :goto_2f

    :cond_2d
    iget v3, v2, Lokio/u;->d:I

    :goto_2f
    sget v4, Lokio/SegmentPool;->b:I

    if-lt v3, v4, :cond_34

    return-void

    :cond_34
    iput-object v2, p0, Lokio/u;->g:Lokio/u;

    iput v1, p0, Lokio/u;->c:I

    add-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lokio/u;->d:I

    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/u;->g:Lokio/u;

    :cond_45
    return-void

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final take()Lokio/u;
    .registers 4

    sget-object v0, Lokio/SegmentPool;->a:Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lokio/SegmentPool;->c:Lokio/u;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/u;

    if-ne v2, v1, :cond_16

    new-instance v0, Lokio/u;

    invoke-direct {v0}, Lokio/u;-><init>()V

    return-object v0

    :cond_16
    const/4 v1, 0x0

    if-nez v2, :cond_22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lokio/u;

    invoke-direct {v0}, Lokio/u;-><init>()V

    return-object v0

    :cond_22
    iget-object v3, v2, Lokio/u;->g:Lokio/u;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v1, v2, Lokio/u;->g:Lokio/u;

    const/4 v0, 0x0

    iput v0, v2, Lokio/u;->d:I

    return-object v2
.end method
