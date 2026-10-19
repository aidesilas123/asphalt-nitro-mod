###### Class com.google.android.datatransport.runtime.dagger.internal.SetBuilder (com.google.android.datatransport.runtime.dagger.internal.SetBuilder)
.class public final Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;
.super Ljava/lang/Object;
.source "SetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;->a:Ljava/util/List;

    return-void
.end method

.method public static newSetBuilder(I)Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;-><init>(I)V

    return-object v0
.end method
