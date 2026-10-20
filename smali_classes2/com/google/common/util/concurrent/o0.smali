###### Class com.google.common.util.concurrent.o0 (com.google.common.util.concurrent.o0)
.class final Lcom/google/common/util/concurrent/o0;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method static a(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
