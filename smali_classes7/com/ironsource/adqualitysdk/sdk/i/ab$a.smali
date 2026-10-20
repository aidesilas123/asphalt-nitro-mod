###### Class com.ironsource.adqualitysdk.sdk.i.ab.a (com.ironsource.adqualitysdk.sdk.i.ab$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ab$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ab;->ﾒ(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/app/Activity;

.field private synthetic e:Landroid/view/View;

.field final synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ab;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ab;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->d:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->s(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/lang/Class;

    move-result-object v3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->f(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->D(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->f(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->H(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->f(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->q(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->t(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Class;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->s(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->f(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->H(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->f(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->q(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ka;->ﾇ(Landroid/view/View;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->f(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->h(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v1

    if-eqz v1, :cond_88

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ab$a$a;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ab$a;Ljava/util/List;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    :cond_88
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/ab;

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->q(Lcom/ironsource/adqualitysdk/sdk/i/ab;Ljava/util/List;)V

    return-void
.end method
