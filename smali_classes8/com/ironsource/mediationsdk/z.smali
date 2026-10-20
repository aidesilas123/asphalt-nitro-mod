###### Class com.json.mediationsdk.z (com.ironsource.mediationsdk.z)
.class public Lcom/ironsource/mediationsdk/z;
.super Lcom/ironsource/mediationsdk/a0;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
.implements Lcom/ironsource/z1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/z$b;
    }
.end annotation


# instance fields
.field private h:Lcom/ironsource/mediationsdk/z$b;

.field private i:Lcom/ironsource/sa;

.field private j:Ljava/util/Timer;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Lorg/json/JSONObject;

.field private final p:Ljava/lang/Object;

.field private q:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/sa;ILcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 10

    new-instance v0, Lcom/ironsource/h0;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {v0, p3, v1, v2}, Lcom/ironsource/h0;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-direct {p0, v0, p6}, Lcom/ironsource/mediationsdk/a0;-><init>(Lcom/ironsource/h0;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/z;->p:Ljava/lang/Object;

    sget-object p3, Lcom/ironsource/mediationsdk/z$b;->a:Lcom/ironsource/mediationsdk/z$b;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/z;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/z;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/z;->j:Ljava/util/Timer;

    iput p5, p0, Lcom/ironsource/mediationsdk/z;->k:I

    iput-object p1, p0, Lcom/ironsource/mediationsdk/z;->o:Lorg/json/JSONObject;

    return-void
.end method

.method private C()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_2d

    :catchall_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomParams() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/a0;->a(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private D()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "start timer"

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/a0;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->E()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/z;->j:Ljava/util/Timer;

    new-instance v2, Lcom/ironsource/mediationsdk/z$a;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/z$a;-><init>(Lcom/ironsource/mediationsdk/z;)V

    iget v3, p0, Lcom/ironsource/mediationsdk/z;->k:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private E()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->j:Ljava/util/Timer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/z;->j:Ljava/util/Timer;

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method static synthetic t(Lcom/ironsource/mediationsdk/z;)Lcom/ironsource/mediationsdk/z$b;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    return-object p0
.end method

.method private u(Lcom/ironsource/mediationsdk/z$b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/a0;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    return-void
.end method

.method static synthetic v(Lcom/ironsource/mediationsdk/z;Lcom/ironsource/mediationsdk/z$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    return-void
.end method

.method static synthetic w(Lcom/ironsource/mediationsdk/z;)J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/z;->n:J

    return-wide v0
.end method

.method static synthetic x(Lcom/ironsource/mediationsdk/z;)Lcom/ironsource/sa;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    return-object p0
.end method

.method private y(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/k8;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method public a(I[[Ljava/lang/Object;)V
    .registers 10

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->m()Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_35

    :try_start_6
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_35

    aget-object v4, p2, v3

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1c

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catch_1c
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS sendProviderEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/a0;->b(Ljava/lang/String;)V

    :cond_35
    new-instance p2, Lcom/ironsource/a4;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 5

    const/16 v0, 0x7e4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/z;->a(I[[Ljava/lang/Object;)V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/k8;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_10
    :try_start_10
    iget-object p1, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->collectInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_34

    :catchall_18
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collectBiddingData exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/a0;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/z;->n:J

    iput-object p2, p0, Lcom/ironsource/mediationsdk/z;->o:Lorg/json/JSONObject;

    const-string v0, "loadInterstitial"

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/a0;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/a0;->a(Z)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->D()V

    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->d:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p2, p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitialForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void

    :cond_2c
    iget-object p1, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->a:Lcom/ironsource/mediationsdk/z$b;

    if-ne p1, v0, :cond_49

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->D()V

    sget-object p1, Lcom/ironsource/mediationsdk/z$b;->b:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->C()V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/z;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void

    :cond_49
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->D()V

    sget-object p1, Lcom/ironsource/mediationsdk/z$b;->d:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    goto :goto_83

    :catchall_59
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadInterstitial exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/a0;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x138d

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/z;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_83
    return-void
.end method

.method public d()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    const-string v0, "ProgIsSmash"

    return-object v0
.end method

.method public onInterstitialAdClicked()V
    .registers 2

    const-string v0, "onInterstitialAdClicked"

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p0}, Lcom/ironsource/sa;->d(Lcom/ironsource/mediationsdk/z;)V

    return-void
.end method

.method public onInterstitialAdClosed()V
    .registers 2

    const-string v0, "onInterstitialAdClosed"

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p0}, Lcom/ironsource/sa;->c(Lcom/ironsource/mediationsdk/z;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->E()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    sget-object v1, Lcom/ironsource/mediationsdk/z$b;->d:Lcom/ironsource/mediationsdk/z$b;

    if-eq v0, v1, :cond_30

    return-void

    :cond_30
    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->f:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/z;->n:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/sa;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/z;J)V

    return-void
.end method

.method public onInterstitialAdOpened()V
    .registers 2

    const-string v0, "onInterstitialAdOpened"

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p0}, Lcom/ironsource/sa;->a(Lcom/ironsource/mediationsdk/z;)V

    return-void
.end method

.method public onInterstitialAdReady()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdReady state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->E()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    sget-object v1, Lcom/ironsource/mediationsdk/z$b;->d:Lcom/ironsource/mediationsdk/z$b;

    if-eq v0, v1, :cond_24

    return-void

    :cond_24
    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->e:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/z;->n:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v2, p0, v0, v1}, Lcom/ironsource/sa;->a(Lcom/ironsource/mediationsdk/z;J)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/sa;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/z;)V

    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .registers 2

    const-string v0, "onInterstitialAdShowSucceeded"

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p0}, Lcom/ironsource/sa;->f(Lcom/ironsource/mediationsdk/z;)V

    return-void
.end method

.method public onInterstitialAdVisible()V
    .registers 2

    const-string v0, "onInterstitialAdVisible"

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p0}, Lcom/ironsource/sa;->e(Lcom/ironsource/mediationsdk/z;)V

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialInitFailed error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    sget-object v1, Lcom/ironsource/mediationsdk/z$b;->b:Lcom/ironsource/mediationsdk/z$b;

    if-eq v0, v1, :cond_2d

    return-void

    :cond_2d
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->E()V

    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->a:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/sa;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/z;)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v0

    if-nez v0, :cond_51

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/z;->n:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/sa;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/z;J)V

    :cond_51
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialInitSuccess state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    sget-object v1, Lcom/ironsource/mediationsdk/z$b;->b:Lcom/ironsource/mediationsdk/z$b;

    if-eq v0, v1, :cond_21

    return-void

    :cond_21
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->E()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/z;->q:Z

    if-eqz v0, :cond_2f

    goto :goto_6c

    :cond_2f
    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->d:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->D()V

    :try_start_37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/z;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_41

    goto :goto_74

    :catchall_41
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialInitSuccess exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/a0;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x138d

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/z;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_74

    :cond_6c
    :goto_6c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/z;->q:Z

    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->c:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    :goto_74
    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->i:Lcom/ironsource/sa;

    invoke-interface {v0, p0}, Lcom/ironsource/sa;->b(Lcom/ironsource/mediationsdk/z;)V

    return-void
.end method

.method public t()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBidder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldEarlyInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/a0;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/z;->q:Z

    sget-object v0, Lcom/ironsource/mediationsdk/z$b;->b:Lcom/ironsource/mediationsdk/z$b;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/z;->u(Lcom/ironsource/mediationsdk/z$b;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/z;->C()V

    :try_start_2f
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/z;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitialForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto :goto_7e

    :cond_41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/z;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/z;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_4d

    goto :goto_7e

    :catchall_4d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " initForBidding exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/a0;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x411

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/z;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_7e
    return-void
.end method

.method public u()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    sget-object v1, Lcom/ironsource/mediationsdk/z$b;->b:Lcom/ironsource/mediationsdk/z$b;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/mediationsdk/z$b;->d:Lcom/ironsource/mediationsdk/z$b;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public v()Z
    .registers 8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/z;->h:Lcom/ironsource/mediationsdk/z$b;

    sget-object v1, Lcom/ironsource/mediationsdk/z$b;->e:Lcom/ironsource/mediationsdk/z$b;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyToShow exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/a0;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x2

    new-array v3, v1, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x138a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    aput-object v4, v3, v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v1, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    aput-object v1, v3, v6

    const v0, 0x14192

    invoke-virtual {p0, v0, v3}, Lcom/ironsource/mediationsdk/z;->a(I[[Ljava/lang/Object;)V

    return v2
.end method

.method public x()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/a0;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_39

    :catchall_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "showInterstitial exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/a0;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40f

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/z;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_39
    return-void
.end method
