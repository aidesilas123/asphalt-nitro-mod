###### Class com.applovin.impl.sdk.e.ac (com.applovin.impl.sdk.e.ac)
.class public Lcom/applovin/impl/sdk/e/ac;
.super Lcom/applovin/impl/sdk/e/ad;
.source "SourceFile"


# instance fields
.field private final aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field private final aiL:Lcom/applovin/impl/sdk/ad/e;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/impl/sdk/n;)V
    .registers 5

    const-string v0, "TaskValidateAppLovinReward"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/ad;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/n;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/ac;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method


# virtual methods
.method protected b(Lcom/applovin/impl/sdk/b/c;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/b/c;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/c;->JC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/c;->JB()Ljava/util/Map;

    move-result-object p1

    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_46

    :cond_1d
    const-string v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_46

    :cond_2d
    const-string v1, "rejected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_46

    :cond_3d
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/ac;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    const/16 v1, -0x190

    invoke-interface {p1, v0, v1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    :goto_46
    return-void
.end method

.method protected gu(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/e/aa;->gu(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_19

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_19

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/ac;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    const-string p1, "rejected"

    goto :goto_22

    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    const-string p1, "network_timeout"

    :goto_22
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p1}, Lcom/applovin/impl/sdk/b/c;->dn(Ljava/lang/String;)Lcom/applovin/impl/sdk/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/b/c;)V

    return-void
.end method

.method protected x(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->mQ()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zone_id"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getClCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const-string v0, "NO_CLCODE"

    :goto_1f
    const-string v1, "clcode"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zL()Ljava/lang/String;
    .registers 2

    const-string v0, "2.0/vr"

    return-object v0
.end method

.method protected zN()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/ac;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->yf()Z

    move-result v0

    return v0
.end method
