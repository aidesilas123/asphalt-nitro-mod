###### Class com.hyprmx.android.sdk.vast.a (com.hyprmx.android.sdk.vast.a)
.class public final Lcom/hyprmx/android/sdk/vast/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/tracking/a;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/analytics/d;

.field public final b:F

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/analytics/d;FLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "eventController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewingToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewingId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/vast/a;->a:Lcom/hyprmx/android/sdk/analytics/d;

    iput p2, p0, Lcom/hyprmx/android/sdk/vast/a;->b:F

    iput-object p3, p0, Lcom/hyprmx/android/sdk/vast/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/vast/a;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/vast/a;->e:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
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

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_9

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_9
    iget p3, p0, Lcom/hyprmx/android/sdk/vast/a;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float p3, p3, v0

    if-nez p3, :cond_15

    const/4 p3, 0x1

    goto :goto_16

    :cond_15
    const/4 p3, 0x0

    :goto_16
    if-nez p3, :cond_25

    iget-object p3, p0, Lcom/hyprmx/android/sdk/vast/a;->e:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    iget v0, p0, Lcom/hyprmx/android/sdk/vast/a;->b:F

    cmpg-float p3, p3, v0

    if-gez p3, :cond_33

    goto :goto_34

    :cond_25
    iget-object p3, p0, Lcom/hyprmx/android/sdk/vast/a;->e:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    if-eqz v1, :cond_43

    iget-object p3, p0, Lcom/hyprmx/android/sdk/vast/a;->a:Lcom/hyprmx/android/sdk/analytics/d;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/vast/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/vast/a;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, v1, p1}, Lcom/hyprmx/android/sdk/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public synthetic a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->b(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->c(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->d(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->e(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->f(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->g(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->h(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->i(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->j(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->k(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->l(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->m(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->n(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->o(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
