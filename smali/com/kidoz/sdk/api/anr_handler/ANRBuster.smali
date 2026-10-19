###### Class com.kidoz.sdk.api.anr_handler.ANRBuster (com.kidoz.sdk.api.anr_handler.ANRBuster)
.class public abstract Lcom/kidoz/sdk/api/anr_handler/ANRBuster;
.super Ljava/lang/Object;
.source "ANRBuster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private ANR_TIMEOUT:I

.field private TIMEOUT_MARGIN:I

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->ANR_TIMEOUT:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->TIMEOUT_MARGIN:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster$1;-><init>(Lcom/kidoz/sdk/api/anr_handler/ANRBuster;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->mCallable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic access$002(Lcom/kidoz/sdk/api/anr_handler/ANRBuster;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/anr_handler/ANRBuster;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->mParam:Ljava/lang/Object;

    return-object p0
.end method

.method private execute()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->mCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget v1, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->ANR_TIMEOUT:I

    iget v2, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->TIMEOUT_MARGIN:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->onSuccess()V
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_16} :catch_20
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_24

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    :catch_1c
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->onANRDetected()V

    goto :goto_24

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_24
    return-void
.end method


# virtual methods
.method public abstract onANRDetected()V
.end method

.method public abstract onStart(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public abstract onSuccess()V
.end method

.method public start()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->execute()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public start(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->mParam:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->execute()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->mResult:Ljava/lang/Object;

    return-object p1
.end method

###### Class com.kidoz.sdk.api.anr_handler.ANRBuster.AnonymousClass1 (com.kidoz.sdk.api.anr_handler.ANRBuster$1)
.class Lcom/kidoz/sdk/api/anr_handler/ANRBuster$1;
.super Ljava/lang/Object;
.source "ANRBuster.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/anr_handler/ANRBuster;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/anr_handler/ANRBuster;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/anr_handler/ANRBuster;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster$1;->this$0:Lcom/kidoz/sdk/api/anr_handler/ANRBuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/anr_handler/ANRBuster$1;->this$0:Lcom/kidoz/sdk/api/anr_handler/ANRBuster;

    invoke-static {v0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->access$100(Lcom/kidoz/sdk/api/anr_handler/ANRBuster;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->onStart(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;->access$002(Lcom/kidoz/sdk/api/anr_handler/ANRBuster;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
