###### Class com.fyber.inneractive.sdk.player.d.a (com.fyber.inneractive.sdk.player.d$a)
.class public Lcom/fyber/inneractive/sdk/player/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/d;-><init>(Lcom/fyber/inneractive/sdk/player/controller/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/d;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/d;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/d$a;->a:Lcom/fyber/inneractive/sdk/player/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/d$a;->a:Lcom/fyber/inneractive/sdk/player/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "player progress monitor: run started"

    invoke-static {v3, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/d;->a:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/controller/g;->c()I

    move-result v2

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/d;->d:Z

    if-nez v3, :cond_34

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v6, "run: 2 seconds passed? played for %d since last play started"

    invoke-static {v6, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x7d0

    if-lt v5, v4, :cond_34

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "run: setting played 2 seconds flag"

    invoke-static {v4, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/d;->d:Z

    :cond_34
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/d;->a:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(I)V

    return-void
.end method
