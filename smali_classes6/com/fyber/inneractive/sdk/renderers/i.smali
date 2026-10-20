###### Class com.fyber.inneractive.sdk.renderers.i (com.fyber.inneractive.sdk.renderers.i)
.class public Lcom/fyber/inneractive/sdk/renderers/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/renderers/h;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/renderers/h;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/i;->a:Lcom/fyber/inneractive/sdk/renderers/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/i;->a:Lcom/fyber/inneractive/sdk/renderers/h;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/renderers/h;->u:Ljava/lang/Runnable;

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/renderers/h;->a(Lcom/fyber/inneractive/sdk/renderers/h;Z)Z

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/renderers/i;->a:Lcom/fyber/inneractive/sdk/renderers/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%sIdle state reached!"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/i;->a:Lcom/fyber/inneractive/sdk/renderers/h;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/renderers/h;->n:Lcom/fyber/inneractive/sdk/player/controller/t;

    if-eqz v0, :cond_26

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/t;->b(Z)V

    :cond_26
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/i;->a:Lcom/fyber/inneractive/sdk/renderers/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/renderers/h;->u:Ljava/lang/Runnable;

    :cond_2b
    return-void
.end method
