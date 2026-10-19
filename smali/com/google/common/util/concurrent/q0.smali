###### Class com.google.common.util.concurrent.q0 (com.google.common.util.concurrent.q0)
.class abstract Lcom/google/common/util/concurrent/q0;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/q0$b;,
        Lcom/google/common/util/concurrent/q0$c;
    }
.end annotation


# instance fields
.field c:D

.field d:D

.field e:D

.field private f:J


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/q0;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/q0$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/q0;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    return-void
.end method


# virtual methods
.method final c()D
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/q0;->e:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method final d(DJ)V
    .registers 7

    invoke-virtual {p0, p3, p4}, Lcom/google/common/util/concurrent/q0;->j(J)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p3

    long-to-double p3, p3

    div-double/2addr p3, p1

    iput-wide p3, p0, Lcom/google/common/util/concurrent/q0;->e:D

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/q0;->i(DD)V

    return-void
.end method

.method abstract h()D
.end method

.method abstract i(DD)V
.end method

.method j(J)V
    .registers 9

    iget-wide v0, p0, Lcom/google/common/util/concurrent/q0;->f:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1b

    sub-long v0, p1, v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/q0;->h()D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/util/concurrent/q0;->d:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/q0;->c:D

    add-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/q0;->c:D

    iput-wide p1, p0, Lcom/google/common/util/concurrent/q0;->f:J

    :cond_1b
    return-void
.end method
