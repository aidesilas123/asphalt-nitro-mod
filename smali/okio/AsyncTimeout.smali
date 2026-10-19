###### Class okio.AsyncTimeout (okio.AsyncTimeout)
.class public Lokio/AsyncTimeout;
.super Lokio/z;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$a;,
        Lokio/AsyncTimeout$Companion;
    }
.end annotation


# static fields
.field public static final f:Lokio/AsyncTimeout$Companion;

.field private static final g:J

.field private static final h:J

.field private static i:Lokio/AsyncTimeout;


# instance fields
.field private j:Z

.field private k:Lokio/AsyncTimeout;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lokio/AsyncTimeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/AsyncTimeout$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/AsyncTimeout;->f:Lokio/AsyncTimeout$Companion;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->g:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->h:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokio/z;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHead$cp()Lokio/AsyncTimeout;
    .registers 1

    sget-object v0, Lokio/AsyncTimeout;->i:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .registers 2

    sget-wide v0, Lokio/AsyncTimeout;->g:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .registers 2

    sget-wide v0, Lokio/AsyncTimeout;->h:J

    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(Lokio/AsyncTimeout;)Z
    .registers 1

    iget-boolean p0, p0, Lokio/AsyncTimeout;->j:Z

    return p0
.end method

.method public static final synthetic access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    .registers 1

    iget-object p0, p0, Lokio/AsyncTimeout;->k:Lokio/AsyncTimeout;

    return-object p0
.end method

.method public static final synthetic access$remainingNanos(Lokio/AsyncTimeout;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lokio/AsyncTimeout;->m(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setHead$cp(Lokio/AsyncTimeout;)V
    .registers 1

    sput-object p0, Lokio/AsyncTimeout;->i:Lokio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setInQueue$p(Lokio/AsyncTimeout;Z)V
    .registers 2

    iput-boolean p1, p0, Lokio/AsyncTimeout;->j:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    .registers 2

    iput-object p1, p0, Lokio/AsyncTimeout;->k:Lokio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V
    .registers 3

    iput-wide p1, p0, Lokio/AsyncTimeout;->l:J

    return-void
.end method

.method private final m(J)J
    .registers 5

    iget-wide v0, p0, Lokio/AsyncTimeout;->l:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final i(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .registers 7

    invoke-virtual {p0}, Lokio/z;->h()J

    move-result-wide v0

    invoke-virtual {p0}, Lokio/z;->e()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_11

    if-nez v2, :cond_11

    return-void

    :cond_11
    sget-object v3, Lokio/AsyncTimeout;->f:Lokio/AsyncTimeout$Companion;

    invoke-static {v3, p0, v0, v1, v2}, Lokio/AsyncTimeout$Companion;->access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V

    return-void
.end method

.method public final k()Z
    .registers 2

    sget-object v0, Lokio/AsyncTimeout;->f:Lokio/AsyncTimeout$Companion;

    invoke-static {v0, p0}, Lokio/AsyncTimeout$Companion;->access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected l(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final n(Lokio/w;)Lokio/w;
    .registers 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/AsyncTimeout$b;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$b;-><init>(Lokio/AsyncTimeout;Lokio/w;)V

    return-object v0
.end method

.method public final o(Lokio/y;)Lokio/y;
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/AsyncTimeout$c;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$c;-><init>(Lokio/AsyncTimeout;Lokio/y;)V

    return-object v0
.end method

.method protected p()V
    .registers 1

    return-void
.end method

###### Class okio.AsyncTimeout.Companion (okio.AsyncTimeout$Companion)
.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z
    .registers 2

    invoke-direct {p0, p1}, Lokio/AsyncTimeout$Companion;->b(Lokio/AsyncTimeout;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lokio/AsyncTimeout$Companion;->c(Lokio/AsyncTimeout;JZ)V

    return-void
.end method

.method private final b(Lokio/AsyncTimeout;)Z
    .registers 6

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_30

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return v2

    :cond_c
    :try_start_c
    invoke-static {p1, v2}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    :goto_13
    if-eqz v1, :cond_2d

    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    if-ne v3, p1, :cond_28

    invoke-static {p1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    invoke-static {v1, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_30

    monitor-exit v0

    return v2

    :cond_28
    :try_start_28
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_30

    goto :goto_13

    :cond_2d
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_30
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final c(Lokio/AsyncTimeout;JZ)V
    .registers 11

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_96

    invoke-static {p1, v2}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_26

    sget-object v1, Lokio/AsyncTimeout;->f:Lokio/AsyncTimeout$Companion;

    new-instance v1, Lokio/AsyncTimeout;

    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    invoke-static {v1}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V

    new-instance v1, Lokio/AsyncTimeout$a;

    invoke-direct {v1}, Lokio/AsyncTimeout$a;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-eqz v5, :cond_40

    if-eqz p4, :cond_40

    invoke-virtual {p1}, Lokio/z;->c()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    add-long/2addr p2, v1

    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto :goto_50

    :cond_40
    if-eqz v5, :cond_47

    add-long/2addr p2, v1

    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto :goto_50

    :cond_47
    if-eqz p4, :cond_90

    invoke-virtual {p1}, Lokio/z;->c()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    :goto_50
    invoke-static {p1, v1, v2}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide p2

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5b
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    if-eqz v3, :cond_79

    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v1, v2}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_71

    goto :goto_79

    :cond_71
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_79
    :goto_79
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object p2

    invoke-static {p1, p2}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    invoke-static {p4, p1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object p1

    if-ne p4, p1, :cond_8c

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_8c
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_a2

    monitor-exit v0

    return-void

    :cond_90
    :try_start_90
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_96
    const-string p1, "Unbalanced enter/exit"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_a2
    .catchall {:try_start_90 .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final a()Lokio/AsyncTimeout;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-class v0, Lokio/AsyncTimeout;

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_39

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v2

    :cond_39
    return-object v2

    :cond_3a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_55

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_55
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    invoke-static {v0, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    invoke-static {v1, v2}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    return-object v1
.end method

###### Class okio.AsyncTimeout.a (okio.AsyncTimeout$a)
.class final Lokio/AsyncTimeout$a;
.super Ljava/lang/Thread;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->f:Lokio/AsyncTimeout$Companion;

    invoke-virtual {v1}, Lokio/AsyncTimeout$Companion;->a()Lokio/AsyncTimeout;

    move-result-object v1

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x0

    invoke-static {v1}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1f

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_0

    return-void

    :cond_15
    :try_start_15
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1f

    :try_start_17
    monitor-exit v0

    if-nez v1, :cond_1b

    goto :goto_0

    :cond_1b
    invoke-virtual {v1}, Lokio/AsyncTimeout;->p()V

    goto :goto_0

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_22} :catch_0
.end method

###### Class okio.AsyncTimeout.b (okio.AsyncTimeout$b)
.class public final Lokio/AsyncTimeout$b;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->n(Lokio/w;)Lokio/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/AsyncTimeout;

.field final synthetic b:Lokio/w;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/w;)V
    .registers 3

    iput-object p1, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_7
    invoke-interface {v1}, Lokio/w;->close()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1b
    .catchall {:try_start_7 .. :try_end_c} :catchall_19

    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_19
    move-exception v1

    goto :goto_28

    :catch_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_27
    throw v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    :goto_28
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v0

    throw v1
.end method

.method public d()Lokio/AsyncTimeout;
    .registers 2

    iget-object v0, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public flush()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_7
    invoke-interface {v1}, Lokio/w;->flush()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1b
    .catchall {:try_start_7 .. :try_end_c} :catchall_19

    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_19
    move-exception v1

    goto :goto_28

    :catch_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_27
    throw v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    :goto_28
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v0

    throw v1
.end method

.method public n(Lokio/Buffer;J)V
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    :goto_f
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_62

    iget-object v2, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1a
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_34

    iget v3, v2, Lokio/u;->d:I

    iget v4, v2, Lokio/u;->c:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_2e

    move-wide v0, p2

    goto :goto_34

    :cond_2e
    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_34
    :goto_34
    iget-object v2, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iget-object v3, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->j()V

    :try_start_3b
    invoke-interface {v3, p1, v0, v1}, Lokio/w;->n(Lokio/Buffer;J)V

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_50
    .catchall {:try_start_3b .. :try_end_40} :catchall_4e

    invoke-virtual {v2}, Lokio/AsyncTimeout;->k()Z

    move-result v3

    if-nez v3, :cond_48

    sub-long/2addr p2, v0

    goto :goto_f

    :cond_48
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_4e
    move-exception p1

    goto :goto_5d

    :catch_50
    move-exception p1

    :try_start_51
    invoke-virtual {v2}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    if-nez p2, :cond_58

    goto :goto_5c

    :cond_58
    invoke-virtual {v2, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_5c
    throw p1
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_4e

    :goto_5d
    invoke-virtual {v2}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    throw p1

    :cond_62
    return-void
.end method

.method public bridge synthetic timeout()Lokio/z;
    .registers 2

    invoke-virtual {p0}, Lokio/AsyncTimeout$b;->d()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.AsyncTimeout.c (okio.AsyncTimeout$c)
.class public final Lokio/AsyncTimeout$c;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->o(Lokio/y;)Lokio/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/AsyncTimeout;

.field final synthetic b:Lokio/y;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/y;)V
    .registers 3

    iput-object p1, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_7
    invoke-interface {v1}, Lokio/y;->close()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1b
    .catchall {:try_start_7 .. :try_end_c} :catchall_19

    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_19
    move-exception v1

    goto :goto_28

    :catch_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_27
    throw v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    :goto_28
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v0

    throw v1
.end method

.method public d()Lokio/AsyncTimeout;
    .registers 2

    iget-object v0, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_c
    invoke-interface {v1, p1, p2, p3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_1f
    .catchall {:try_start_c .. :try_end_10} :catchall_1d

    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result p3

    if-nez p3, :cond_17

    return-wide p1

    :cond_17
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_1d
    move-exception p1

    goto :goto_2c

    :catch_1f
    move-exception p1

    :try_start_20
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {v0, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_2b
    throw p1
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_1d

    :goto_2c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    throw p1
.end method

.method public bridge synthetic timeout()Lokio/z;
    .registers 2

    invoke-virtual {p0}, Lokio/AsyncTimeout$c;->d()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
