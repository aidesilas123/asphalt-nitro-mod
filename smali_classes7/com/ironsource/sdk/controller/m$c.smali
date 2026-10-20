###### Class com.ironsource.sdk.controller.m.c (com.ironsource.sdk.controller.m$c)
.class Lcom/ironsource/sdk/controller/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/m;->a(Lorg/json/JSONObject;Lcom/ironsource/x2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/x2;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/ironsource/sdk/controller/m;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/m;Lcom/ironsource/x2;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/m$c;->c:Lcom/ironsource/sdk/controller/m;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/m$c;->a:Lcom/ironsource/x2;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/m$c;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/m$c;->a:Lcom/ironsource/x2;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/m$c;->b:Lorg/json/JSONObject;

    const-string v2, "demandSourceName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/m$c;->c:Lcom/ironsource/sdk/controller/m;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/sdk/controller/m;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/x2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
