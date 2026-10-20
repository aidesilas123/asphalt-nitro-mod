###### Class okio.z (okio.z)
.class public Lokio/z;
.super Ljava/lang/Object;
.source "Timeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/z$b;
    }
.end annotation


# static fields
.field public static final a:Lokio/z$b;

.field public static final b:Lokio/z;


# instance fields
.field private c:Z

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/z$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/z;->a:Lokio/z$b;

    new-instance v0, Lokio/z$a;

    invoke-direct {v0}, Lokio/z$a;-><init>()V

    sput-object v0, Lokio/z;->b:Lokio/z;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/z;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/z;->c:Z

    return-object p0
.end method

.method public b()Lokio/z;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokio/z;->e:J

    return-object p0
.end method

.method public c()J
    .registers 3

    iget-boolean v0, p0, Lokio/z;->c:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lokio/z;->d:J

    return-wide v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(J)Lokio/z;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/z;->c:Z

    iput-wide p1, p0, Lokio/z;->d:J

    return-object p0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lokio/z;->c:Z

    return v0
.end method

.method public f()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lokio/z;->c:Z

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lokio/z;->d:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_24
    return-void

    :cond_25
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/z;
    .registers 7

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_17

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lokio/z;->e:J

    return-object p0

    :cond_17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "timeout < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Lokio/z;->e:J

    return-wide v0
.end method
