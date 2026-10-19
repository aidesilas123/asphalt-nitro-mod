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
