###### Class com.ironsource.sdk.controller.t.u.RunnableC0370u (com.ironsource.sdk.controller.t$u$u)
.class Lcom/ironsource/sdk/controller/t$u$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->onLoadBannerSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/a6;

.field final synthetic c:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;Ljava/lang/String;Lcom/ironsource/a6;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$u;->c:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$u$u;->b:Lcom/ironsource/a6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$u;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBannerLoadSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$u;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->b(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/x2;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$u;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$u$u;->b:Lcom/ironsource/a6;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/x2;->a(Ljava/lang/String;Lcom/ironsource/a6;)V

    return-void
.end method
