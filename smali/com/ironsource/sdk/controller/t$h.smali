###### Class com.ironsource.sdk.controller.t.h (com.ironsource.sdk.controller.t$h)
.class Lcom/ironsource/sdk/controller/t$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->I(Lcom/ironsource/h6$e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/h6$e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/h6$e;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$h;->c:Lcom/ironsource/sdk/controller/t;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$h;->a:Lcom/ironsource/h6$e;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$h;->a:Lcom/ironsource/h6$e;

    sget-object v1, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    if-eq v0, v1, :cond_19

    sget-object v1, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    if-ne v0, v1, :cond_b

    goto :goto_19

    :cond_b
    sget-object v1, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$h;->c:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->j1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/da;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/da;->onOWAdClosed()V

    goto :goto_28

    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$h;->c:Lcom/ironsource/sdk/controller/t;

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/t;->w(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/h6$e;)Lcom/ironsource/w2;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$h;->a:Lcom/ironsource/h6$e;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$h;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/w2;->a(Lcom/ironsource/h6$e;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method
