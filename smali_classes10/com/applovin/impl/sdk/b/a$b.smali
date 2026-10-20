###### Class com.applovin.impl.sdk.b.a.b (com.applovin.impl.sdk.b.a$b)
.class Lcom/applovin/impl/sdk/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/ad/h;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic aIS:Lcom/applovin/impl/sdk/b/a;

.field private final aIU:Lcom/applovin/sdk/AppLovinAd;

.field private final aIV:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private final aIW:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private final aIX:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/b/a;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .registers 7

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIU:Lcom/applovin/sdk/AppLovinAd;

    iput-object p5, p0, Lcom/applovin/impl/sdk/b/a$b;->aIV:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p6, p0, Lcom/applovin/impl/sdk/b/a$b;->aIW:Lcom/applovin/sdk/AppLovinAdClickListener;

    iput-object p4, p0, Lcom/applovin/impl/sdk/b/a$b;->aIX:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/b/a$b;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/b/a;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/sdk/b/a$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/sdk/b/a$b;-><init>(Lcom/applovin/impl/sdk/b/a;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method private f(Lcom/applovin/impl/sdk/ad/e;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    const-string v1, "IncentivizedAdController"

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v2, "Finishing direct ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b/a;->b(Lcom/applovin/impl/sdk/b/a;)Z

    move-result v2

    if-nez v2, :cond_ef

    :cond_30
    iget-object v2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v2, v2, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v2, v2, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid reward state - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and wasFullyEngaged: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b/a;->b(Lcom/applovin/impl/sdk/b/a;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v2, "Cancelling any incoming reward requests for this ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->yg()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b/a;->b(Lcom/applovin/impl/sdk/b/a;)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v2, "User close the ad after fully watching but reward validation task did not return on time"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    const/16 v0, -0x1f4

    const-string v2, "network_timeout"

    goto :goto_c9

    :cond_ab
    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v2, "User close the ad prematurely"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    const/16 v0, -0x258

    const-string v2, "user_closed_video"

    :goto_c9
    invoke-static {v2}, Lcom/applovin/impl/sdk/b/c;->dn(Ljava/lang/String;)Lcom/applovin/impl/sdk/b/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/b/c;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v2, v2, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_ea

    iget-object v2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v2, v2, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    const-string v3, "Notifying listener of reward validation failure"

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    iget-object v2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v2, p1, v0}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    :cond_ef
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->GW()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_12a

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v2, "Scheduling report rewarded ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_114
    new-instance v0, Lcom/applovin/impl/sdk/e/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v1, v1, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/e/x;-><init>(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/n;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object p1, p1, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/sdk/e/q$b;->aUC:Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V

    :cond_12a
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIW:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIV:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 8

    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/f;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/f;->HB()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, p1

    :goto_d
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/e;

    const-string v2, "IncentivizedAdController"

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Lcom/applovin/impl/sdk/ad/e;

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/b/a$b;->f(Lcom/applovin/impl/sdk/ad/e;)V

    goto :goto_59

    :cond_1a
    if-nez v0, :cond_1f

    const-string v1, "null/expired ad"

    goto :goto_30

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid ad of type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_30
    iget-object v3, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v3, v3, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v3, v3, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received `adHidden` callback for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v1, "Notifying listener of rewarded ad dismissal"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIV:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIU:Lcom/applovin/sdk/AppLovinAd;

    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/f;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/f;->HB()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/sdk/b/a$b;->aIV:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v1, v1, Lcom/applovin/impl/sdk/ad/h;

    instance-of v2, v0, Lcom/applovin/impl/sdk/ad/e;

    if-eqz v2, :cond_1b

    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/sdk/ad/e;

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/b/a$b;->f(Lcom/applovin/impl/sdk/ad/e;)V

    goto :goto_6b

    :cond_1b
    if-nez v0, :cond_20

    const-string v2, "null/expired ad"

    goto :goto_31

    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid ad of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_31
    iget-object v3, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v3, v3, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    iget-object v3, v3, Lcom/applovin/impl/sdk/b/a;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_55

    const-string v5, "adDisplayFailed"

    goto :goto_57

    :cond_55
    const-string v5, "adHidden"

    :goto_57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "` callback for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IncentivizedAdController"

    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;Lcom/applovin/sdk/AppLovinAd;)V

    if-eqz v1, :cond_78

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIV:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    goto :goto_7f

    :cond_78
    iget-object p1, p0, Lcom/applovin/impl/sdk/b/a$b;->aIV:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIU:Lcom/applovin/sdk/AppLovinAd;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/m;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    :goto_7f
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    const-string v1, "quota_exceeded"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/m;->b(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    const-string v1, "rejected"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/m;->c(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    const-string v1, "accepted"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    const-string v1, "network_timeout"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIY:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIX:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/a$b;->aIX:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/utils/m;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/b/a$b;->aIS:Lcom/applovin/impl/sdk/b/a;

    invoke-static {p1, p4}, Lcom/applovin/impl/sdk/b/a;->a(Lcom/applovin/impl/sdk/b/a;Z)Z

    return-void
.end method
