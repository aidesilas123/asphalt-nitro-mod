###### Class com.kidoz.sdk.api.general.cache.CustomAsyncExecutor.AnonymousClass1 (com.kidoz.sdk.api.general.cache.CustomAsyncExecutor$1)
.class Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$1;
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$1;->this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$1;->this$0:Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->access$000(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->postExecute(Ljava/lang/Object;)V

    return-void
.end method
