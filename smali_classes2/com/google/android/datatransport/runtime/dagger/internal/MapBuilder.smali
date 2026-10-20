###### Class com.google.android.datatransport.runtime.dagger.internal.MapBuilder (com.google.android.datatransport.runtime.dagger.internal.MapBuilder)
.class public final Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;->a:Ljava/util/Map;

    return-void
.end method

.method public static newMapBuilder(I)Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/MapBuilder;-><init>(I)V

    return-object v0
.end method
