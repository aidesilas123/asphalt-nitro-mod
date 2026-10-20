###### Class com.fyber.inneractive.sdk.player.cache.h.b (com.fyber.inneractive.sdk.player.cache.h$b)
.class public Lcom/fyber/inneractive/sdk/player/cache/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/cache/h;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/cache/h;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/h;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->b:Lcom/fyber/inneractive/sdk/player/cache/h;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->b:Lcom/fyber/inneractive/sdk/player/cache/h;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->g:Lcom/fyber/inneractive/sdk/player/cache/h$i;

    if-eqz v1, :cond_f

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/cache/h;->f:Lcom/fyber/inneractive/sdk/player/cache/a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/cache/h$b;->a:Ljava/lang/Exception;

    check-cast v1, Lcom/fyber/inneractive/sdk/player/cache/d$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/cache/d$a;->a(Lcom/fyber/inneractive/sdk/player/cache/h;Lcom/fyber/inneractive/sdk/player/cache/a;Ljava/lang/Exception;)V

    :cond_f
    return-void
.end method
