###### Class com.google.android.datatransport.runtime.backends.g (com.google.android.datatransport.runtime.backends.g)
.class Lcom/google/android/datatransport/runtime/backends/g;
.super Ljava/lang/Object;
.source "MetadataBackendRegistry.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/backends/g$a;

.field private final b:Lcom/google/android/datatransport/runtime/backends/f;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/runtime/backends/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/f;)V
    .registers 4

    new-instance v0, Lcom/google/android/datatransport/runtime/backends/g$a;

    invoke-direct {v0, p1}, Lcom/google/android/datatransport/runtime/backends/g$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/datatransport/runtime/backends/g;-><init>(Lcom/google/android/datatransport/runtime/backends/g$a;Lcom/google/android/datatransport/runtime/backends/f;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/backends/g$a;Lcom/google/android/datatransport/runtime/backends/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/backends/g;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/g;->a:Lcom/google/android/datatransport/runtime/backends/g$a;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/g;->b:Lcom/google/android/datatransport/runtime/backends/f;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/h;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/runtime/backends/h;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2f

    monitor-exit p0

    return-object p1

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/g;->a:Lcom/google/android/datatransport/runtime/backends/g$a;

    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/backends/g$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/d;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2f

    if-nez v0, :cond_1e

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/g;->b:Lcom/google/android/datatransport/runtime/backends/f;

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/backends/f;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/CreationContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/d;->create(Lcom/google/android/datatransport/runtime/backends/CreationContext;)Lcom/google/android/datatransport/runtime/backends/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/g;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
