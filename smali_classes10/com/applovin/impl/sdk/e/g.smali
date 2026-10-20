###### Class com.applovin.impl.sdk.e.g (com.applovin.impl.sdk.e.g)
.class public Lcom/applovin/impl/sdk/e/g;
.super Lcom/applovin/impl/sdk/e/f;
.source "SourceFile"


# instance fields
.field private final aTR:Lcom/applovin/impl/sdk/ad/a;

.field private aTS:Z

.field private aTT:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 5

    const-string v0, "TaskCacheAppLovinAd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/f;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    return-void
.end method

.method private Kq()V
    .registers 6

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Caching HTML resources..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->FB()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Gx()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->shouldInjectOpenMeasurementScriptDuringCaching()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->isOpenMeasurementEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cp()Lcom/applovin/impl/sdk/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/a/f;->dl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/a;->cP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ad/e;->aN(Z)V

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish caching non-video resources for ad #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad updated with cachedHTML = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/a;->FB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->C(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Kr()V
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kj()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->FJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->dr(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Hz()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->FB()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/a;->FE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/ad/a;->cP(Ljava/lang/String;)V

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "Replaced video URL with cached video URI in HTML for web video ad"

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->FH()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/a;->j(Landroid/net/Uri;)V

    :cond_4d
    return-void
.end method

.method private Ks()Lcom/applovin/impl/sdk/e/c;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->FJ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/g$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/e/g$1;-><init>(Lcom/applovin/impl/sdk/e/g;)V

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/e/f;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/e/c$a;)Lcom/applovin/impl/sdk/e/c;

    move-result-object v0

    return-object v0
.end method

.method private Kt()Lcom/applovin/impl/sdk/e/b;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Caching HTML resources..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->FB()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Gx()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/e/g$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/e/g$2;-><init>(Lcom/applovin/impl/sdk/e/g;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/e/f$a;)Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/ad/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    return-object p0
.end method


# virtual methods
.method public bg(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/e/g;->aTS:Z

    return-void
.end method

.method public bh(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/e/g;->aTT:Z

    return-void
.end method

.method public run()V
    .registers 8

    invoke-super {p0}, Lcom/applovin/impl/sdk/e/f;->run()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->FF()Z

    move-result v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/e/g;->aTT:Z

    const-string v2, "..."

    if-nez v0, :cond_7d

    if-eqz v1, :cond_12

    goto :goto_7d

    :cond_12
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin processing for non-streaming ad #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aLQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kl()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kt()Lcom/applovin/impl/sdk/e/b;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Ks()Lcom/applovin/impl/sdk/e/c;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    goto/16 :goto_12f

    :cond_6f
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Km()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kq()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kr()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    goto/16 :goto_12f

    :cond_7d
    :goto_7d
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Begin caching for streaming ad #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aLQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Kl()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_fc

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/e/g;->aTS:Z

    if-eqz v0, :cond_dc

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kt()Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d2
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Ks()Lcom/applovin/impl/sdk/e/c;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    :cond_dc
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kt()Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_ef

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/applovin/impl/sdk/e/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    :cond_ef
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Ks()Lcom/applovin/impl/sdk/e/c;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    :cond_fc
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kt()Lcom/applovin/impl/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_108
    :goto_108
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/f;->K(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    goto :goto_12f

    :cond_10f
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Km()V

    if-eqz v0, :cond_129

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/e/g;->aTS:Z

    if-eqz v0, :cond_11b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    :cond_11b
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kq()V

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/e/g;->aTS:Z

    if-nez v0, :cond_125

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    :cond_125
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kr()V

    goto :goto_12f

    :cond_129
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ko()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->Kq()V

    :goto_12f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getCreatedAtMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/n;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(JLcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/n;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->aTR:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/f;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/f;->Ki()V

    return-void
.end method
