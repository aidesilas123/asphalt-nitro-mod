###### Class com.mbridge.msdk.foundation.same.report.b.b (com.mbridge.msdk.foundation.same.report.b.b)
.class public Lcom/mbridge/msdk/foundation/same/report/b/b;
.super Ljava/lang/Thread;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/report/b/b$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/mbridge/msdk/foundation/same/report/b/b;


# instance fields
.field private a:I

.field private final c:Landroid/os/Handler;

.field private volatile d:Lcom/mbridge/msdk/foundation/same/report/b/b$a;

.field private e:Lcom/mbridge/msdk/foundation/same/report/b/a;


# direct methods
.method private constructor <init>()V
    .registers 3

    const-string v0, "AnrMonitor-Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->a:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/report/b/b;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/mbridge/msdk/foundation/same/report/b/b;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/b/b;->b:Lcom/mbridge/msdk/foundation/same/report/b/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/mbridge/msdk/foundation/same/report/b/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/foundation/same/report/b/b;->b:Lcom/mbridge/msdk/foundation/same/report/b/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/b/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/b/b;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/same/report/b/b;->b:Lcom/mbridge/msdk/foundation/same/report/b/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/b/b;->b:Lcom/mbridge/msdk/foundation/same/report/b/b;

    return-object v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/same/report/b/b;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->a:I

    return p0
.end method


# virtual methods
.method public final a(ILcom/mbridge/msdk/foundation/same/report/b/a;)Lcom/mbridge/msdk/foundation/same/report/b/b;
    .registers 3

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->a:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->e:Lcom/mbridge/msdk/foundation/same/report/b/a;

    return-object p0
.end method

.method public run()V
    .registers 8

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_5
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->d:Lcom/mbridge/msdk/foundation/same/report/b/b$a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->d:Lcom/mbridge/msdk/foundation/same/report/b/b$a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/b/b$a;->a(Lcom/mbridge/msdk/foundation/same/report/b/b$a;)Z

    move-result v0

    if-eqz v0, :cond_8c

    :cond_17
    monitor-enter p0

    :try_start_18
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->d:Lcom/mbridge/msdk/foundation/same/report/b/b$a;

    if-nez v0, :cond_24

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/b/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/foundation/same/report/b/b$a;-><init>(Lcom/mbridge/msdk/foundation/same/report/b/b;Lcom/mbridge/msdk/foundation/same/report/b/b$1;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->d:Lcom/mbridge/msdk/foundation/same/report/b/b$a;

    :cond_24
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->d:Lcom/mbridge/msdk/foundation/same/report/b/b$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/b/b$a;->a()V

    iget v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->a:I

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_89

    :goto_30
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_4f

    :try_start_36
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_89

    goto :goto_44

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v1, "AnrMonitor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget v4, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->a:I

    int-to-long v4, v4

    sub-long v0, v4, v0

    goto :goto_30

    :cond_4f
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->d:Lcom/mbridge/msdk/foundation/same/report/b/b$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/b/b$a;->b()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->e:Lcom/mbridge/msdk/foundation/same/report/b/a;

    if-eqz v0, :cond_5e

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/report/b/a;->a()V

    :cond_5e
    monitor-exit p0

    goto :goto_5

    :cond_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_89

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_5

    :cond_6e
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->e:Lcom/mbridge/msdk/foundation/same/report/b/a;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/b/c;->b([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->e:Lcom/mbridge/msdk/foundation/same/report/b/a;

    invoke-interface {v2, v1, v0}, Lcom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    goto/16 :goto_5

    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0

    :cond_8c
    :try_start_8c
    iget v0, p0, Lcom/mbridge/msdk/foundation/same/report/b/b;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_92} :catch_94

    goto/16 :goto_5

    :catch_94
    nop

    goto/16 :goto_5
.end method
