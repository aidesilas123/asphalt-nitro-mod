###### Class com.json.s3 (com.ironsource.s3)
.class public Lcom/ironsource/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ironsource/s3;


# instance fields
.field private b:Lcom/ironsource/r3;

.field private final c:Lorg/json/JSONObject;

.field private d:Ljava/lang/Thread;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/ironsource/q5;Lorg/json/JSONObject;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/s3;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ironsource/q5;->a()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Lcom/ironsource/r3;

    invoke-direct {p2, p1}, Lcom/ironsource/r3;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/ironsource/s3;->b:Lcom/ironsource/r3;

    iput-object p3, p0, Lcom/ironsource/s3;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/s3;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/ironsource/s3;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/ironsource/q5;Lorg/json/JSONObject;)Lcom/ironsource/s3;
    .registers 5

    const-class v0, Lcom/ironsource/s3;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/s3;->a:Lcom/ironsource/s3;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/s3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/s3;-><init>(Ljava/lang/String;Lcom/ironsource/q5;Lorg/json/JSONObject;)V

    sput-object v1, Lcom/ironsource/s3;->a:Lcom/ironsource/s3;

    :cond_e
    sget-object p0, Lcom/ironsource/s3;->a:Lcom/ironsource/s3;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Lcom/ironsource/vd;Landroid/os/Handler;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Lcom/ironsource/yd;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/yd;-><init>(Lcom/ironsource/vd;Landroid/os/Handler;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method private c(Lcom/ironsource/q6;Ljava/lang/String;IILandroid/os/Handler;)Ljava/lang/Thread;
    .registers 13

    const/4 v0, 0x5

    if-lez p3, :cond_4

    goto :goto_c

    :cond_4
    iget-object p3, p0, Lcom/ironsource/s3;->c:Lorg/json/JSONObject;

    const-string v1, "connectionTimeout"

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    :goto_c
    if-lez p4, :cond_f

    goto :goto_17

    :cond_f
    iget-object p4, p0, Lcom/ironsource/s3;->c:Lorg/json/JSONObject;

    const-string v1, "readTimeout"

    invoke-virtual {p4, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    :goto_17
    new-instance v6, Lcom/ironsource/vd;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v3, v1

    int-to-long p3, p4

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    long-to-int v4, p3

    invoke-direct {p0}, Lcom/ironsource/s3;->e()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/vd;-><init>(Lcom/ironsource/q6;Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p0, v6, p5}, Lcom/ironsource/s3;->b(Lcom/ironsource/vd;Landroid/os/Handler;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method private e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/s3;->e:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s3;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/ironsource/fa;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/s3;->b:Lcom/ironsource/r3;

    invoke-virtual {v0, p1}, Lcom/ironsource/r3;->a(Lcom/ironsource/fa;)V

    return-void
.end method

.method public a(Lcom/ironsource/q6;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/s3;->c:Lorg/json/JSONObject;

    const-string v1, "connectionTimeout"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/s3;->c:Lorg/json/JSONObject;

    const-string v3, "readTimeout"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Lcom/ironsource/vd;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v5, v3

    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v6, v0

    invoke-direct {p0}, Lcom/ironsource/s3;->e()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/vd;-><init>(Lcom/ironsource/q6;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/s3;->b:Lcom/ironsource/r3;

    invoke-direct {p0, v8, p1}, Lcom/ironsource/s3;->b(Lcom/ironsource/vd;Landroid/os/Handler;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/s3;->d:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcom/ironsource/q6;Ljava/lang/String;II)V
    .registers 11

    iget-object v5, p0, Lcom/ironsource/s3;->b:Lcom/ironsource/r3;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/s3;->c(Lcom/ironsource/q6;Ljava/lang/String;IILandroid/os/Handler;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Lcom/ironsource/q6;Ljava/lang/String;IILandroid/os/Handler;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/ironsource/s3;->c(Lcom/ironsource/q6;Ljava/lang/String;IILandroid/os/Handler;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s3;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/ironsource/s3;->a:Lcom/ironsource/s3;

    iget-object v1, p0, Lcom/ironsource/s3;->b:Lcom/ironsource/r3;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/ironsource/r3;->a()V

    iput-object v0, p0, Lcom/ironsource/s3;->b:Lcom/ironsource/r3;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
