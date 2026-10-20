###### Class okio.Throttler (okio.Throttler)
.class public final Lokio/Throttler;
.super Ljava/lang/Object;
.source "Throttler.kt"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokio/Throttler;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/Throttler;->a:J

    const-wide/16 p1, 0x2000

    iput-wide p1, p0, Lokio/Throttler;->c:J

    const-wide/32 p1, 0x40000

    iput-wide p1, p0, Lokio/Throttler;->d:J

    return-void
.end method

.method public static synthetic bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_6

    iget-wide p3, p0, Lokio/Throttler;->c:J

    :cond_6
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_d

    iget-wide p5, p0, Lokio/Throttler;->d:J

    :cond_d
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lokio/Throttler;->a(JJJ)V

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .registers 12

    monitor-enter p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_44

    cmp-long v4, p3, v0

    if-lez v4, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_38

    cmp-long v0, p5, p3

    if-ltz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_2c

    :try_start_1f
    iput-wide p1, p0, Lokio/Throttler;->b:J

    iput-wide p3, p0, Lokio/Throttler;->c:J

    iput-wide p5, p0, Lokio/Throttler;->d:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_50

    monitor-exit p0

    return-void

    :cond_2c
    :try_start_2c
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_38
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_44
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method
