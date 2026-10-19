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

###### Class com.gameloft.adsmanager.Tapjoy.AnonymousClass1 (com.gameloft.adsmanager.Tapjoy$1)
.class Lcom/gameloft/adsmanager/Tapjoy$1;
.super Lcom/tapjoy/n;
.source "Tapjoy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/Tapjoy;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/Tapjoy;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/Tapjoy;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-direct {p0}, Lcom/tapjoy/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnConfigurationFailed. Initialization failed with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and message: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tapjoy.java"

    const-string v0, "Configure"

    invoke-static {p2, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void
.end method

.method public onConnectSuccess()V
    .registers 4

    const-string v0, "Tapjoy.java"

    const-string v1, "Configure"

    const-string v2, "OnConfigurationSucceeded"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationSucceeded()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    new-instance v1, Lcom/gameloft/adsmanager/Tapjoy$1$1;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/Tapjoy$1$1;-><init>(Lcom/gameloft/adsmanager/Tapjoy$1;)V

    iput-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyListener:Lcom/tapjoy/TJPlacementListener;

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    iget-object v2, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyListener:Lcom/tapjoy/TJPlacementListener;

    invoke-static {v1, v2}, Lcom/tapjoy/Tapjoy;->getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyPlacement:Lcom/tapjoy/TJPlacement;

    return-void
.end method

###### Class com.gameloft.adsmanager.Tapjoy.AnonymousClass1.C02071 (com.gameloft.adsmanager.Tapjoy$1$1)
.class Lcom/gameloft/adsmanager/Tapjoy$1$1;
.super Ljava/lang/Object;
.source "Tapjoy.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/Tapjoy$1;->onConnectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gameloft/adsmanager/Tapjoy$1;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/Tapjoy$1;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;->OnClick(Ljava/lang/String;)V

    :cond_12
    monitor-exit p1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;->OnClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_19
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    monitor-exit p1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallLoading:Z

    const-string v0, "Tapjoy.java"

    const-string v1, "Offerwall loaded"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-boolean v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    if-nez v0, :cond_36

    new-instance v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v1, v1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v2, v1, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gameloft/adsmanager/TapjoyOfferWall;-><init>(Lcom/gameloft/adsmanager/Tapjoy;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v1, v1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    iget-object v1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v1, v1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnOfferWallAvailable(Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;)V

    :cond_36
    monitor-exit p1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;->OnDisplay(Ljava/lang/String;)V

    :cond_12
    monitor-exit p1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/r;)V
    .registers 7

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallLoading:Z

    const-string v0, ""

    if-eqz p2, :cond_14

    iget v1, p2, Lcom/tapjoy/r;->a:I

    iget-object v0, p2, Lcom/tapjoy/r;->b:Ljava/lang/String;

    :cond_14
    const-string p2, "Tapjoy.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offerwall failed to load with errorCode = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") and errorMessage = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p2, v0, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p2, p2, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, p2, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnOfferWallLoadError(ILjava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_44
    move-exception p2

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw p2
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    const-string p1, "Tapjoy.java"

    const-string v0, "onRequestSuccess"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

###### Class com.gameloft.adsmanager.Tapjoy.AnonymousClass2 (com.gameloft.adsmanager.Tapjoy$2)
.class Lcom/gameloft/adsmanager/Tapjoy$2;
.super Ljava/lang/Object;
.source "Tapjoy.java"

# interfaces
.implements Lcom/tapjoy/TJGetCurrencyBalanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/Tapjoy;->CheckTapjoyCurrencyBalance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/Tapjoy;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/Tapjoy;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$2;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$2;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnTapjoyCurrencyBalance(Ljava/lang/String;I)V

    return-void
.end method

.method public onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V
    .registers 4

    const-string v0, "onGetCurrencyBalanceResponseFailure"

    const-string v1, "Tapjoy.java"

    if-eqz p1, :cond_a

    invoke-static {v1, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    const-string p1, ""

    invoke-static {v1, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method
