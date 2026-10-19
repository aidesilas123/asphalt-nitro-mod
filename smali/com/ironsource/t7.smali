###### Class com.json.t7 (com.ironsource.t7)
.class public Lcom/ironsource/t7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcom/ironsource/y5;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/ironsource/y9;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/y9;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/t7;->b:Z

    iput-boolean v0, p0, Lcom/ironsource/t7;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/t7;->d:Lcom/ironsource/y5;

    const-string v0, "Instance name can\'t be null"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/SDKUtils;->requireNonEmptyOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/t7;->a:Ljava/lang/String;

    const-string p1, "AdListener name can\'t be null"

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/SDKUtils;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/y9;

    iput-object p1, p0, Lcom/ironsource/t7;->f:Lcom/ironsource/y9;

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/s7;
    .registers 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "name"

    iget-object v2, p0, Lcom/ironsource/t7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rewarded"

    iget-boolean v2, p0, Lcom/ironsource/t7;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_18
    iget-boolean v1, p0, Lcom/ironsource/t7;->c:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/ironsource/t7;->g:Z

    if-eqz v1, :cond_21

    goto :goto_26

    :cond_21
    invoke-static {v0}, Lcom/ironsource/b8;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_26
    :goto_26
    invoke-static {}, Lcom/ironsource/b8;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    move-object v2, v0

    new-instance v0, Lcom/ironsource/s7;

    iget-object v3, p0, Lcom/ironsource/t7;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/ironsource/t7;->b:Z

    iget-boolean v5, p0, Lcom/ironsource/t7;->c:Z

    iget-boolean v6, p0, Lcom/ironsource/t7;->g:Z

    iget-object v7, p0, Lcom/ironsource/t7;->e:Ljava/util/Map;

    iget-object v8, p0, Lcom/ironsource/t7;->f:Lcom/ironsource/y9;

    iget-object v9, p0, Lcom/ironsource/t7;->d:Lcom/ironsource/y5;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/s7;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/util/Map;Lcom/ironsource/y9;Lcom/ironsource/y5;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/y5;)Lcom/ironsource/t7;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t7;->d:Lcom/ironsource/y5;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/ironsource/t7;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/t7;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/t7;->e:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/ironsource/t7;
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/t7;->c:Z

    return-object p0
.end method

.method public b()Lcom/ironsource/t7;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/t7;->b:Z

    return-object p0
.end method

.method public b(Z)Lcom/ironsource/t7;
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/t7;->g:Z

    return-object p0
.end method
