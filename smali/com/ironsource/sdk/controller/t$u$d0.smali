###### Class com.ironsource.sdk.controller.t.u.d0 (com.ironsource.sdk.controller.t$u$d0)
.class Lcom/ironsource/sdk/controller/t$u$d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->adUnitsReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/e0;

.field final synthetic d:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;ILjava/lang/String;Lcom/ironsource/e0;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$d0;->d:Lcom/ironsource/sdk/controller/t$u;

    iput p2, p0, Lcom/ironsource/sdk/controller/t$u$d0;->a:I

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$u$d0;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t$u$d0;->c:Lcom/ironsource/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Lcom/ironsource/sdk/controller/t$u$d0;->a:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$d0;->d:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRVInitSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$d0;->d:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->R0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/z2;

    move-result-object v0

    sget-object v1, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$u$d0;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t$u$d0;->c:Lcom/ironsource/e0;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/w2;->a(Lcom/ironsource/h6$e;Ljava/lang/String;Lcom/ironsource/e0;)V

    goto :goto_30

    :cond_23
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$d0;->d:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->R0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/z2;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$d0;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/z2;->d(Ljava/lang/String;)V

    :goto_30
    return-void
.end method
