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

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass1 (com.gameloft.adsmanager.FANInterstitial$1)
.class Lcom/gameloft/adsmanager/FANInterstitial$1;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;->InternalClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;

.field final synthetic val$callCallback:Z


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iput-boolean p2, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->val$callCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->val$callCallback:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClose(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass2 (com.gameloft.adsmanager.FANInterstitial$2)
.class Lcom/gameloft/adsmanager/FANInterstitial$2;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;-><init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;

.field final synthetic val$sdkLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iput-object p2, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 6

    const-string v0, "FANInterstitial.java"

    const-string v1, "!!!!!"

    const-string v2, "Interstitial show callback"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    if-nez p1, :cond_2f

    const-string p1, "Null response"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    goto :goto_99

    :cond_2f
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_70

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v2

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "!!!!!!"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    goto :goto_99

    :cond_70
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_99

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClose(Ljava/lang/String;)V

    :cond_99
    :goto_99
    return-void
.end method

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass3 (com.gameloft.adsmanager.FANInterstitial$3)
.class Lcom/gameloft/adsmanager/FANInterstitial$3;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;-><init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;

.field final synthetic val$sdkLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iput-object p2, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7

    const-string v0, "FANInterstitial.java"

    const-string v1, "!!!!!!"

    const-string v2, "Interstitial load callback"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    const-string p1, "Null response"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    :cond_2a
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v3}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error response interstitial:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    :cond_65
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_94

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interstitial JSON object IV:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "!!!!!!!"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialAvailable(Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V

    :cond_94
    :goto_94
    return-void
.end method

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass4 (com.gameloft.adsmanager.FANInterstitial$4)
.class Lcom/gameloft/adsmanager/FANInterstitial$4;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "FANInterstitial.java"

    const-string v1, "!!!!!"

    const-string v2, "Load for interstitial was called"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    sget-object v2, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v3}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v4}, Lcom/gameloft/adsmanager/FANInterstitial;->access$200(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/gamingservices/cloudgaming/InAppAdLibrary;->loadInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    goto :goto_5d

    :catch_23
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load error. Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$4;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass5 (com.gameloft.adsmanager.FANInterstitial$5)
.class Lcom/gameloft/adsmanager/FANInterstitial$5;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$5;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$5;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$5;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$5;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$5;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass6 (com.gameloft.adsmanager.FANInterstitial$6)
.class Lcom/gameloft/adsmanager/FANInterstitial$6;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnDisplay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnPauseGameAudio()V

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANInterstitial;->access$300(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/gamingservices/cloudgaming/InAppAdLibrary;->showInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_6d

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show error. Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FANInterstitial.java"

    const-string v2, "!!!!!"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$6;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    :goto_6d
    return-void
.end method

###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass7 (com.gameloft.adsmanager.FANInterstitial$7)
.class Lcom/gameloft/adsmanager/FANInterstitial$7;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$7;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$7;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$7;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$7;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$7;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    return-void
.end method
