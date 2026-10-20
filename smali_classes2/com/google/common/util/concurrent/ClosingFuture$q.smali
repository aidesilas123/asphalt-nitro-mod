###### Class com.google.common.util.concurrent.ClosingFuture.q (com.google.common.util.concurrent.ClosingFuture$q)
.class public final Lcom/google/common/util/concurrent/ClosingFuture$q;
.super Ljava/lang/Object;
.source "ClosingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/ClosingFuture$j;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$q;->a:Lcom/google/common/util/concurrent/ClosingFuture$j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/io/Closeable;",
            ">(TC;",
            "Ljava/util/concurrent/Executor;",
            ")TC;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$q;->a:Lcom/google/common/util/concurrent/ClosingFuture$j;

    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    invoke-virtual {v0, v1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$j;->d(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    :cond_d
    return-object p1
.end method
