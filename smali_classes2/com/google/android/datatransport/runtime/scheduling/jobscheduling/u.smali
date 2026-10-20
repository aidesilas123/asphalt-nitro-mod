###### Class com.google.android.datatransport.runtime.scheduling.jobscheduling.u (com.google.android.datatransport.runtime.scheduling.jobscheduling.u)
.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;
.super Ljava/lang/Object;
.source "WorkInitializer.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;

.field private final c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;

.field private final d:Lcom/google/android/datatransport/runtime/p/b;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;Lcom/google/android/datatransport/runtime/p/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->d:Lcom/google/android/datatransport/runtime/p/b;

    return-void
.end method

.method private synthetic b()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;->C()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->a(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic d()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->d:Lcom/google/android/datatransport/runtime/p/b;

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;)V

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/p/b;->a(Lcom/google/android/datatransport/runtime/p/b$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;

    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic e()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;->d()V

    return-void
.end method
