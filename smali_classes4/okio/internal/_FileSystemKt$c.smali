###### Class okio.internal._FileSystemKt.c (okio.internal._FileSystemKt$c)
.class final Lokio/internal/_FileSystemKt$c;
.super Lkotlin/coroutines/jvm/internal/h;
.source "-FileSystem.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/_FileSystemKt;->commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/h;",
        "Lkotlin/jvm/b/p<",
        "Lkotlin/sequences/h<",
        "-",
        "Lokio/Path;",
        ">;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "okio.internal._FileSystemKt$commonListRecursively$1"
    f = "-FileSystem.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x5d
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "stack"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field final synthetic e:Lokio/Path;

.field final synthetic f:Lokio/FileSystem;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lokio/Path;Lokio/FileSystem;ZLkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Lokio/internal/_FileSystemKt$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    iput-object p2, p0, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iput-boolean p3, p0, Lokio/internal/_FileSystemKt$c;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/h;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lokio/internal/_FileSystemKt$c;

    iget-object v1, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    iget-object v2, p0, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iget-boolean v3, p0, Lokio/internal/_FileSystemKt$c;->g:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lokio/internal/_FileSystemKt$c;-><init>(Lokio/Path;Lokio/FileSystem;ZLkotlin/coroutines/d;)V

    iput-object p1, v0, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$c;->invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/h<",
            "-",
            "Lokio/Path;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lokio/internal/_FileSystemKt$c;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lokio/internal/_FileSystemKt$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lokio/internal/_FileSystemKt$c;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lokio/internal/_FileSystemKt$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lokio/internal/_FileSystemKt$c;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/j;

    iget-object v4, p0, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/h;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p0

    move-object p1, v3

    move-object v10, v4

    goto :goto_47

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/h;

    new-instance v1, Lkotlin/collections/j;

    invoke-direct {v1}, Lkotlin/collections/j;-><init>()V

    iget-object v3, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    invoke-virtual {v1, v3}, Lkotlin/collections/j;->addLast(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iget-object v4, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    invoke-virtual {v3, v4}, Lokio/FileSystem;->h(Lokio/Path;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v11, p0

    move-object v10, p1

    move-object p1, v1

    move-object v1, v3

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lokio/Path;

    iget-object v4, v11, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iget-boolean v7, v11, Lokio/internal/_FileSystemKt$c;->g:Z

    const/4 v8, 0x0

    iput-object v10, v11, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    iput-object p1, v11, Lokio/internal/_FileSystemKt$c;->a:Ljava/lang/Object;

    iput-object v1, v11, Lokio/internal/_FileSystemKt$c;->b:Ljava/lang/Object;

    iput v2, v11, Lokio/internal/_FileSystemKt$c;->c:I

    move-object v3, v10

    move-object v5, p1

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/h;Lokio/FileSystem;Lkotlin/collections/j;Lokio/Path;ZZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_47

    return-object v0

    :cond_6b
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
