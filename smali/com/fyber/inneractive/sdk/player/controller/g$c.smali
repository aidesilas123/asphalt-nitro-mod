###### Class com.fyber.inneractive.sdk.player.controller.g.c (com.fyber.inneractive.sdk.player.controller.g$c)
.class public Lcom/fyber/inneractive/sdk/player/controller/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/enums/b;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/controller/g;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/g;Lcom/fyber/inneractive/sdk/player/enums/b;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->a:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/player/controller/g$f;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->a:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-interface {v2, v3}, Lcom/fyber/inneractive/sdk/player/controller/g$f;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_51
    .catchall {:try_start_1 .. :try_end_1a} :catchall_4f

    goto :goto_9

    :cond_1b
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->a:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Idle:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v1, v2, :cond_29

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Error:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v1, v2, :cond_29

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne v1, v2, :cond_a0

    :cond_29
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_4a

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4a
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    goto :goto_9e

    :catchall_4f
    move-exception v1

    goto :goto_a1

    :catch_51
    move-exception v1

    :try_start_52
    sget v2, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_6b

    const-string v2, "%sonPlayerStateChanged callback threw an exception!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v1, v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_52 .. :try_end_6b} :catchall_4f

    :cond_6b
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->a:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Idle:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v1, v2, :cond_79

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Error:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v1, v2, :cond_79

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne v1, v2, :cond_a0

    :cond_79
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_9a

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9a
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    :goto_9e
    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    :cond_a0
    return-void

    :goto_a1
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->a:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v3, Lcom/fyber/inneractive/sdk/player/enums/b;->Idle:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v2, v3, :cond_af

    sget-object v3, Lcom/fyber/inneractive/sdk/player/enums/b;->Error:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v2, v3, :cond_af

    sget-object v3, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne v2, v3, :cond_d6

    :cond_af
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_d0

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_d0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d0
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/g$c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iput-object v0, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    iput-object v0, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    :cond_d6
    throw v1
.end method
