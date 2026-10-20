###### Class com.tapjoy.internal.na (com.tapjoy.internal.na)
.class public abstract Lcom/tapjoy/internal/na;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field public static volatile b:J

.field public static volatile c:J

.field public static volatile d:J


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-class v4, Lcom/tapjoy/internal/na;

    monitor-enter v4

    const/4 v5, 0x0

    :try_start_c
    sput-boolean v5, Lcom/tapjoy/internal/na;->a:Z

    sput-wide v2, Lcom/tapjoy/internal/na;->b:J

    sput-wide v0, Lcom/tapjoy/internal/na;->c:J

    sget-wide v0, Lcom/tapjoy/internal/na;->b:J

    sget-wide v2, Lcom/tapjoy/internal/na;->c:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/tapjoy/internal/na;->d:J

    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_21

    monitor-exit v4

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static a()J
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/tapjoy/internal/na;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method
