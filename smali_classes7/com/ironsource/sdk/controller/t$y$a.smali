###### Class com.ironsource.sdk.controller.t.y.a (com.ironsource.sdk.controller.t$y$a)
.class Lcom/ironsource/sdk/controller/t$y$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$y;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/t$y;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$y;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$y$a;->a:Lcom/ironsource/sdk/controller/t$y;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$y$a;->a:Lcom/ironsource/sdk/controller/t$y;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$y;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close Event Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$y$a;->a:Lcom/ironsource/sdk/controller/t$y;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$y;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->S(Lcom/ironsource/sdk/controller/t;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$y$a;->a:Lcom/ironsource/sdk/controller/t$y;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$y;->a:Lcom/ironsource/sdk/controller/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/t;->T(Lcom/ironsource/sdk/controller/t;Z)Z

    goto :goto_29

    :cond_20
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$y$a;->a:Lcom/ironsource/sdk/controller/t$y;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$y;->a:Lcom/ironsource/sdk/controller/t;

    const-string v1, "forceClose"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/t;->c(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public onTick(J)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$y$a;->a:Lcom/ironsource/sdk/controller/t$y;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$y;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Event Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
