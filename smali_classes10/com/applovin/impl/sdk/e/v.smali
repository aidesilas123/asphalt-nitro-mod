###### Class com.applovin.impl.sdk.e.v (com.applovin.impl.sdk.e.v)
.class Lcom/applovin/impl/sdk/e/v;
.super Lcom/applovin/impl/sdk/e/d;
.source "SourceFile"


# instance fields
.field private final aTG:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final aUX:Lcom/applovin/impl/b/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/n;)V
    .registers 5

    const-string v0, "TaskRenderVastAd"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/d;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/n;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/v;->aTG:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v2, "Rendering VAST ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    invoke-virtual {v0}, Lcom/applovin/impl/b/e;->Ms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    invoke-virtual {v0}, Lcom/applovin/impl/b/e;->Ms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v4, v3

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_130

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/applovin/impl/sdk/utils/y;

    invoke-static {v9}, Lcom/applovin/impl/b/m;->d(Lcom/applovin/impl/sdk/utils/y;)Z

    move-result v10

    if-eqz v10, :cond_4a

    const-string v10, "Wrapper"

    goto :goto_4c

    :cond_4a
    const-string v10, "InLine"

    :goto_4c
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/utils/y;->dL(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v10

    if-eqz v10, :cond_110

    const-string v9, "AdSystem"

    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/y;->dL(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v9

    if-eqz v9, :cond_60

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v9, v5, v11}, Lcom/applovin/impl/b/j;->a(Lcom/applovin/impl/sdk/utils/y;Lcom/applovin/impl/b/j;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/j;

    move-result-object v5

    :cond_60
    const-string v9, "AdTitle"

    invoke-static {v10, v9, v3}, Lcom/applovin/impl/b/m;->a(Lcom/applovin/impl/sdk/utils/y;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "Description"

    invoke-static {v10, v9, v4}, Lcom/applovin/impl/b/m;->a(Lcom/applovin/impl/sdk/utils/y;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "Impression"

    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/y;->dJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v9, v1, v11, v12}, Lcom/applovin/impl/b/m;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/b/e;Lcom/applovin/impl/sdk/n;)V

    const-string v9, "ViewableImpression"

    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/y;->dK(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v9

    if-eqz v9, :cond_8e

    const-string v11, "Viewable"

    invoke-virtual {v9, v11}, Lcom/applovin/impl/sdk/utils/y;->dJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v9, v1, v11, v12}, Lcom/applovin/impl/b/m;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/b/e;Lcom/applovin/impl/sdk/n;)V

    :cond_8e
    const-string v9, "AdVerifications"

    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/y;->dL(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v9

    if-eqz v9, :cond_9e

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v9, v8, v11, v12}, Lcom/applovin/impl/b/c;->a(Lcom/applovin/impl/sdk/utils/y;Lcom/applovin/impl/b/c;Lcom/applovin/impl/b/e;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/c;

    move-result-object v8

    :cond_9e
    const-string v9, "Error"

    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/y;->dJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v9, v2, v11, v12}, Lcom/applovin/impl/b/m;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/b/e;Lcom/applovin/impl/sdk/n;)V

    const-string v9, "Creatives"

    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/y;->dK(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v9

    if-eqz v9, :cond_35

    invoke-virtual {v9}, Lcom/applovin/impl/sdk/utils/y;->LL()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_bb
    :goto_bb
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_35

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/applovin/impl/sdk/utils/y;

    const-string v11, "Linear"

    invoke-virtual {v10, v11}, Lcom/applovin/impl/sdk/utils/y;->dK(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v11

    if-eqz v11, :cond_d8

    iget-object v10, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v11, v6, v10, v12}, Lcom/applovin/impl/b/n;->a(Lcom/applovin/impl/sdk/utils/y;Lcom/applovin/impl/b/n;Lcom/applovin/impl/b/e;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/n;

    move-result-object v6

    goto :goto_bb

    :cond_d8
    const-string v11, "CompanionAds"

    invoke-virtual {v10, v11}, Lcom/applovin/impl/sdk/utils/y;->dL(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v11

    if-eqz v11, :cond_f1

    const-string v10, "Companion"

    invoke-virtual {v11, v10}, Lcom/applovin/impl/sdk/utils/y;->dL(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v10

    if-eqz v10, :cond_bb

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v10, v7, v11, v12}, Lcom/applovin/impl/b/d;->a(Lcom/applovin/impl/sdk/utils/y;Lcom/applovin/impl/b/d;Lcom/applovin/impl/b/e;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/d;

    move-result-object v7

    goto :goto_bb

    :cond_f1
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v11

    if-eqz v11, :cond_bb

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received and will skip rendering for an unidentified creative: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    :cond_110
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v10

    if-eqz v10, :cond_35

    iget-object v10, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did not find wrapper or inline response for node: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_130
    new-instance v0, Lcom/applovin/impl/b/a$a;

    invoke-direct {v0}, Lcom/applovin/impl/b/a$a;-><init>()V

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0, v9}, Lcom/applovin/impl/b/a$a;->R(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    invoke-virtual {v9}, Lcom/applovin/impl/b/e;->Mt()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/applovin/impl/b/a$a;->V(Lorg/json/JSONObject;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    invoke-virtual {v9}, Lcom/applovin/impl/b/e;->FR()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/applovin/impl/b/a$a;->W(Lorg/json/JSONObject;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    invoke-virtual {v9}, Lcom/applovin/impl/b/e;->getSource()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    invoke-virtual {v9}, Lcom/applovin/impl/b/e;->getCreatedAtMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/applovin/impl/b/a$a;->cc(J)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/applovin/impl/b/a$a;->dP(Ljava/lang/String;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/b/a$a;->dQ(Ljava/lang/String;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/b/j;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/b/n;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/b/d;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/b/c;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/b/a$a;->b(Ljava/util/Set;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/b/c;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/b/a$a;->c(Ljava/util/Set;)Lcom/applovin/impl/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/b/a$a;->Mi()Lcom/applovin/impl/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/b/m;->a(Lcom/applovin/impl/b/a;)Lcom/applovin/impl/b/f;

    move-result-object v1

    if-nez v1, :cond_1fb

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_1af

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished rendering VAST ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1af
    invoke-virtual {v0}, Lcom/applovin/impl/b/a;->LO()Lcom/applovin/impl/sdk/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a/b;->IJ()V

    new-instance v1, Lcom/applovin/impl/sdk/e/h;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/v;->aTG:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/e/h;-><init>(Lcom/applovin/impl/b/a;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    sget-object v2, Lcom/applovin/impl/sdk/e/q$b;->aUB:Lcom/applovin/impl/sdk/e/q$b;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->aLH:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1f1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v3, v4, :cond_1dc

    sget-object v2, Lcom/applovin/impl/sdk/e/q$b;->aUy:Lcom/applovin/impl/sdk/e/q$b;

    goto :goto_1f1

    :cond_1dc
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v3, v4, :cond_1e7

    sget-object v2, Lcom/applovin/impl/sdk/e/q$b;->aUz:Lcom/applovin/impl/sdk/e/q$b;

    goto :goto_1f1

    :cond_1e7
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v3, Lcom/applovin/sdk/AppLovinAdType;->NATIVE:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v3, :cond_1f1

    sget-object v2, Lcom/applovin/impl/sdk/e/q$b;->aUA:Lcom/applovin/impl/sdk/e/q$b;

    :cond_1f1
    :goto_1f1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V

    goto :goto_205

    :cond_1fb
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/v;->aUX:Lcom/applovin/impl/b/e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/v;->aTG:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v3, -0x6

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/applovin/impl/b/m;->a(Lcom/applovin/impl/b/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/b/f;ILcom/applovin/impl/sdk/n;)V

    :goto_205
    return-void
.end method
