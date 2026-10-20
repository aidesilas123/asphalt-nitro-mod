###### Class com.ironsource.sdk.controller.t.u.v (com.ironsource.sdk.controller.t$u$v)
.class Lcom/ironsource/sdk/controller/t$u$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->onLoadBannerFail(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$v;->c:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$u$v;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$v;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadBannerFail()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$v;->a:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    :cond_13
    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$v;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/t;->b(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/x2;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$u$v;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/x2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
