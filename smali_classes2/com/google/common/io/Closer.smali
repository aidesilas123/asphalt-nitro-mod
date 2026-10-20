###### Class com.google.common.io.Closer (com.google.common.io.Closer)
.class public final Lcom/google/common/io/Closer;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/Closer$b;,
        Lcom/google/common/io/Closer$a;,
        Lcom/google/common/io/Closer$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/io/Closer$c;


# instance fields
.field final b:Lcom/google/common/io/Closer$c;

.field private final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/common/io/Closer$b;->b()Lcom/google/common/io/Closer$b;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/google/common/io/Closer$a;->a:Lcom/google/common/io/Closer$a;

    :cond_8
    sput-object v0, Lcom/google/common/io/Closer;->a:Lcom/google/common/io/Closer$c;

    return-void
.end method

.method constructor <init>(Lcom/google/common/io/Closer$c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/io/Closer;->c:Ljava/util/Deque;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/Closer$c;

    iput-object p1, p0, Lcom/google/common/io/Closer;->b:Lcom/google/common/io/Closer$c;

    return-void
.end method

.method public static create()Lcom/google/common/io/Closer;
    .registers 2

    new-instance v0, Lcom/google/common/io/Closer;

    sget-object v1, Lcom/google/common/io/Closer;->a:Lcom/google/common/io/Closer$c;

    invoke-direct {v0, v1}, Lcom/google/common/io/Closer;-><init>(Lcom/google/common/io/Closer$c;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/io/Closeable;",
            ">(TC;)TC;"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/common/io/Closer;->c:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_7
    return-object p1
.end method

.method public b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/io/Closer;->d:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/Closer;->d:Ljava/lang/Throwable;

    :goto_2
    iget-object v1, p0, Lcom/google/common/io/Closer;->c:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/common/io/Closer;->c:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_12
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_2

    :catchall_16
    move-exception v2

    if-nez v0, :cond_1b

    move-object v0, v2

    goto :goto_2

    :cond_1b
    iget-object v3, p0, Lcom/google/common/io/Closer;->b:Lcom/google/common/io/Closer$c;

    invoke-interface {v3, v1, v0, v2}, Lcom/google/common/io/Closer$c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_21
    iget-object v1, p0, Lcom/google/common/io/Closer;->d:Ljava/lang/Throwable;

    if-nez v1, :cond_33

    if-nez v0, :cond_28

    goto :goto_33

    :cond_28
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_33
    :goto_33
    return-void
.end method
