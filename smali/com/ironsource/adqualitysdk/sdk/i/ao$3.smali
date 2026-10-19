###### Class com.json.adqualitysdk.sdk.i.ao.AnonymousClass3 (com.ironsource.adqualitysdk.sdk.i.ao$3)
.class public Lcom/ironsource/adqualitysdk/sdk/i/ao$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/as;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final リ()Lcom/ironsource/adqualitysdk/sdk/i/as;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->b:Lcom/ironsource/adqualitysdk/sdk/i/as;

    return-object v0
.end method

.method public final declared-synchronized 乁()Lorg/json/JSONObject;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->a:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ｋ(Lcom/ironsource/adqualitysdk/sdk/i/as;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->b:Lcom/ironsource/adqualitysdk/sdk/i/as;

    return-void
.end method

.method public declared-synchronized ｋ(Lorg/json/JSONObject;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->a:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
