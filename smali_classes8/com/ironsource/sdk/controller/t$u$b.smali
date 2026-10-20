###### Class com.ironsource.sdk.controller.t.u.b (com.ironsource.sdk.controller.t$u$b)
.class Lcom/ironsource/sdk/controller/t$u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->onInitRewardedVideoFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$b;->c:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$u$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$b;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$b;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRVInitFail(message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$b;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/t;->R0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/z2;

    move-result-object v1

    sget-object v2, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t$u$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ironsource/w2;->a(Lcom/ironsource/h6$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
