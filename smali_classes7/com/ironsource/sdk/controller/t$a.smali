###### Class com.ironsource.sdk.controller.t.a (com.ironsource.sdk.controller.t$a)
.class Lcom/ironsource/sdk/controller/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->O(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/h6$e;

.field final synthetic b:Lcom/ironsource/j3;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$a;->d:Lcom/ironsource/sdk/controller/t;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$a;->a:Lcom/ironsource/h6$e;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$a;->b:Lcom/ironsource/j3;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    sget-object v0, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$a;->a:Lcom/ironsource/h6$e;

    if-eq v0, v1, :cond_2f

    sget-object v0, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    if-eq v0, v1, :cond_2f

    sget-object v0, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    if-ne v0, v1, :cond_f

    goto :goto_2f

    :cond_f
    sget-object v0, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$a;->d:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->j1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/da;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/da;->onOfferwallInitFail(Ljava/lang/String;)V

    goto :goto_80

    :cond_1f
    sget-object v0, Lcom/ironsource/h6$e;->d:Lcom/ironsource/h6$e;

    if-ne v0, v1, :cond_80

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$a;->d:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->j1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/da;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/da;->onGetOWCreditsFailed(Ljava/lang/String;)V

    goto :goto_80

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$a;->b:Lcom/ironsource/j3;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_80

    :cond_3e
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$a;->d:Lcom/ironsource/sdk/controller/t;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$a;->a:Lcom/ironsource/h6$e;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/t;->w(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/h6$e;)Lcom/ironsource/w2;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$a;->d:Lcom/ironsource/sdk/controller/t;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdProductInitFailed (message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t$a;->a:Lcom/ironsource/h6$e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_80

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$a;->a:Lcom/ironsource/h6$e;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$a;->b:Lcom/ironsource/j3;

    invoke-virtual {v2}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/w2;->a(Lcom/ironsource/h6$e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void
.end method
