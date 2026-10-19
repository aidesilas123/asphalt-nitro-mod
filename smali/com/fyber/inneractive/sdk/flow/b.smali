###### Class com.fyber.inneractive.sdk.flow.b (com.fyber.inneractive.sdk.flow.b)
.class public Lcom/fyber/inneractive/sdk/flow/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;

.field public final b:Lcom/fyber/inneractive/sdk/interfaces/a$b;

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/interfaces/a$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/flow/b$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/flow/b$a;-><init>(Lcom/fyber/inneractive/sdk/flow/b;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/fyber/inneractive/sdk/flow/b$b;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/flow/b$b;-><init>(Lcom/fyber/inneractive/sdk/flow/b;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/b;->b:Lcom/fyber/inneractive/sdk/interfaces/a$b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s : ContentLoadTimeoutHandler destroying timeout handler"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/b;->b()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_26

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_2f

    :cond_26
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b;->a:Landroid/os/Handler;

    :cond_32
    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s : ContentLoadTimeoutHandler stopping timeout handler"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method

###### Class com.fyber.inneractive.sdk.flow.b.a (com.fyber.inneractive.sdk.flow.b$a)
.class public Lcom/fyber/inneractive/sdk/flow/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/flow/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/flow/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/flow/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/b$a;->a:Lcom/fyber/inneractive/sdk/flow/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/b$a;->a:Lcom/fyber/inneractive/sdk/flow/b;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s : ContentLoadTimeoutHandler Executing timeout task"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/b$a;->a:Lcom/fyber/inneractive/sdk/flow/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/b;->b:Lcom/fyber/inneractive/sdk/interfaces/a$b;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/interfaces/a$b;->b()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.flow.b.RunnableC0160b (com.fyber.inneractive.sdk.flow.b$b)
.class public Lcom/fyber/inneractive/sdk/flow/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/flow/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/flow/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/flow/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/b$b;->a:Lcom/fyber/inneractive/sdk/flow/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/b$b;->a:Lcom/fyber/inneractive/sdk/flow/b;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
