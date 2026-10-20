###### Class com.google.common.util.concurrent.q0.c (com.google.common.util.concurrent.q0$c)
.class final Lcom/google/common/util/concurrent/q0$c;
.super Lcom/google/common/util/concurrent/q0;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final g:J

.field private h:D

.field private i:D

.field private j:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;D)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/q0;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/q0$a;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/util/concurrent/q0$c;->g:J

    iput-wide p5, p0, Lcom/google/common/util/concurrent/q0$c;->j:D

    return-void
.end method


# virtual methods
.method h()D
    .registers 5

    iget-wide v0, p0, Lcom/google/common/util/concurrent/q0$c;->g:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/q0;->d:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method i(DD)V
    .registers 13

    iget-wide p1, p0, Lcom/google/common/util/concurrent/q0;->d:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/q0$c;->j:D

    mul-double v0, v0, p3

    iget-wide v2, p0, Lcom/google/common/util/concurrent/q0$c;->g:J

    long-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    div-double/2addr v4, p3

    iput-wide v4, p0, Lcom/google/common/util/concurrent/q0$c;->i:D

    long-to-double v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v6

    add-double v6, p3, v0

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/util/concurrent/q0;->d:D

    sub-double/2addr v0, p3

    sub-double p3, v2, v4

    div-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/common/util/concurrent/q0$c;->h:D

    const-wide/16 p3, 0x0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p1, v0

    if-nez v4, :cond_2c

    iput-wide p3, p0, Lcom/google/common/util/concurrent/q0;->c:D

    goto :goto_39

    :cond_2c
    cmpl-double v0, p1, p3

    if-nez v0, :cond_31

    goto :goto_37

    :cond_31
    iget-wide p3, p0, Lcom/google/common/util/concurrent/q0;->c:D

    mul-double p3, p3, v2

    div-double v2, p3, p1

    :goto_37
    iput-wide v2, p0, Lcom/google/common/util/concurrent/q0;->c:D

    :goto_39
    return-void
.end method
