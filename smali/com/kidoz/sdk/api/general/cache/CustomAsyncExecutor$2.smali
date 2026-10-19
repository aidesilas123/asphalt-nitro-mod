###### Class com.kidoz.sdk.api.general.cache.CustomAsyncExecutor.AnonymousClass2 (com.kidoz.sdk.api.general.cache.CustomAsyncExecutor$2)
.class Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;
.super Ljava/lang/Object;
.source "CustomAsyncExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;->this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;->this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->access$100(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->executeAsync(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->access$002(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;->this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->access$200(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;->this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->access$200(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;->this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->access$300(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method
