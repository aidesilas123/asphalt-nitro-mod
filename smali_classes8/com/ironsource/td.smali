###### Class com.json.td (com.ironsource.td)
.class Lcom/ironsource/td;
.super Lcom/ironsource/pd;
.source "SourceFile"


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/pd;-><init>()V

    const-string v0, "https://outcome-ssp.supersonicads.com/mediation?adUnit=2"

    iput-object v0, p0, Lcom/ironsource/td;->i:Ljava/lang/String;

    const-string v0, "super.dwh.mediation_events"

    iput-object v0, p0, Lcom/ironsource/td;->j:Ljava/lang/String;

    const-string v0, "table"

    iput-object v0, p0, Lcom/ironsource/td;->k:Ljava/lang/String;

    const-string v0, "data"

    iput-object v0, p0, Lcom/ironsource/td;->l:Ljava/lang/String;

    iput p1, p0, Lcom/ironsource/pd;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "https://outcome-ssp.supersonicads.com/mediation?adUnit=2"

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/a4;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p2, :cond_c

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_c
    iput-object p2, p0, Lcom/ironsource/pd;->f:Lorg/json/JSONObject;

    :try_start_e
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/a4;

    invoke-virtual {p0, v1}, Lcom/ironsource/pd;->d(Lcom/ironsource/a4;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1f

    :cond_35
    const-string p1, "table"

    const-string v1, "super.dwh.mediation_events"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {p0, p2}, Lcom/ironsource/pd;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_49} :catch_4a

    return-object p1

    :catch_4a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "ironbeast"

    return-object v0
.end method
