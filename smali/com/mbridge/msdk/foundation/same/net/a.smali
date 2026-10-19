###### Class com.mbridge.msdk.foundation.same.net.a (com.mbridge.msdk.foundation.same.net.a)
.class public final Lcom/mbridge/msdk/foundation/same/net/a;
.super Ljava/lang/Object;
.source "BandWideUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/net/a$a;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/same/net/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/foundation/same/net/a;
    .registers 1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/a$a;->a()Lcom/mbridge/msdk/foundation/same/net/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .registers 6

    monitor-enter p0

    :try_start_1
    sget-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->a:J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->c:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 10

    monitor-enter p0

    :try_start_1
    sget-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_46

    sget-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->c:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_46

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v4, Lcom/mbridge/msdk/foundation/same/net/a;->a:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_48

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_43

    :try_start_1a
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3c

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    sget-wide v6, Lcom/mbridge/msdk/foundation/same/net/a;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    div-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-nez v0, :cond_39

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->b:J

    goto :goto_43

    :cond_39
    sput-wide v4, Lcom/mbridge/msdk/foundation/same/net/a;->b:J

    goto :goto_43

    :cond_3c
    sput-wide v2, Lcom/mbridge/msdk/foundation/same/net/a;->b:J
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3e} :catch_3f
    .catchall {:try_start_1a .. :try_end_3e} :catchall_48

    goto :goto_43

    :catch_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/a;->d()V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    sput-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->c:J

    sput-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->a:J
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()J
    .registers 3

    sget-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->b:J

    return-wide v0
.end method

###### Class com.mbridge.msdk.foundation.same.net.a.AnonymousClass1 (com.mbridge.msdk.foundation.same.net.a$1)
.class final synthetic Lcom/mbridge/msdk/foundation/same/net/a$1;
.super Ljava/lang/Object;
.source "BandWideUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.foundation.same.net.a.C0405a (com.mbridge.msdk.foundation.same.net.a$a)
.class final Lcom/mbridge/msdk/foundation/same/net/a$a;
.super Ljava/lang/Object;
.source "BandWideUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/foundation/same/net/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/a;-><init>(Lcom/mbridge/msdk/foundation/same/net/a$1;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/net/a$a;->a:Lcom/mbridge/msdk/foundation/same/net/a;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/foundation/same/net/a;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/a$a;->a:Lcom/mbridge/msdk/foundation/same/net/a;

    return-object v0
.end method
