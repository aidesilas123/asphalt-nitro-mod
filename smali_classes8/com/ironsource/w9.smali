###### Class com.json.w9 (com.ironsource.w9)
.class public Lcom/ironsource/w9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/x9;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ironsource/x9;

.field private c:Lcom/ironsource/m0;

.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ironsource/m0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/w9;->c:Lcom/ironsource/m0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/w9;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/x9;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/w9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/x9;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    iget-object v0, p0, Lcom/ironsource/w9;->b:Lcom/ironsource/x9;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/x9;
    .registers 5

    iget-object v0, p0, Lcom/ironsource/w9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/x9;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/x9;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/ironsource/w9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/w9;->b:Lcom/ironsource/x9;

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->isPlacementId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_13
    iput-object p1, p0, Lcom/ironsource/w9;->b:Lcom/ironsource/x9;

    :cond_15
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w9;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/w9;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    const-string v1, "adapterName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/ironsource/w9;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v0, "SupersonicAds"

    return-object v0
.end method

.method public c()Lcom/ironsource/m0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/w9;->c:Lcom/ironsource/m0;

    return-object v0
.end method
