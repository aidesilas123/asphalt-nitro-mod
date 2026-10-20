###### Class com.applovin.impl.sdk.g.b (com.applovin.impl.sdk.g$b)
.class Lcom/applovin/impl/sdk/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic azr:Lcom/applovin/impl/sdk/g;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/g;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/g$b;->azr:Lcom/applovin/impl/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/g;Lcom/applovin/impl/sdk/g$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/g$b;-><init>(Lcom/applovin/impl/sdk/g;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$b;->azr:Lcom/applovin/impl/sdk/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$b;->azr:Lcom/applovin/impl/sdk/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/g;->b(Lcom/applovin/impl/sdk/g;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$b;->azr:Lcom/applovin/impl/sdk/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/g;->d(Lcom/applovin/impl/sdk/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/g$b;->azr:Lcom/applovin/impl/sdk/g;

    invoke-static {v1}, Lcom/applovin/impl/sdk/g;->c(Lcom/applovin/impl/sdk/g;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_28
    return-void
.end method
