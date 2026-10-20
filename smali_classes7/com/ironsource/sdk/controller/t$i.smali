###### Class com.ironsource.sdk.controller.t.i (com.ironsource.sdk.controller.t$i)
.class Lcom/ironsource/sdk/controller/t$i;
.super Lcom/ironsource/i2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->h0(Landroid/content/Context;)Lcom/ironsource/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$i;->b:Lcom/ironsource/sdk/controller/t;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/i2;-><init>(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$i;->b:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->L0(Lcom/ironsource/sdk/controller/t;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$i;->b:Lcom/ironsource/sdk/controller/t;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/t;->m(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t$i;->b:Lcom/ironsource/sdk/controller/t;

    invoke-static {p2}, Lcom/ironsource/sdk/controller/t;->L0(Lcom/ironsource/sdk/controller/t;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t$i;->b:Lcom/ironsource/sdk/controller/t;

    invoke-virtual {p2, p1}, Lcom/ironsource/sdk/controller/t;->m(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p2, :cond_19

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$i;->b:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->L0(Lcom/ironsource/sdk/controller/t;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_a
    const-string v0, "connectionType"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t$i;->b:Lcom/ironsource/sdk/controller/t;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/controller/t;->e(Lorg/json/JSONObject;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method
