###### Class com.google.common.util.concurrent.internal.InternalFutures (com.google.common.util.concurrent.internal.InternalFutures)
.class public final Lcom/google/common/util/concurrent/internal/InternalFutures;
.super Ljava/lang/Object;
.source "InternalFutures.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/a;)Ljava/lang/Throwable;
    .registers 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/internal/a;->a()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
