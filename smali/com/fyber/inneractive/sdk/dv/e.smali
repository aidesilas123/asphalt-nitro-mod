###### Class com.fyber.inneractive.sdk.dv.e (com.fyber.inneractive.sdk.dv.e)
.class public Lcom/fyber/inneractive/sdk/dv/e;
.super Lcom/fyber/inneractive/sdk/response/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/response/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/fyber/inneractive/sdk/response/e;
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/dv/f;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/dv/f;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/a0;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "adm"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/response/b;->a:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/f;

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/dv/f;->J:Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_23

    :catch_12
    move-exception p1

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/config/a0;->b:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object p2, v0

    :goto_1a
    sget-object v1, Lcom/fyber/inneractive/sdk/dv/enums/a;->Parse:Lcom/fyber/inneractive/sdk/dv/enums/a;

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, v0, v0, p1}, Lcom/fyber/inneractive/sdk/dv/handler/c;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/dv/enums/a;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
