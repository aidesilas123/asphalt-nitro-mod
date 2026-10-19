###### Class com.ironsource.sdk.controller.t.l.a (com.ironsource.sdk.controller.t$l$a)
.class Lcom/ironsource/sdk/controller/t$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$l;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/t$l;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$l;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$l$a;->a:Lcom/ironsource/sdk/controller/t$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$l$a;->a:Lcom/ironsource/sdk/controller/t$l;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$l;->b:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->i0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/g;

    move-result-object v0

    const-string v1, "controller html - failed to load into web-view"

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/controller/g;->b(Ljava/lang/String;)V

    return-void
.end method
