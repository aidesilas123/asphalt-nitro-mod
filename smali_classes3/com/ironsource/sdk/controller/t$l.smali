###### Class com.ironsource.sdk.controller.t.l (com.ironsource.sdk.controller.t$l)
.class Lcom/ironsource/sdk/controller/t$l;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;JJI)V
    .registers 7

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$l;->b:Lcom/ironsource/sdk/controller/t;

    iput p6, p0, Lcom/ironsource/sdk/controller/t$l;->a:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$l;->b:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ironsource/sdk/controller/t$l;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$l;->b:Lcom/ironsource/sdk/controller/t;

    new-instance v1, Lcom/ironsource/sdk/controller/t$l$a;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/t$l$a;-><init>(Lcom/ironsource/sdk/controller/t$l;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/t;->f0(Ljava/lang/Runnable;)V

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$l;->b:Lcom/ironsource/sdk/controller/t;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/t;->a(I)V

    return-void
.end method

.method public onTick(J)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$l;->b:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
