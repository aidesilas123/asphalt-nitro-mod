###### Class com.google.android.datatransport.runtime.scheduling.persistence.l0 (com.google.android.datatransport.runtime.scheduling.persistence.l0)
.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/l0;
.super Ljava/lang/Object;
.source "EventStoreModule.java"


# direct methods
.method static a()Ljava/lang/String;
    .registers 1

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c()I
    .registers 1

    sget v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/n0;->b:I

    return v0
.end method

.method static d()Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;
    .registers 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;

    return-object v0
.end method
