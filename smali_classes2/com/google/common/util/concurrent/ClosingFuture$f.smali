###### Class com.google.common.util.concurrent.ClosingFuture.f (com.google.common.util.concurrent.ClosingFuture$f)
.class Lcom/google/common/util/concurrent/ClosingFuture$f;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ClosingFuture$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;->withoutCloser(Lcom/google/common/util/concurrent/s;)Lcom/google/common/util/concurrent/ClosingFuture$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ClosingFuture$i<",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/s;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$f;->a:Lcom/google/common/util/concurrent/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
