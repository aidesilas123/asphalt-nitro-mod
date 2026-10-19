###### Class com.json.adqualitysdk.sdk.i.jj (com.ironsource.adqualitysdk.sdk.i.jj)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ironsource/adqualitysdk/sdk/i/jj;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/jj$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/jj$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->b:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/jj;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->b:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized b()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/jj$b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Landroid/app/Activity;)Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_37

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_45

    monitor-exit p0

    return-object p1

    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_45

    monitor-exit p0

    return-object p1

    :cond_37
    :try_start_37
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ףּ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ｋ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-object p1

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/jj$b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->c:Ljava/util/Map;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->c:Ljava/util/Map;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->סּ()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_21

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$a;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jj$a;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾇ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ju$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->c:Ljava/util/Map;

    :cond_21
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->c:Ljava/util/Map;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized ｋ()Lcom/ironsource/adqualitysdk/sdk/i/jj;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jj;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jj;->a:Lcom/ironsource/adqualitysdk/sdk/i/jj;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jj;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jj;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jj;->a:Lcom/ironsource/adqualitysdk/sdk/i/jj;

    :cond_e
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jj;->a:Lcom/ironsource/adqualitysdk/sdk/i/jj;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized ﻛ(Landroid/app/Activity;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->c(Landroid/app/Activity;)Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    :goto_a
    monitor-exit p0

    return p1

    :cond_c
    const/4 p1, 0x0

    goto :goto_a

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ｋ(Landroid/app/Activity;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->c(Landroid/app/Activity;)Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    :goto_a
    monitor-exit p0

    return p1

    :cond_c
    const/4 p1, 0x0

    goto :goto_a

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/jj$b;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jj;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jj$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/jj;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/jj$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
