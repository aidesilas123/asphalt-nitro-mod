###### Class com.ironsource.sdk.controller.t.u.r (com.ironsource.sdk.controller.t$u$r)
.class Lcom/ironsource/sdk/controller/t$u$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->onShowInterstitialFail(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$r;->c:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$u$r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$r;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$r;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/t;->k1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$u$r;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/y2;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
