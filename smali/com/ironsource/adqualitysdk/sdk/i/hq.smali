###### Class com.json.adqualitysdk.sdk.i.hq (com.ironsource.adqualitysdk.sdk.i.hq)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/ironsource/adqualitysdk/sdk/i/hq;


# instance fields
.field private final b:Lcom/ironsource/adqualitysdk/sdk/i/hj;

.field private final c:Lcom/ironsource/adqualitysdk/sdk/i/hs;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hj;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hq;->b:Lcom/ironsource/adqualitysdk/sdk/i/hj;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hq;->c:Lcom/ironsource/adqualitysdk/sdk/i/hs;

    return-void
.end method

.method public static declared-synchronized ﻐ()V
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/hq;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hq;->a:Lcom/ironsource/adqualitysdk/sdk/i/hq;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/hq;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hq;->a:Lcom/ironsource/adqualitysdk/sdk/i/hq;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/hq;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hq;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hq;->a:Lcom/ironsource/adqualitysdk/sdk/i/hq;

    :cond_e
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hq;->a:Lcom/ironsource/adqualitysdk/sdk/i/hq;
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
.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/hs;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hq;->c:Lcom/ironsource/adqualitysdk/sdk/i/hs;

    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hq;->b:Lcom/ironsource/adqualitysdk/sdk/i/hj;

    return-object v0
.end method
