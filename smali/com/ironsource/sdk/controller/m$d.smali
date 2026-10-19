###### Class com.ironsource.sdk.controller.m.d (com.ironsource.sdk.controller.m$d)
.class Lcom/ironsource/sdk/controller/m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/k$a;

.field final synthetic b:Lcom/ironsource/sdk/controller/f$c;

.field final synthetic c:Lcom/ironsource/sdk/controller/m;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/m;Lcom/ironsource/sdk/controller/k$a;Lcom/ironsource/sdk/controller/f$c;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/m$d;->c:Lcom/ironsource/sdk/controller/m;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/m$d;->a:Lcom/ironsource/sdk/controller/k$a;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/m$d;->b:Lcom/ironsource/sdk/controller/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/m$d;->a:Lcom/ironsource/sdk/controller/k$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reason"

    iget-object v2, p0, Lcom/ironsource/sdk/controller/m$d;->c:Lcom/ironsource/sdk/controller/m;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/sdk/controller/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/ironsource/sdk/controller/f$a;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/m$d;->b:Lcom/ironsource/sdk/controller/f$c;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/f$c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ironsource/sdk/controller/f$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/m$d;->a:Lcom/ironsource/sdk/controller/k$a;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/controller/k$a;->a(Lcom/ironsource/sdk/controller/f$a;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_30
    return-void
.end method
