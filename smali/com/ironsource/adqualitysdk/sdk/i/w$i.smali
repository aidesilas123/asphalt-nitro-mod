###### Class com.ironsource.adqualitysdk.sdk.i.w.i (com.ironsource.adqualitysdk.sdk.i.w$i)
.class final Lcom/ironsource/adqualitysdk/sdk/i/w$i;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/w;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/app/Activity;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/w;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/w;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->d:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->d:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->E(Lcom/ironsource/adqualitysdk/sdk/i/w;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w;->F(Lcom/ironsource/adqualitysdk/sdk/i/w;)Lcom/ironsource/adqualitysdk/sdk/i/jc;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->A(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/w;->Q(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w;->D(Lcom/ironsource/adqualitysdk/sdk/i/w;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/w;->z(Lcom/ironsource/adqualitysdk/sdk/i/w;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_31
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->d:Landroid/app/Activity;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/w;->K(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/w;->I(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_44
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w$i;->e:Lcom/ironsource/adqualitysdk/sdk/i/w;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/w;->J(Lcom/ironsource/adqualitysdk/sdk/i/w;Z)Z

    :cond_49
    return-void
.end method
