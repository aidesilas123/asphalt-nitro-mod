###### Class com.ironsource.sdk.controller.t.u.e0 (com.ironsource.sdk.controller.t$u$e0)
.class public Lcom/ironsource/sdk/controller/t$u$e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/p8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/t$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e0"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/t$u;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$e0;->a:Lcom/ironsource/sdk/controller/t$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Lcom/ironsource/hb;)V
    .registers 5

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/ironsource/sdk/controller/t;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/ironsource/sdk/controller/t;->H0()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p3, v0, p2}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t$u$e0;->a:Lcom/ironsource/sdk/controller/t$u;

    iget-object p2, p2, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-virtual {p3}, Lcom/ironsource/hb;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, v0}, Lcom/ironsource/sdk/controller/t;->L(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0}, Lcom/ironsource/hb;-><init>()V

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/ironsource/sdk/controller/t;->z()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_c
    invoke-static {}, Lcom/ironsource/sdk/controller/t;->H0()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v0, v1, p2}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v0, p2, p3}, Lcom/ironsource/hb;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t$u$e0;->a:Lcom/ironsource/sdk/controller/t$u;

    iget-object p2, p2, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-virtual {v0}, Lcom/ironsource/hb;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, v0}, Lcom/ironsource/sdk/controller/t;->L(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_7

    :try_start_2
    invoke-static {}, Lcom/ironsource/sdk/controller/t;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/ironsource/sdk/controller/t;->H0()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_e} :catch_1b

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t$u$e0;->a:Lcom/ironsource/sdk/controller/t$u;

    iget-object p2, p2, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, v0}, Lcom/ironsource/sdk/controller/t;->L(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
