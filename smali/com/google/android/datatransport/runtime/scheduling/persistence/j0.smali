###### Class com.google.android.datatransport.runtime.scheduling.persistence.j0 (com.google.android.datatransport.runtime.scheduling.persistence.j0)
.class public interface abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;
.super Ljava/lang/Object;
.source "EventStore.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# virtual methods
.method public abstract A(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract B(Lcom/google/android/datatransport/runtime/TransportContext;J)V
.end method

.method public abstract C()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ">;"
        }
    .end annotation
.end method

.method public abstract E(Lcom/google/android/datatransport/runtime/TransportContext;)J
.end method

.method public abstract F(Lcom/google/android/datatransport/runtime/TransportContext;)Z
.end method

.method public abstract G(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract H(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract O(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract z()I
.end method
