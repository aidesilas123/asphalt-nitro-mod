###### Class com.google.android.datatransport.runtime.i (com.google.android.datatransport.runtime.i)
.class abstract Lcom/google/android/datatransport/runtime/i;
.super Ljava/lang/Object;
.source "ExecutionModule.java"


# direct methods
.method static a()Ljava/util/concurrent/Executor;
    .registers 2

    new-instance v0, Lcom/google/android/datatransport/runtime/j;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/j;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
