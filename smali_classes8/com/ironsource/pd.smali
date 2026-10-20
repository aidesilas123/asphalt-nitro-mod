###### Class com.json.pd (com.ironsource.pd)
.class abstract Lcom/ironsource/pd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field f:Lorg/json/JSONObject;

.field g:I

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eventId"

    iput-object v0, p0, Lcom/ironsource/pd;->a:Ljava/lang/String;

    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/ironsource/pd;->b:Ljava/lang/String;

    const-string v0, "InterstitialEvents"

    iput-object v0, p0, Lcom/ironsource/pd;->c:Ljava/lang/String;

    const-string v0, "events"

    iput-object v0, p0, Lcom/ironsource/pd;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/pd;->e:Ljava/lang/String;

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const-string p1, "events"

    return-object p1

    :cond_6
    const-string p1, "InterstitialEvents"

    return-object p1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
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
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method c(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/pd;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_26

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/pd;->f:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTimestamp()J

    move-result-wide v1

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget v1, p0, Lcom/ironsource/pd;->g:I

    invoke-direct {p0, v1}, Lcom/ironsource/pd;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_28

    :catch_26
    :cond_26
    const-string p1, ""

    :goto_28
    return-object p1
.end method

.method d(Lcom/ironsource/a4;)Lorg/json/JSONObject;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/a4;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ironsource/a4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_19
    const-string v1, "eventId"

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/ironsource/a4;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_31
    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/pd;->h:Ljava/lang/String;

    return-void
.end method

.method f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/pd;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ironsource/pd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/ironsource/pd;->h:Ljava/lang/String;

    :goto_f
    return-object v0
.end method
