###### Class com.gameloft.adsmanager.FANInterstitial (com.gameloft.adsmanager.FANInterstitial)
.class public Lcom/gameloft/adsmanager/FANInterstitial;
.super Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;
.source "FANInterstitial.java"


# instance fields
.field private callbackLoadInterstitial:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

.field private callbackShowInterstitial:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

.field private fanParent:Lcom/gameloft/adsmanager/FAN;

.field private sdkLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;-><init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V

    iput-object p2, p0, Lcom/gameloft/adsmanager/FANInterstitial;->sdkLocation:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial;->fanParent:Lcom/gameloft/adsmanager/FAN;

    const-string p1, "FANInterstitial.java"

    const-string v0, "!!!!!"

    invoke-static {p1, v0, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/gameloft/adsmanager/FANInterstitial$2;

    invoke-direct {p1, p0, p2}, Lcom/gameloft/adsmanager/FANInterstitial$2;-><init>(Lcom/gameloft/adsmanager/FANInterstitial;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial;->callbackShowInterstitial:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    new-instance p1, Lcom/gameloft/adsmanager/FANInterstitial$3;

    invoke-direct {p1, p0, p2}, Lcom/gameloft/adsmanager/FANInterstitial$3;-><init>(Lcom/gameloft/adsmanager/FANInterstitial;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial;->callbackLoadInterstitial:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANInterstitial;->sdkLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANInterstitial;->fanParent:Lcom/gameloft/adsmanager/FAN;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANInterstitial;->callbackLoadInterstitial:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANInterstitial;->callbackShowInterstitial:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    return-object p0
.end method


# virtual methods
.method public Close()V
    .registers 1

    return-void
.end method

.method public Destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gameloft/adsmanager/FANInterstitial;->InternalClose(Z)V

    return-void
.end method

.method InternalClose(Z)V
    .registers 4

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gameloft/adsmanager/FANInterstitial$1;

    invoke-direct {v1, p0, p1}, Lcom/gameloft/adsmanager/FANInterstitial$1;-><init>(Lcom/gameloft/adsmanager/FANInterstitial;Z)V

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    return-void
.end method

.method public IsValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Load()V
    .registers 4

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gameloft/adsmanager/FANInterstitial$4;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/FANInterstitial$4;-><init>(Lcom/gameloft/adsmanager/FANInterstitial;)V

    new-instance v2, Lcom/gameloft/adsmanager/FANInterstitial$5;

    invoke-direct {v2, p0}, Lcom/gameloft/adsmanager/FANInterstitial$5;-><init>(Lcom/gameloft/adsmanager/FANInterstitial;)V

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance p2, Lcom/gameloft/adsmanager/FANInterstitial$6;

    invoke-direct {p2, p0}, Lcom/gameloft/adsmanager/FANInterstitial$6;-><init>(Lcom/gameloft/adsmanager/FANInterstitial;)V

    new-instance v0, Lcom/gameloft/adsmanager/FANInterstitial$7;

    invoke-direct {v0, p0}, Lcom/gameloft/adsmanager/FANInterstitial$7;-><init>(Lcom/gameloft/adsmanager/FANInterstitial;)V

    invoke-static {p1, p2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
