###### Class com.google.common.util.concurrent.Futures.f (com.google.common.util.concurrent.Futures$f)
.class final Lcom/google/common/util/concurrent/Futures$f;
.super Lcom/google/common/util/concurrent/m;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private h:Lcom/google/common/util/concurrent/Futures$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/Futures$g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Futures$g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/util/concurrent/Futures$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$f;-><init>(Lcom/google/common/util/concurrent/Futures$g;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/m;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/Futures$g;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures$g;->b(Lcom/google/common/util/concurrent/Futures$g;Z)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected m()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    return-void
.end method

.method protected y()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$f;->h:Lcom/google/common/util/concurrent/Futures$g;

    if-eqz v0, :cond_32

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$g;->c(Lcom/google/common/util/concurrent/Futures$g;)[Lcom/google/common/util/concurrent/h0;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$g;->d(Lcom/google/common/util/concurrent/Futures$g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "inputCount=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], remaining=["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method
