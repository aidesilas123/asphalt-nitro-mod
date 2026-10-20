###### Class com.ironsource.adqualitysdk.sdk.i.u.b (com.ironsource.adqualitysdk.sdk.i.u$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/u$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/u;->ﾒ(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/s;Lcom/ironsource/adqualitysdk/sdk/i/im;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lorg/json/JSONObject;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/im;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/s;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/u;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/u;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/im;Lcom/ironsource/adqualitysdk/sdk/i/s;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->g:Lcom/ironsource/adqualitysdk/sdk/i/u;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->d:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/im;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->f:Lcom/ironsource/adqualitysdk/sdk/i/s;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->d:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/u;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->g:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/u;->f(Lcom/ironsource/adqualitysdk/sdk/i/u;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;

    if-nez v1, :cond_27

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/im;

    invoke-direct {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab;-><init>(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/im;)V

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->g:Lcom/ironsource/adqualitysdk/sdk/i/u;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/u;->f(Lcom/ironsource/adqualitysdk/sdk/i/u;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_27
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->d:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/im;

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->m(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/im;)V

    :goto_2e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/u$b;->f:Lcom/ironsource/adqualitysdk/sdk/i/s;

    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/p;)V

    return-void
.end method
