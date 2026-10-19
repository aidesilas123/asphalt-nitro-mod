###### Class com.fyber.inneractive.sdk.config.n (com.fyber.inneractive.sdk.config.n)
.class public Lcom/fyber/inneractive/sdk/config/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/IAConfigManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/n;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/config/n;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    const-string v0, "com.iab.omid.library.fyber.Omid"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/n$a;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/config/n$a;-><init>(Lcom/fyber/inneractive/sdk/config/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method

###### Class com.fyber.inneractive.sdk.config.n.a (com.fyber.inneractive.sdk.config.n$a)
.class public Lcom/fyber/inneractive/sdk/config/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/config/n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/config/n;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/n;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/n$a;->a:Lcom/fyber/inneractive/sdk/config/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/n$a;->a:Lcom/fyber/inneractive/sdk/config/n;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/n;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    new-instance v1, Lcom/fyber/inneractive/sdk/measurement/b;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/measurement/b;-><init>()V

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->J:Lcom/fyber/inneractive/sdk/measurement/a;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/n$a;->a:Lcom/fyber/inneractive/sdk/config/n;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/config/n;->a:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->J:Lcom/fyber/inneractive/sdk/measurement/a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/n;->b:Landroid/content/Context;

    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/measurement/a;->a:Z

    if-nez v2, :cond_26

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fyber/inneractive/sdk/measurement/a;->a:Z

    check-cast v1, Lcom/fyber/inneractive/sdk/measurement/b;

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v3, Lcom/fyber/inneractive/sdk/measurement/c;

    invoke-direct {v3, v1, v0}, Lcom/fyber/inneractive/sdk/measurement/c;-><init>(Lcom/fyber/inneractive/sdk/measurement/b;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void
.end method
