###### Class com.fyber.inneractive.sdk.player.d (com.fyber.inneractive.sdk.player.d)
.class public Lcom/fyber/inneractive/sdk/player/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/player/controller/g;

.field public b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public c:Ljava/lang/Runnable;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/d;->d:Z

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/d;->a:Lcom/fyber/inneractive/sdk/player/controller/g;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/d$a;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/player/d$a;-><init>(Lcom/fyber/inneractive/sdk/player/d;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/d;->c:Ljava/lang/Runnable;

    return-void
.end method
