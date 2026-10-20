###### Class com.unity3d.services.core.configuration.ExperimentObjects (com.unity3d.services.core.configuration.ExperimentObjects)
.class public Lcom/unity3d/services/core/configuration/ExperimentObjects;
.super Lcom/unity3d/services/core/configuration/ExperimentsBase;
.source "ExperimentObjects.java"


# instance fields
.field private final _experimentObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/core/configuration/ExperimentObject;",
            ">;"
        }
    .end annotation
.end field

.field private final _experimentObjetsData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    invoke-direct {p0}, Lcom/unity3d/services/core/configuration/ExperimentsBase;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjects:Ljava/util/Map;

    if-eqz p1, :cond_2d

    iput-object p1, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjetsData:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjects:Ljava/util/Map;

    new-instance v3, Lcom/unity3d/services/core/configuration/ExperimentObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unity3d/services/core/configuration/ExperimentObject;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjetsData:Lorg/json/JSONObject;

    :cond_34
    return-void
.end method

.method private getExperimentValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentObject(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/ExperimentObject;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/ExperimentObject;->getStringValue()Ljava/lang/String;

    move-result-object p2

    :cond_a
    return-object p2
.end method

.method private getExperimentValue(Ljava/lang/String;Z)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentObject(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/ExperimentObject;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/ExperimentObject;->getBooleanValue()Z

    move-result p2

    :cond_a
    return p2
.end method

.method private getExperimentValueOrDefault(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValue(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getExperimentWithAppliedRule(Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unity3d/services/core/configuration/ExperimentObject;

    invoke-virtual {v3}, Lcom/unity3d/services/core/configuration/ExperimentObject;->getAppliedRule()Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;

    move-result-object v3

    if-ne v3, p1, :cond_f

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/configuration/ExperimentObject;

    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/ExperimentObject;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_3b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method public getCurrentSessionExperiments()Lorg/json/JSONObject;
    .registers 2

    sget-object v0, Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;->IMMEDIATE:Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentWithAppliedRule(Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentObject(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/ExperimentObject;
    .registers 3

    iget-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/configuration/ExperimentObject;

    return-object p1
.end method

.method public getExperimentTags()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/configuration/ExperimentObject;

    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/ExperimentObject;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2f
    return-object v0
.end method

.method public getExperimentsAsJson()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/core/configuration/ExperimentObjects;->_experimentObjetsData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNextSessionExperiments()Lorg/json/JSONObject;
    .registers 2

    sget-object v0, Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;->NEXT:Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentWithAppliedRule(Lcom/unity3d/services/core/configuration/ExperimentAppliedRule;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getScarBiddingManager()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/unity3d/services/ads/gmascar/managers/ScarBiddingManagerType;->DISABLED:Lcom/unity3d/services/ads/gmascar/managers/ScarBiddingManagerType;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/managers/ScarBiddingManagerType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scar_bm"

    invoke-direct {p0, v1, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureHDRCapabilitiesEnabled()Z
    .registers 2

    const-string v0, "hdrc"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isJetpackLifecycle()Z
    .registers 2

    const-string v0, "gjl"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNativeLoadTimeoutDisabled()Z
    .registers 2

    const-string v0, "nltd"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNativeShowTimeoutDisabled()Z
    .registers 2

    const-string v0, "nstd"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNativeWebViewCacheEnabled()Z
    .registers 2

    const-string v0, "nwc"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOkHttpEnabled()Z
    .registers 2

    const-string v0, "okhttp"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPCCheckEnabled()Z
    .registers 2

    const-string v0, "pc_check"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isScarBannerHbEnabled()Z
    .registers 2

    const-string v0, "scar_bn"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isScarInitEnabled()Z
    .registers 2

    const-string v0, "scar_init"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWebAssetAdCaching()Z
    .registers 2

    const-string v0, "wac"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWebGestureNotRequired()Z
    .registers 2

    const-string v0, "wgr"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWebMessageEnabled()Z
    .registers 2

    const-string v0, "jwm"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWebViewAsyncDownloadEnabled()Z
    .registers 2

    const-string v0, "wad"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldNativeTokenAwaitPrivacy()Z
    .registers 2

    const-string v0, "tsi_prw"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/ExperimentObjects;->getExperimentValueOrDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
