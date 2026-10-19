###### Class com.ironsource.adqualitysdk.sdk.i.ag.i (com.ironsource.adqualitysdk.sdk.i.ag$i)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/iz$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag;->G(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field final synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/ag;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;Z)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->b:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(I)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->b:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->u(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->b:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->u(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$i;)V

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->b:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->K(Lcom/ironsource/adqualitysdk/sdk/i/ag;I)Z

    move-result p1

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->a:Z

    if-eqz p1, :cond_22

    goto :goto_2a

    :cond_22
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->b:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->k(Lcom/ironsource/adqualitysdk/sdk/i/ag;)I

    move-result p1

    int-to-long v2, p1

    goto :goto_2c

    :cond_2a
    :goto_2a
    const-wide/16 v2, 0x0

    :goto_2c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
