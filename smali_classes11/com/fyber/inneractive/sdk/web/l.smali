###### Class com.fyber.inneractive.sdk.web.l (com.fyber.inneractive.sdk.web.l)
.class public Lcom/fyber/inneractive/sdk/web/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/l;->a:Lcom/fyber/inneractive/sdk/web/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/l;->a:Lcom/fyber/inneractive/sdk/web/i;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/i;->V:Lcom/fyber/inneractive/sdk/web/i$i;

    if-eqz v1, :cond_32

    const-string v1, "%sunregistering orientation broadcast receiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/l;->a:Lcom/fyber/inneractive/sdk/web/i;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/i;->V:Lcom/fyber/inneractive/sdk/web/i$i;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/i$i;->a()V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_32

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_32

    :cond_31
    throw v0

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/l;->a:Lcom/fyber/inneractive/sdk/web/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/web/i;->V:Lcom/fyber/inneractive/sdk/web/i$i;

    return-void
.end method
