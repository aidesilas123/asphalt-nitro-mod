###### Class com.bytedance.sdk.component.g.g (com.bytedance.sdk.component.g.g)
.class public Lcom/bytedance/sdk/component/g/g;
.super Ljava/util/concurrent/FutureTask;
.source "TTFutureTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/component/g/g<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-eq p3, p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p3, 0x5

    :goto_8
    iput p3, p0, Lcom/bytedance/sdk/component/g/g;->a:I

    iput p4, p0, Lcom/bytedance/sdk/component/g/g;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p2, 0x5

    :goto_8
    iput p2, p0, Lcom/bytedance/sdk/component/g/g;->a:I

    iput p3, p0, Lcom/bytedance/sdk/component/g/g;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/g/g;->a:I

    return v0
.end method

.method public a(Lcom/bytedance/sdk/component/g/g;)I
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/g/g;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/g/g;->a()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/g/g;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/g/g;->a()I

    move-result p1

    if-le v0, p1, :cond_18

    const/4 p1, -0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/bytedance/sdk/component/g/g;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/g/g;->a(Lcom/bytedance/sdk/component/g/g;)I

    move-result p1

    return p1
.end method
