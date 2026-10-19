###### Class com.kidoz.sdk.api.general.cache.CustomAsyncExecutor (com.kidoz.sdk.api.general.cache.CustomAsyncExecutor)
.class public abstract Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;
.super Ljava/lang/Object;
.source "CustomAsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private currentThreadRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private input:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private looper:Landroid/os/Looper;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;

.field private workerThreadRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->input:Ljava/lang/Object;

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->result:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->result:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->input:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->currentThreadRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private init()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->looper:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->looper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$1;-><init>(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->currentThreadRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor$2;-><init>(Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->workerThreadRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->workerThreadRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 2

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->init()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->input:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->execute()V

    return-void
.end method

.method public abstract executeAsync(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation
.end method

.method public abstract postExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

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
