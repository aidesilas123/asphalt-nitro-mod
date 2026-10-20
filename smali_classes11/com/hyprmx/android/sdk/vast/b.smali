###### Class com.hyprmx.android.sdk.vast.b (com.hyprmx.android.sdk.vast.b)
.class public final Lcom/hyprmx/android/sdk/vast/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/tracking/a;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/network/k;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/model/vast/a;Lcom/hyprmx/android/sdk/network/k;)V
    .registers 4

    const-string v0, "hyprVastAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/vast/b;->a:Lcom/hyprmx/android/sdk/network/k;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/model/vast/a;->f()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/hyprmx/android/sdk/vast/b;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/model/vast/a;->d()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/hyprmx/android/sdk/vast/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/model/vast/a;->c()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/model/vast/a;->b()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/hyprmx/android/sdk/vast/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/model/vast/a;->g()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/hyprmx/android/sdk/vast/b$h;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$h;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$h;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$h;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$h;

    invoke-direct {v0, p0, p3}, Lcom/hyprmx/android/sdk/vast/b$h;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p3, v0, Lcom/hyprmx/android/sdk/vast/b$h;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$h;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/hyprmx/android/sdk/vast/b;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4b

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$h;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4b

    return-object v1

    :cond_4b
    :goto_4b
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hyprmx/android/sdk/vast/b$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$b;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$b;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$b;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/vast/b$b;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/vast/b$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$b;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_34

    if-ne v2, v4, :cond_2c

    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$b;->a:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_45
    const-string p2, "Sending tracking to "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyprmx/android/sdk/vast/b;->a:Lcom/hyprmx/android/sdk/network/k;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$b;->a:Ljava/lang/String;

    iput v4, v0, Lcom/hyprmx/android/sdk/vast/b$b;->d:I

    new-instance v2, Lcom/hyprmx/android/sdk/network/a;

    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-direct {v2, v3, v5, v6}, Lcom/hyprmx/android/sdk/network/a;-><init>(ILjava/util/Map;I)V

    invoke-interface {p2, p1, v2, v0}, Lcom/hyprmx/android/sdk/network/k;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_63

    return-object v1

    :cond_63
    :goto_63
    check-cast p2, Lcom/hyprmx/android/sdk/network/m;

    invoke-virtual {p2}, Lcom/hyprmx/android/sdk/network/m;->a()I

    move-result p2

    const/16 v0, 0xc8

    if-gt v0, p2, :cond_72

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_72

    const/4 v3, 0x1

    :cond_72
    if-nez v3, :cond_85

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error sending vast tracking for url "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_85
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hyprmx/android/sdk/vast/b$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$a;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$a;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$a;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/vast/b$a;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/vast/b$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$a;->b:Ljava/util/Iterator;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/vast/b$a;->a:Lcom/hyprmx/android/sdk/vast/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p0

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/vast/b$a;->a:Lcom/hyprmx/android/sdk/vast/b;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$a;->b:Ljava/util/Iterator;

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$a;->e:I

    invoke-virtual {v2, p2, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3d

    return-object v1

    :cond_56
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$l;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$l;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$l;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$l;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$l;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$l;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$l;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$l;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "creativeView"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$l;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$d;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$d;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$d;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$d;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$d;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$d;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$d;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "complete"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$d;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$i;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$i;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$i;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$i;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$i;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$i;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$i;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$i;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "skip"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$i;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$g;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$g;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$g;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$g;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$g;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$g;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$g;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->f:Ljava/util/HashMap;

    const-string v2, "NotViewable"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$g;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$f;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$f;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$f;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$f;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$f;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$f;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$f;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "midpoint"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$f;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final f(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$e;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$e;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$e;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$e;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$e;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$e;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$e;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "firstQuartile"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$e;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public synthetic g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->h(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/vast/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final i(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$m;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$m;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$m;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$m;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$m;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$m;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$m;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$m;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->f:Ljava/util/HashMap;

    const-string v2, "Viewable"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$m;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$k;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$k;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$k;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$k;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$k;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$k;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$k;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$k;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "thirdQuartile"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$k;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public synthetic k(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->l(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/vast/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final m(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$c;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$c;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$c;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$c;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$c;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$c;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$c;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$c;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lcom/hyprmx/android/sdk/vast/b$c;->a:Lcom/hyprmx/android/sdk/vast/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_55

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_54

    iput-object p0, v0, Lcom/hyprmx/android/sdk/vast/b$c;->a:Lcom/hyprmx/android/sdk/vast/b;

    iput v4, v0, Lcom/hyprmx/android/sdk/vast/b$c;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_54

    return-object v1

    :cond_54
    move-object v2, p0

    :goto_55
    iget-object p1, v2, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v4, "closeLinear"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6d

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/hyprmx/android/sdk/vast/b$c;->a:Lcom/hyprmx/android/sdk/vast/b;

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$c;->d:I

    invoke-virtual {v2, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6d

    return-object v1

    :cond_6d
    :goto_6d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final n(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/vast/b$j;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/vast/b$j;

    iget v1, v0, Lcom/hyprmx/android/sdk/vast/b$j;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/vast/b$j;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/vast/b$j;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/vast/b$j;-><init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/vast/b$j;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/vast/b$j;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b;->d:Ljava/util/HashMap;

    const-string v2, "start"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_49

    iput v3, v0, Lcom/hyprmx/android/sdk/vast/b$j;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/hyprmx/android/sdk/vast/b;->a(Ljava/util/List;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
