###### Class com.ironsource.sdk.controller.t.u.a (com.ironsource.sdk.controller.t$u$a)
.class Lcom/ironsource/sdk/controller/t$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->fileSystemAPI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$a;->b:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$a;->b:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->V0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/p;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$u$a;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/ironsource/sdk/controller/t$u$e0;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t$u$a;->b:Lcom/ironsource/sdk/controller/t$u;

    invoke-direct {v2, v3}, Lcom/ironsource/sdk/controller/t$u$e0;-><init>(Lcom/ironsource/sdk/controller/t$u;)V

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/p;->g(Lorg/json/JSONObject;Lcom/ironsource/p8;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_3e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$a;->b:Lcom/ironsource/sdk/controller/t$u;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileSystemAPI failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method
