###### Class com.google.android.datatransport.runtime.n (com.google.android.datatransport.runtime.n)
.class abstract Lcom/google/android/datatransport/runtime/n;
.super Ljava/lang/Object;
.source "TransportRuntimeComponent.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/n$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/n;->d()Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method abstract d()Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;
.end method

.method abstract e()Lcom/google/android/datatransport/runtime/TransportRuntime;
.end method
