###### Class com.mbridge.msdk.foundation.tools.q.AnonymousClass1 (com.mbridge.msdk.foundation.tools.q$1)
.class final Lcom/mbridge/msdk/foundation/tools/q$1;
.super Ljava/lang/Object;
.source "MIMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/tools/q;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mbridge/msdk/foundation/tools/q;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/tools/q;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->b:Lcom/mbridge/msdk/foundation/tools/q;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "MIMManager"

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->b:Lcom/mbridge/msdk/foundation/tools/q;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/q;->a(Lcom/mbridge/msdk/foundation/tools/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_79

    :try_start_10
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->b:Lcom/mbridge/msdk/foundation/tools/q;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/q;->b(Lcom/mbridge/msdk/foundation/tools/q;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/q;->a(Lcom/mbridge/msdk/foundation/tools/q;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->b:Lcom/mbridge/msdk/foundation/tools/q;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/q;->c(Lcom/mbridge/msdk/foundation/tools/q;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->b:Lcom/mbridge/msdk/foundation/tools/q;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/q;->c(Lcom/mbridge/msdk/foundation/tools/q;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->a:Landroid/content/Context;

    if-eqz v1, :cond_79

    :try_start_3a
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->b:Lcom/mbridge/msdk/foundation/tools/q;

    new-instance v2, Lcom/mbridge/msdk/foundation/tools/q$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mbridge/msdk/foundation/tools/q$b;-><init>(Lcom/mbridge/msdk/foundation/tools/q$1;)V

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/q;->a(Lcom/mbridge/msdk/foundation/tools/q;Lcom/mbridge/msdk/foundation/tools/q$b;)Lcom/mbridge/msdk/foundation/tools/q$b;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/tools/q$1;->b:Lcom/mbridge/msdk/foundation/tools/q;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/q;->d(Lcom/mbridge/msdk/foundation/tools/q;)Lcom/mbridge/msdk/foundation/tools/q$b;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_70} :catch_71

    goto :goto_79

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    :goto_79
    return-void
.end method
