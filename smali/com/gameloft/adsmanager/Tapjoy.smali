###### Class com.gameloft.adsmanager.Tapjoy (com.gameloft.adsmanager.Tapjoy)
.class public Lcom/gameloft/adsmanager/Tapjoy;
.super Lcom/gameloft/adsmanager/BaseAdsProvider;
.source "Tapjoy.java"


# instance fields
.field final EXPECTED_CONFIG_SIZE:I

.field volatile offerWallLoading:Z

.field volatile offerWallObjectCreated:Z

.field offerWallSdkLocation:Ljava/lang/String;

.field onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

.field tapjoyListener:Lcom/tapjoy/TJPlacementListener;

.field tapjoyPlacement:Lcom/tapjoy/TJPlacement;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;-><init>(J)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/gameloft/adsmanager/Tapjoy;->EXPECTED_CONFIG_SIZE:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    const-string p1, ""

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallLoading:Z

    return-void
.end method


# virtual methods
.method public CheckTapjoyCurrencyBalance()V
    .registers 2

    new-instance v0, Lcom/gameloft/adsmanager/Tapjoy$2;

    invoke-direct {v0, p0}, Lcom/gameloft/adsmanager/Tapjoy$2;-><init>(Lcom/gameloft/adsmanager/Tapjoy;)V

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    return-void
.end method

.method public Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;)V
    .registers 14

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    const-string v1, "Configure"

    const-string v2, "Tapjoy.java"

    if-eqz v0, :cond_df

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    goto/16 :goto_df

    :cond_e
    if-eqz p4, :cond_d6

    array-length v0, p4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_16

    goto/16 :goto_d6

    :cond_16
    if-eqz p1, :cond_cd

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_cd

    :cond_20
    const/4 v0, 0x0

    aget v3, p4, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    aget v5, p4, v4

    if-ne v5, v4, :cond_2f

    const/4 v5, 0x1

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    const/4 v6, 0x2

    aget v6, p4, v6

    if-ne v6, v4, :cond_37

    const/4 v6, 0x1

    goto :goto_38

    :cond_37
    const/4 v6, 0x0

    :goto_38
    const/4 v7, 0x3

    aget p4, p4, v7

    if-ne p4, v4, :cond_3f

    const/4 p4, 0x1

    goto :goto_40

    :cond_3f
    const/4 p4, 0x0

    :goto_40
    new-instance v7, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    invoke-direct {v7, p3}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;-><init>([Ljava/lang/String;)V

    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v7}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PopValidPlacement()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    if-eqz v3, :cond_59

    :try_start_52
    const-string v3, "TJC_OPTION_ENABLE_LOGGING"

    const-string v7, "true"

    invoke-virtual {p3, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    const-string v3, "TJC_OPTION_USER_ID"

    invoke-virtual {p3, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/tapjoy/Tapjoy;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/tapjoy/Tapjoy;->getPrivacyPolicy()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object p2

    if-eqz v6, :cond_79

    const-string v3, "User consent set= (true)"

    invoke-static {v2, v1, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    invoke-virtual {p2, v3}, Lcom/tapjoy/TJPrivacyPolicy;->h(Lcom/tapjoy/TJStatus;)V

    sget-object v3, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/tapjoy/Tapjoy;->optOutAdvertisingID(Landroid/content/Context;Z)V

    goto :goto_83

    :cond_79
    const-string v0, "User consent set= (false)"

    invoke-static {v2, v1, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    invoke-virtual {p2, v0}, Lcom/tapjoy/TJPrivacyPolicy;->h(Lcom/tapjoy/TJStatus;)V

    :goto_83
    if-nez p4, :cond_8f

    const-string p4, "set optOutAdvertisingID"

    invoke-static {v2, v1, p4}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-static {p4, v4}, Lcom/tapjoy/Tapjoy;->optOutAdvertisingID(Landroid/content/Context;Z)V

    :cond_8f
    if-eqz v5, :cond_9c

    const-string p4, "User set as COPPA"

    invoke-static {v2, v1, p4}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    invoke-virtual {p2, p4}, Lcom/tapjoy/TJPrivacyPolicy;->f(Lcom/tapjoy/TJStatus;)V

    goto :goto_a6

    :cond_9c
    const-string p4, "User set as non COPPA"

    invoke-static {v2, v1, p4}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    invoke-virtual {p2, p4}, Lcom/tapjoy/TJPrivacyPolicy;->f(Lcom/tapjoy/TJStatus;)V

    :goto_a6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUSPrivacy =("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, v1, p4}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Lcom/tapjoy/TJPrivacyPolicy;->g(Ljava/lang/String;)V

    sget-object p2, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    new-instance p4, Lcom/gameloft/adsmanager/Tapjoy$1;

    invoke-direct {p4, p0}, Lcom/gameloft/adsmanager/Tapjoy$1;-><init>(Lcom/gameloft/adsmanager/Tapjoy;)V

    invoke-static {p2, p1, p3, p4}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_cc} :catch_cc

    :catch_cc
    return-void

    :cond_cd
    :goto_cd
    const-string p1, "Invalid appID"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void

    :cond_d6
    :goto_d6
    const-string p1, "Invalid configurationInfo"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void

    :cond_df
    :goto_df
    const-string p1, "MainActivity or ParentViewGroup is null"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void
.end method

.method public RequestOfferWall()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tapjoy/Tapjoy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallLoading:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallLoading:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->h()V

    const-string v0, "Tapjoy.java"

    const-string v1, "Request content"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public ResetOfferWall()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
