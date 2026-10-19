###### Class com.mbridge.msdk.e.t (com.mbridge.msdk.e.t)
.class public Lcom/mbridge/msdk/e/t;
.super Ljava/lang/Object;
.source "ReportMonitor.java"


# static fields
.field private static volatile d:Lcom/mbridge/msdk/e/t;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/mbridge/msdk/e/m;

.field private c:Lcom/mbridge/msdk/e/w;

.field private volatile e:Z

.field private f:I

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/e/t;->e:Z

    const/16 v0, 0x7530

    iput v0, p0, Lcom/mbridge/msdk/e/t;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/e/t;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/mbridge/msdk/e/t$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/e/t$1;-><init>(Lcom/mbridge/msdk/e/t;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/e/t;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/e/t;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/e/t;->d:Lcom/mbridge/msdk/e/t;

    if-nez v0, :cond_17

    const-class v0, Lcom/mbridge/msdk/e/t;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/e/t;->d:Lcom/mbridge/msdk/e/t;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/e/t;

    invoke-direct {v1}, Lcom/mbridge/msdk/e/t;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/e/t;->d:Lcom/mbridge/msdk/e/t;

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
    sget-object v0, Lcom/mbridge/msdk/e/t;->d:Lcom/mbridge/msdk/e/t;

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/e/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/e/t;->d()V

    return-void
.end method

.method private d()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/e/t;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/mbridge/msdk/e/t;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/mbridge/msdk/e/w;ILorg/json/JSONObject;)V
    .registers 5

    iput-object p2, p0, Lcom/mbridge/msdk/e/t;->c:Lcom/mbridge/msdk/e/w;

    iput p3, p0, Lcom/mbridge/msdk/e/t;->f:I

    const-string p3, "monitor"

    invoke-static {p3, p1, p2}, Lcom/mbridge/msdk/e/m;->a(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/e/w;)Lcom/mbridge/msdk/e/m;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/e/t;->b:Lcom/mbridge/msdk/e/m;

    if-eqz p1, :cond_16

    invoke-virtual {p1, p4}, Lcom/mbridge/msdk/e/m;->a(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/mbridge/msdk/e/t;->b:Lcom/mbridge/msdk/e/m;

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/m;->a()Ljava/lang/String;

    :cond_16
    invoke-virtual {p0}, Lcom/mbridge/msdk/e/t;->b()V

    return-void
.end method

.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/e/t;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/mbridge/msdk/e/t;->e:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/e/t;->d()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .registers 15

    invoke-static {}, Lcom/mbridge/msdk/e/m;->d()[Lcom/mbridge/msdk/e/m;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_8

    return-void

    :cond_8
    :try_start_8
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_af

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/mbridge/msdk/e/m;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "monitor"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a7

    invoke-virtual {v4}, Lcom/mbridge/msdk/e/m;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mbridge/msdk/e/m;->f()[J

    move-result-object v4

    const/4 v7, 0x1

    aget-wide v8, v4, v7

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_2e

    goto/16 :goto_a7

    :cond_2e
    aget-wide v10, v4, v2

    iget-object v4, p0, Lcom/mbridge/msdk/e/t;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_ab

    const-string v12, ""

    if-eqz v4, :cond_58

    :try_start_3a
    iget-object v4, p0, Lcom/mbridge/msdk/e/t;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_a7

    :cond_58
    iget-object v4, p0, Lcom/mbridge/msdk/e/t;->g:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/mbridge/msdk/e/t;->b:Lcom/mbridge/msdk/e/m;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6e} :catch_ab

    if-eqz v4, :cond_a7

    :try_start_70
    new-instance v4, Lcom/mbridge/msdk/e/e;

    const-string v12, "event_lib_monitor"

    invoke-direct {v4, v12}, Lcom/mbridge/msdk/e/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/e/e;->b(I)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "key"

    const-string v13, "m_report_rate"

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "task_name"

    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "task_count"

    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "task_session_id"

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "task_ts"

    invoke-virtual {v7, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/e/e;->a(Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/mbridge/msdk/e/t;->b:Lcom/mbridge/msdk/e/m;

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/e/m;->a(Lcom/mbridge/msdk/e/e;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a2} :catch_a3

    goto :goto_a7

    :catch_a3
    move-exception v4

    :try_start_a4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_ab

    :cond_a7
    :goto_a7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_af
    return-void
.end method
