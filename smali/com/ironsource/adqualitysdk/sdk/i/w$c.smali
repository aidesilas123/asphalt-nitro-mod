###### Class com.ironsource.adqualitysdk.sdk.i.w.c (com.ironsource.adqualitysdk.sdk.i.w$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/w$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/w;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/app/Activity;

.field private synthetic e:Landroid/os/Bundle;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/w;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/w;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->d:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->d:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->E(Lcom/ironsource/adqualitysdk/sdk/i/w;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w;->F(Lcom/ironsource/adqualitysdk/sdk/i/w;)Lcom/ironsource/adqualitysdk/sdk/i/jc;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->e:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/w;->C()Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->Q(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/w;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/w;->M(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w;->D(Lcom/ironsource/adqualitysdk/sdk/i/w;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->Q(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    :cond_3f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->J(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    return-void

    :cond_45
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$c;->f:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->M(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    :cond_4a
    return-void
.end method
