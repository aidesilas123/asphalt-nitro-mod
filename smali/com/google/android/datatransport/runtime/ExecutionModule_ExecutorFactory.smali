###### Class com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory (com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory)
.class public final Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
    .registers 1

    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$a;->a()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method public static executor()Ljava/util/concurrent/Executor;
    .registers 2

    invoke-static {}, Lcom/google/android/datatransport/runtime/i;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .registers 2

    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory.a (com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory$a)
.class final Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$a;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$a;->a:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    return-void
.end method

.method static synthetic a()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
    .registers 1

    sget-object v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$a;->a:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    return-object v0
.end method
