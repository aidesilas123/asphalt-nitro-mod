###### Class com.fyber.inneractive.sdk.player.controller.n.e.a (com.fyber.inneractive.sdk.player.controller.n$e$a)
.class public Lcom/fyber/inneractive/sdk/player/controller/n$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/controller/n$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/controller/n$e;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/n$e;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e$a;->b:Lcom/fyber/inneractive/sdk/player/controller/n$e;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e$a;->b:Lcom/fyber/inneractive/sdk/player/controller/n$e;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/n$e;->b:Lcom/fyber/inneractive/sdk/player/controller/n$f;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n$e$a;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/n$f;->a(Landroid/graphics/Bitmap;)V

    :cond_b
    return-void
.end method
