###### Class com.hyprmx.android.sdk.tracking.b (com.hyprmx.android.sdk.tracking.b)
.class public final Lcom/hyprmx/android/sdk/tracking/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/tracking/c;


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Mutex;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/tracking/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "synchronizedList(mutableListOf())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "synchronizedSet(mutableSetOf())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/tracking/b;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(JJLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/hyprmx/android/sdk/tracking/b$h;

    if-eqz v0, :cond_13

    move-object v0, p5

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$h;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$h;

    invoke-direct {v0, p0, p5}, Lcom/hyprmx/android/sdk/tracking/b$h;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_1dc

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2d
    iget-wide p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iget-object p3, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    check-cast p3, Ljava/util/Iterator;

    iget-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    check-cast p4, Lkotlinx/coroutines/sync/Mutex;

    :try_start_37
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_193

    goto/16 :goto_1b2

    :pswitch_3c
    iget-wide p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iget-object p3, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iget-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    check-cast p4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/hyprmx/android/sdk/tracking/b;

    :try_start_48
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_193

    goto/16 :goto_172

    :pswitch_4d
    iget p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->f:F

    iget-wide p2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iget-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/hyprmx/android/sdk/tracking/b;

    :try_start_5b
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_e9

    goto/16 :goto_13a

    :pswitch_60
    iget p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->f:F

    iget-wide p2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iget-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/hyprmx/android/sdk/tracking/b;

    :try_start_6e
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_e9

    goto/16 :goto_103

    :pswitch_73
    iget p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->f:F

    iget-wide p2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iget-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/hyprmx/android/sdk/tracking/b;

    :try_start_81
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_e9

    goto :goto_c9

    :pswitch_85
    iget-wide p3, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->e:J

    iget-wide p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_ac

    :pswitch_95
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iput-wide p3, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->e:J

    iput v4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_ab

    return-object v1

    :cond_ab
    move-object v5, p0

    :goto_ac
    const-wide/16 v6, 0x0

    cmp-long p5, p1, v6

    if-lez p5, :cond_1d0

    const/16 p5, 0x3e8

    int-to-long v6, p5

    :try_start_b5
    div-long v6, p3, v6

    long-to-float p3, p3

    long-to-float p1, p1

    div-float/2addr p3, p1

    iget-boolean p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->d:Z

    if-nez p1, :cond_ee

    iput-boolean v4, v5, Lcom/hyprmx/android/sdk/tracking/b;->d:Z

    iget-object p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p4, p1

    move p1, p3

    move-wide p2, v6

    :cond_c9
    :goto_c9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_ec

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    iput-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iput-wide p2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iput p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->f:F

    const/4 v6, 0x2

    iput v6, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    invoke-interface {p5, v0}, Lcom/hyprmx/android/sdk/tracking/a;->n(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_c9

    return-object v1

    :catchall_e9
    move-exception p1

    goto/16 :goto_1d8

    :cond_ec
    move-wide v6, p2

    move p3, p1

    :cond_ee
    iget-boolean p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->e:Z

    if-nez p1, :cond_125

    const/high16 p1, 0x3e800000    # 0.25f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_125

    iput-boolean v4, v5, Lcom/hyprmx/android/sdk/tracking/b;->e:Z

    iget-object p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p4, p1

    move p1, p3

    move-wide p2, v6

    :cond_103
    :goto_103
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_123

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    iput-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iput-wide p2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iput p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->f:F

    const/4 v6, 0x3

    iput v6, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    invoke-interface {p5, v0}, Lcom/hyprmx/android/sdk/tracking/a;->f(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_103

    return-object v1

    :cond_123
    move-wide v6, p2

    move p3, p1

    :cond_125
    iget-boolean p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->f:Z

    if-nez p1, :cond_15c

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_15c

    iput-boolean v4, v5, Lcom/hyprmx/android/sdk/tracking/b;->f:Z

    iget-object p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p4, p1

    move p1, p3

    move-wide p2, v6

    :cond_13a
    :goto_13a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_15a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    iput-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iput-wide p2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    iput p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->f:F

    const/4 v6, 0x4

    iput v6, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    invoke-interface {p5, v0}, Lcom/hyprmx/android/sdk/tracking/a;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_13a

    return-object v1

    :cond_15a
    move-wide v6, p2

    move p3, p1

    :cond_15c
    iget-boolean p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->g:Z

    if-nez p1, :cond_195

    const/high16 p1, 0x3f400000    # 0.75f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_195

    iput-boolean v4, v5, Lcom/hyprmx/android/sdk/tracking/b;->g:Z

    iget-object p1, v5, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_16e
    .catchall {:try_start_b5 .. :try_end_16e} :catchall_e9

    move-object p3, p1

    move-object p4, v2

    move-object v2, v5

    move-wide p1, v6

    :cond_172
    :goto_172
    :try_start_172
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_190

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    iput-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    iput-object p3, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iput-wide p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    const/4 v4, 0x5

    iput v4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    invoke-interface {p5, v0}, Lcom/hyprmx/android/sdk/tracking/a;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p5
    :try_end_18d
    .catchall {:try_start_172 .. :try_end_18d} :catchall_193

    if-ne p5, v1, :cond_172

    return-object v1

    :cond_190
    move-object v5, v2

    move-object v2, p4

    goto :goto_196

    :catchall_193
    move-exception p1

    goto :goto_1d7

    :cond_195
    move-wide p1, v6

    :goto_196
    :try_start_196
    iget-object p3, v5, Lcom/hyprmx/android/sdk/tracking/b;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1d0

    iget-object p3, v5, Lcom/hyprmx/android/sdk/tracking/b;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p3, v5, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3
    :try_end_1b1
    .catchall {:try_start_196 .. :try_end_1b1} :catchall_e9

    move-object p4, v2

    :cond_1b2
    :goto_1b2
    :try_start_1b2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1d1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object p4, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->a:Ljava/lang/Object;

    iput-object p3, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->b:Ljava/lang/Object;

    iput-object v3, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->c:Ljava/util/Iterator;

    iput-wide p1, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->d:J

    const/4 v2, 0x6

    iput v2, v0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    invoke-interface {p5, p1, p2, v0}, Lcom/hyprmx/android/sdk/tracking/a;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_1b2

    return-object v1

    :cond_1d0
    move-object p4, v2

    :cond_1d1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1d3
    .catchall {:try_start_1b2 .. :try_end_1d3} :catchall_193

    invoke-interface {p4, v3}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :goto_1d7
    move-object v2, p4

    :goto_1d8
    invoke-interface {v2, v3}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_95
        :pswitch_85
        :pswitch_73
        :pswitch_60
        :pswitch_4d
        :pswitch_3c
        :pswitch_2d
    .end packed-switch
.end method

.method public synthetic a(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/hyprmx/android/sdk/tracking/d;->a(Lcom/hyprmx/android/sdk/tracking/a;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/tracking/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hyprmx/android/sdk/tracking/b$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$a;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$a;

    invoke-direct {v0, p0, p2}, Lcom/hyprmx/android/sdk/tracking/b$a;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    if-ne v2, v4, :cond_30

    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->b:Lcom/hyprmx/android/sdk/tracking/a;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->a:Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->a:Lcom/hyprmx/android/sdk/tracking/b;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->b:Lcom/hyprmx/android/sdk/tracking/a;

    iput-object p2, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcom/hyprmx/android/sdk/tracking/b$a;->f:I

    invoke-interface {p2, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    move-object v1, p1

    move-object p1, p2

    :goto_4f
    :try_start_4f
    iget-object p2, v0, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_5a

    invoke-interface {p1, v3}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :catchall_5a
    move-exception p2

    invoke-interface {p1, v3}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$k;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$k;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$k;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$k;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v5, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_6c

    :catchall_35
    move-exception p1

    goto :goto_8f

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v6, p0

    :goto_5f
    :try_start_5f
    iget-boolean v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->k:Z

    if-nez v2, :cond_85

    iput-boolean v5, v6, Lcom/hyprmx/android/sdk/tracking/b;->k:Z

    iget-object v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8c

    move-object v5, p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$k;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_85
    move-object v5, p1

    :cond_86
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_35

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_8c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    :goto_8f
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$d;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$d;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$d;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$d;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v5, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_6c

    :catchall_35
    move-exception p1

    goto :goto_8f

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v6, p0

    :goto_5f
    :try_start_5f
    iget-boolean v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->i:Z

    if-nez v2, :cond_85

    iput-boolean v5, v6, Lcom/hyprmx/android/sdk/tracking/b;->i:Z

    iget-object v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8c

    move-object v5, p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$d;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_85
    move-object v5, p1

    :cond_86
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_35

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_8c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    :goto_8f
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$j;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$j;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$j;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$j;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v5, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_6c

    :catchall_35
    move-exception p1

    goto :goto_8f

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v6, p0

    :goto_5f
    :try_start_5f
    iget-boolean v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->m:Z

    if-nez v2, :cond_85

    iput-boolean v5, v6, Lcom/hyprmx/android/sdk/tracking/b;->m:Z

    iget-object v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8c

    move-object v5, p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$j;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_85
    move-object v5, p1

    :cond_86
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_35

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_8c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    :goto_8f
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$f;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$f;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$f;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$f;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v5, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_6c

    :catchall_35
    move-exception p1

    goto :goto_8f

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v6, p0

    :goto_5f
    :try_start_5f
    iget-boolean v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->j:Z

    if-nez v2, :cond_85

    iput-boolean v5, v6, Lcom/hyprmx/android/sdk/tracking/b;->j:Z

    iget-object v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8c

    move-object v5, p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$f;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_85
    move-object v5, p1

    :cond_86
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_35

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_8c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    :goto_8f
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
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

.method public final g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$i;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$i;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$i;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$i;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4c

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_66

    :catchall_35
    move-exception p1

    goto :goto_88

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v4, p0

    :goto_5f
    :try_start_5f
    iget-object v2, v4, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_85

    move-object v4, p1

    :cond_66
    :goto_66
    :try_start_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$i;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_66

    return-object v1

    :cond_7f
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_35

    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_85
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    :goto_88
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final h(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$b;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$b;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$b;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4c

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_66

    :catchall_35
    move-exception p1

    goto :goto_88

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v4, p0

    :goto_5f
    :try_start_5f
    iget-object v2, v4, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_85

    move-object v4, p1

    :cond_66
    :goto_66
    :try_start_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$b;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->h(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_66

    return-object v1

    :cond_7f
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_35

    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_85
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    :goto_88
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final i(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$l;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$l;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$l;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$l;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v5, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_6c

    :catchall_35
    move-exception p1

    goto :goto_8f

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v6, p0

    :goto_5f
    :try_start_5f
    iget-boolean v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->j:Z

    if-nez v2, :cond_85

    iput-boolean v5, v6, Lcom/hyprmx/android/sdk/tracking/b;->j:Z

    iget-object v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8c

    move-object v5, p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$l;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->i(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_85
    move-object v5, p1

    :cond_86
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_35

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_8c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    :goto_8f
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public synthetic j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->k(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$g;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$g;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$g;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$g;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4c

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_66

    :catchall_35
    move-exception p1

    goto :goto_88

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->a:Ljava/lang/Object;

    check-cast v4, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v4, p0

    :goto_5f
    :try_start_5f
    iget-object v2, v4, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_85

    move-object v4, p1

    :cond_66
    :goto_66
    :try_start_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v4, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$g;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->k(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_66

    return-object v1

    :cond_7f
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_35

    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_85
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    :goto_88
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final l(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$e;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$e;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$e;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$e;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v5, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_6c

    :catchall_35
    move-exception p1

    goto :goto_8f

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v6, p0

    :goto_5f
    :try_start_5f
    iget-boolean v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->h:Z

    if-nez v2, :cond_85

    iput-boolean v5, v6, Lcom/hyprmx/android/sdk/tracking/b;->h:Z

    iget-object v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8c

    move-object v5, p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$e;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->l(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_85
    move-object v5, p1

    :cond_86
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_35

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_8c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    :goto_8f
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final m(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p1, Lcom/hyprmx/android/sdk/tracking/b$c;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/tracking/b$c;

    iget v1, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/tracking/b$c;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/tracking/b$c;-><init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v5, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_6c

    :catchall_35
    move-exception p1

    goto :goto_8f

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/tracking/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object v6, p0

    :goto_5f
    :try_start_5f
    iget-boolean v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->l:Z

    if-nez v2, :cond_85

    iput-boolean v5, v6, Lcom/hyprmx/android/sdk/tracking/b;->l:Z

    iget-object v2, v6, Lcom/hyprmx/android/sdk/tracking/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8c

    move-object v5, p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/tracking/a;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/hyprmx/android/sdk/tracking/b$c;->e:I

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/tracking/a;->m(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_85
    move-object v5, p1

    :cond_86
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_35

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :catchall_8c
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    :goto_8f
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public synthetic n(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/tracking/d;->o(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
