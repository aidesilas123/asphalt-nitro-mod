###### Class com.gameloft.adsmanager.FANIncentivized (com.gameloft.adsmanager.FANIncentivized)
.class public Lcom/gameloft/adsmanager/FANIncentivized;
.super Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;
.source "FANIncentivized.java"


# instance fields
.field private UUID:Ljava/lang/String;

.field private callbackLoadIV:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

.field private callbackShowIV:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

.field private fanParent:Lcom/gameloft/adsmanager/FAN;

.field private sdkLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;-><init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V

    iput-object p2, p0, Lcom/gameloft/adsmanager/FANIncentivized;->sdkLocation:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized;->fanParent:Lcom/gameloft/adsmanager/FAN;

    const-string p1, "FANIncentivized.java"

    const-string v0, "!!!!!"

    invoke-static {p1, v0, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/gameloft/adsmanager/FANIncentivized$2;

    invoke-direct {p1, p0, p2}, Lcom/gameloft/adsmanager/FANIncentivized$2;-><init>(Lcom/gameloft/adsmanager/FANIncentivized;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized;->callbackShowIV:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    new-instance p1, Lcom/gameloft/adsmanager/FANIncentivized$3;

    invoke-direct {p1, p0, p2}, Lcom/gameloft/adsmanager/FANIncentivized$3;-><init>(Lcom/gameloft/adsmanager/FANIncentivized;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized;->callbackLoadIV:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANIncentivized;->sdkLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANIncentivized;->fanParent:Lcom/gameloft/adsmanager/FAN;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANIncentivized;->UUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANIncentivized;->callbackLoadIV:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/FANIncentivized;->callbackShowIV:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

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

    invoke-virtual {p0, v0}, Lcom/gameloft/adsmanager/FANIncentivized;->InternalClose(Z)V

    return-void
.end method

.method InternalClose(Z)V
    .registers 4

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gameloft/adsmanager/FANIncentivized$1;

    invoke-direct {v1, p0, p1}, Lcom/gameloft/adsmanager/FANIncentivized$1;-><init>(Lcom/gameloft/adsmanager/FANIncentivized;Z)V

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

    new-instance v1, Lcom/gameloft/adsmanager/FANIncentivized$4;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/FANIncentivized$4;-><init>(Lcom/gameloft/adsmanager/FANIncentivized;)V

    new-instance v2, Lcom/gameloft/adsmanager/FANIncentivized$5;

    invoke-direct {v2, p0}, Lcom/gameloft/adsmanager/FANIncentivized$5;-><init>(Lcom/gameloft/adsmanager/FANIncentivized;)V

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p3, p0, Lcom/gameloft/adsmanager/FANIncentivized;->UUID:Ljava/lang/String;

    sget-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_13

    new-instance p2, Lcom/gameloft/adsmanager/FANIncentivized$6;

    invoke-direct {p2, p0}, Lcom/gameloft/adsmanager/FANIncentivized$6;-><init>(Lcom/gameloft/adsmanager/FANIncentivized;)V

    new-instance p3, Lcom/gameloft/adsmanager/FANIncentivized$7;

    invoke-direct {p3, p0}, Lcom/gameloft/adsmanager/FANIncentivized$7;-><init>(Lcom/gameloft/adsmanager/FANIncentivized;)V

    invoke-static {p1, p2, p3}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method
