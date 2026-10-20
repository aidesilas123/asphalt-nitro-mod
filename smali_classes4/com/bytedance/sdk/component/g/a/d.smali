###### Class com.bytedance.sdk.component.g.a.d (com.bytedance.sdk.component.g.a.d)
.class public Lcom/bytedance/sdk/component/g/a/d;
.super Ljava/lang/Object;
.source "RecyclePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/component/g/a/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a/d;->b:Ljava/util/concurrent/BlockingQueue;

    iput p1, p0, Lcom/bytedance/sdk/component/g/a/d;->a:I

    return-void
.end method

.method public static a(I)Lcom/bytedance/sdk/component/g/a/d;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/component/g/a/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/g/a/d;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/g/a/c;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/g/a/c;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-interface {p1}, Lcom/bytedance/sdk/component/g/a/c;->a()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/g/a/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/component/g/a/d;->a:I

    if-lt v1, v2, :cond_12

    return v0

    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
