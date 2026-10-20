###### Class com.google.android.datatransport.runtime.dagger.internal.MapProviderFactory (com.google.android.datatransport.runtime.dagger.internal.MapProviderFactory)
.class public final Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory;
.super Lcom/google/android/datatransport/runtime/dagger/internal/a;
.source "MapProviderFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/o/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/datatransport/runtime/dagger/internal/a<",
        "TK;TV;",
        "Le/a/a<",
        "TV;>;>;",
        "Lcom/google/android/datatransport/runtime/o/a<",
        "Ljava/util/Map<",
        "TK;",
        "Le/a/a<",
        "TV;>;>;>;"
    }
.end annotation


# direct methods
.method public static builder(I)Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$b;-><init>(ILcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Le/a/a<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
