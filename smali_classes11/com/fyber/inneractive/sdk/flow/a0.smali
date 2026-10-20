###### Class com.fyber.inneractive.sdk.flow.a0 (com.fyber.inneractive.sdk.flow.a0)
.class public Lcom/fyber/inneractive/sdk/flow/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/util/u0$b;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/flow/z;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/flow/z;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/a0;->a:Lcom/fyber/inneractive/sdk/flow/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/util/u0;)V
    .registers 4

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/flow/a0;->a:Lcom/fyber/inneractive/sdk/flow/z;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/z;->o:Ljava/lang/Runnable;

    if-eqz p1, :cond_b

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/flow/a0;->a:Lcom/fyber/inneractive/sdk/flow/z;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/flow/z;->p:Lcom/fyber/inneractive/sdk/util/u0;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/util/u0;->e:Lcom/fyber/inneractive/sdk/util/u0$b;

    iput-object v1, p1, Lcom/fyber/inneractive/sdk/flow/z;->p:Lcom/fyber/inneractive/sdk/util/u0;

    :cond_16
    return-void
.end method
