###### Class com.fyber.inneractive.sdk.player.controller.n.e (com.fyber.inneractive.sdk.player.controller.n$e)
.class public Lcom/fyber/inneractive/sdk/player/controller/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/controller/n$f;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/player/controller/n;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/n;ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e;->c:Lcom/fyber/inneractive/sdk/player/controller/n;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e;->a:Z

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e;->b:Lcom/fyber/inneractive/sdk/player/controller/n$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e;->c:Lcom/fyber/inneractive/sdk/player/controller/n;

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e;->a:Z

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_a9

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v2, :cond_a9

    iget-object v4, v2, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-nez v4, :cond_13

    goto/16 :goto_a9

    :cond_13
    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->o:Z

    if-eqz v5, :cond_1b

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/c;->k:Landroid/graphics/Bitmap;

    goto/16 :goto_a9

    :cond_1b
    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v7, 0x2

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/view/TextureView;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_34

    const/4 v6, 0x1

    :cond_34
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v6, "%sSave snapshot entered: tv = %s avail = %s"

    invoke-static {v6, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Landroid/view/TextureView;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_a9

    :try_start_47
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/ui/l;->getVideoWidth()I

    move-result v4

    if-lez v4, :cond_6e

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/ui/l;->getVideoHeight()I

    move-result v4

    if-lez v4, :cond_6e

    iput-object v3, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/ui/l;->getVideoWidth()I

    move-result v4

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/ui/l;->getVideoHeight()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(II)V

    :cond_6e
    if-eqz v1, :cond_99

    new-instance v1, Lcom/fyber/inneractive/sdk/util/c;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/util/c;-><init>()V

    const/16 v4, 0x14

    iput v4, v1, Lcom/fyber/inneractive/sdk/util/c;->c:I

    iput v5, v1, Lcom/fyber/inneractive/sdk/util/c;->d:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v1, Lcom/fyber/inneractive/sdk/util/c;->a:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v1, Lcom/fyber/inneractive/sdk/util/c;->b:I

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v1}, Lcom/fyber/inneractive/sdk/util/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/fyber/inneractive/sdk/util/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/fyber/inneractive/sdk/player/c;->a(Landroid/graphics/Bitmap;)V

    iput-boolean v5, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->o:Z

    goto :goto_9e

    :cond_99
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/c;->a(Landroid/graphics/Bitmap;)V

    :goto_9e
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/c;->k:Landroid/graphics/Bitmap;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_a5} :catch_a6

    goto :goto_a9

    :catch_a6
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    :cond_a9
    :goto_a9
    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/controller/n$e$a;

    invoke-direct {v1, p0, v3}, Lcom/fyber/inneractive/sdk/player/controller/n$e$a;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n$e;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
