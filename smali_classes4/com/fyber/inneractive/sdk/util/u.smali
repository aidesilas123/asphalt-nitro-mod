###### Class com.fyber.inneractive.sdk.util.u (com.fyber.inneractive.sdk.util.u)
.class public Lcom/fyber/inneractive/sdk/util/u;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/util/v;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/v;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/u;->a:Lcom/fyber/inneractive/sdk/util/v;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string v0, "%sonReceive. action = %s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/util/u;->a:Lcom/fyber/inneractive/sdk/util/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/u;->a:Lcom/fyber/inneractive/sdk/util/v;

    monitor-enter v0

    :try_start_1e
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_a0

    :try_start_26
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2b
    .catchall {:try_start_26 .. :try_end_2a} :catchall_a0

    goto :goto_39

    :catch_2b
    :try_start_2b
    const-string p1, "%sFailed to get lock screen status"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iput-boolean v5, v0, Lcom/fyber/inneractive/sdk/util/v;->b:Z

    goto :goto_64

    :cond_48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    if-eqz p1, :cond_62

    :cond_56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    :cond_62
    iput-boolean v4, v0, Lcom/fyber/inneractive/sdk/util/v;->b:Z

    :cond_64
    :goto_64
    const-string p1, "%sNew screen state is locked: %s. number of listeners: %d"

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v4

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/util/v;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p2, v5

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/util/v;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/util/v;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/util/v$b;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/util/v;->b:Z

    invoke-interface {p2, v1}, Lcom/fyber/inneractive/sdk/util/v$b;->c(Z)V
    :try_end_9d
    .catchall {:try_start_2b .. :try_end_9d} :catchall_a0

    goto :goto_8c

    :cond_9e
    monitor-exit v0

    return-void

    :catchall_a0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
