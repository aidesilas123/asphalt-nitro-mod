###### Class com.ironsource.adqualitysdk.sdk.i.ag.h (com.ironsource.adqualitysdk.sdk.i.ag$h)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/is;
.implements Lcom/ironsource/adqualitysdk/sdk/i/iz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/ag;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    return-void
.end method

.method public final ﻛ(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/iv;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7c

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_7c

    :cond_a
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/iv;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/af;

    invoke-direct {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/af;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iv;)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/af;

    :goto_33
    if-eqz v1, :cond_70

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->D(Lcom/ironsource/adqualitysdk/sdk/i/ag;Lcom/ironsource/adqualitysdk/sdk/i/af;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾒ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->h(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/jk;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ak;->ﾇ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﻐ(Ljava/lang/String;)V

    :cond_58
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_5c
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->f(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/iz;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iv;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/iv;)V

    :goto_69
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/af;

    goto :goto_33

    :cond_70
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v0, p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->y(Lcom/ironsource/adqualitysdk/sdk/i/ag;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/is;)V

    :cond_7b
    return-void

    :cond_7c
    :goto_7c
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_81} :catch_82

    return-void

    :catch_82
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    return-void
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)V
    .registers 2

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$h;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->I(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    return-void
.end method
