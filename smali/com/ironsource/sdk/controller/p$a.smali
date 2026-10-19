###### Class com.ironsource.sdk.controller.p.a (com.ironsource.sdk.controller.p$a)
.class Lcom/ironsource/sdk/controller/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/fa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/p;->a(Lcom/ironsource/q8;Lcom/ironsource/r8;)Lcom/ironsource/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/r8;

.field final synthetic b:Lcom/ironsource/q8;

.field final synthetic c:Lcom/ironsource/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/r8;Lcom/ironsource/q8;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/p$a;->c:Lcom/ironsource/sdk/controller/p;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/r8;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/p$a;->b:Lcom/ironsource/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/q6;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/r8;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/p$a;->b:Lcom/ironsource/q8;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/p$a;->c:Lcom/ironsource/sdk/controller/p;

    invoke-virtual {p1}, Lcom/ironsource/q6;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/ironsource/sdk/controller/p;->f(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/q8;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/r8;->b(Lcom/ironsource/q8;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public a(Lcom/ironsource/q6;Lcom/ironsource/i6;)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/r8;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/p$a;->b:Lcom/ironsource/q8;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/p$a;->c:Lcom/ironsource/sdk/controller/p;

    invoke-virtual {p2}, Lcom/ironsource/i6;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0, p2}, Lcom/ironsource/sdk/controller/p;->e(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/q8;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/r8;->a(Lcom/ironsource/q8;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    return-void
.end method
