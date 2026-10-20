###### Class com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent (com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent)
.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
.super Ljava/lang/Object;
.source "PersistedEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    .registers 5

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/h0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/h0;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/runtime/EventInternal;
.end method

.method public abstract b()J
.end method

.method public abstract c()Lcom/google/android/datatransport/runtime/TransportContext;
.end method
