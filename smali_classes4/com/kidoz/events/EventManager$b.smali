###### Class com.kidoz.events.EventManager.b (com.kidoz.events.EventManager$b)
.class Lcom/kidoz/events/EventManager$b;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/events/EventManager;->p(Landroid/content/Context;Lcom/kidoz/events/EventBulk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/kidoz/events/EventBulk;

.field final synthetic c:Lcom/kidoz/events/EventManager;


# direct methods
.method constructor <init>(Lcom/kidoz/events/EventManager;Landroid/content/Context;Lcom/kidoz/events/EventBulk;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/events/EventManager$b;->c:Lcom/kidoz/events/EventManager;

    iput-object p2, p0, Lcom/kidoz/events/EventManager$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/kidoz/events/EventManager$b;->b:Lcom/kidoz/events/EventBulk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "Failed server syncing event."

    new-instance v1, Lcom/kidoz/events/b;

    iget-object v2, p0, Lcom/kidoz/events/EventManager$b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kidoz/events/b;-><init>(Landroid/content/Context;)V

    :try_start_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-ge v2, v3, :cond_16

    new-array v2, v4, [Lcom/kidoz/events/EventBulk;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e

    :cond_16
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kidoz/events/EventBulk;

    iget-object v5, p0, Lcom/kidoz/events/EventManager$b;->b:Lcom/kidoz/events/EventBulk;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_22
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_9 .. :try_end_22} :catch_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_22} :catch_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    goto :goto_2e

    :catch_23
    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    goto :goto_2e

    :catch_27
    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    goto :goto_2e

    :catch_2b
    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method
