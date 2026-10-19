###### Class com.ironsource.adqualitysdk.sdk.i.iq.a (com.ironsource.adqualitysdk.sdk.i.iq$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iq$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iq;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ir;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/iq;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->c(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->c(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1a

    :cond_2a
    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
