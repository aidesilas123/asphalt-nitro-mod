###### Class com.ironsource.adqualitysdk.sdk.i.iy.e (com.ironsource.adqualitysdk.sdk.i.iy$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$e;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->h(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->a(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ij;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->d(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$a;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    :cond_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_53

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$b;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->e(Lcom/ironsource/adqualitysdk/sdk/i/iy;Landroid/view/Choreographer$FrameCallback;)Landroid/view/Choreographer$FrameCallback;

    :cond_45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_53
    const-wide/16 v0, 0x32

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V

    return-void

    :cond_59
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->e(Lcom/ironsource/adqualitysdk/sdk/i/iy;Landroid/view/Choreographer$FrameCallback;)Landroid/view/Choreographer$FrameCallback;

    return-void
.end method
