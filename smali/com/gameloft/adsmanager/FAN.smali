###### Class com.gameloft.adsmanager.FAN (com.gameloft.adsmanager.FAN)
.class public Lcom/gameloft/adsmanager/FAN;
.super Lcom/gameloft/adsmanager/BaseAdsProvider;
.source "FAN.java"


# static fields
.field private static final MINIMUM_API_LEVEL:I = 0xf


# instance fields
.field private bidderData:Ljava/lang/String;

.field public incentivized:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

.field public interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

.field public rootWhileLoading:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;-><init>(J)V

    const-string p1, ""

    iput-object p1, p0, Lcom/gameloft/adsmanager/FAN;->bidderData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Configure([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    const-string v1, "Configure"

    const-string v2, "FAN.java"

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    goto :goto_3a

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v0, v3, :cond_1c

    const-string p1, "Current API level is lower than the accepted API level: 15. FAN SDK will not be configured"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void

    :cond_1c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gameloft/adsmanager/FAN;->rootWhileLoading:Ljava/util/Map;

    new-instance v0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    invoke-direct {v0, p1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/adsmanager/FAN;->incentivized:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    new-instance p1, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    invoke-direct {p1, p2}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationSucceeded()V

    const-string p1, "OnConfigurationSucceeded"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3a
    :goto_3a
    const-string p1, "MainActivity or ParentViewGroup is null"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void
.end method

.method public RequestIncentivized()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/FAN;->incentivized:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PopValidPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    new-instance v1, Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-direct {v1, p0, v0}, Lcom/gameloft/adsmanager/FANIncentivized;-><init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/adsmanager/FAN;->rootWhileLoading:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/gameloft/adsmanager/FANIncentivized;->Load()V

    :cond_19
    return-void
.end method

.method public RequestInterstitial()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PopValidPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    new-instance v1, Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-direct {v1, p0, v0}, Lcom/gameloft/adsmanager/FANInterstitial;-><init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/adsmanager/FAN;->rootWhileLoading:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->Load()V

    :cond_19
    return-void
.end method
