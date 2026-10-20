###### Class com.hyprmx.android.sdk.preload.g (com.hyprmx.android.sdk.preload.g)
.class public final Lcom/hyprmx/android/sdk/preload/g;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.CacheController$processVideoDownloadResult$2"
    f = "CacheController.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4
    }
    l = {
        0x100,
        0x101,
        0x107,
        0x113,
        0x117
    }
    m = "invokeSuspend"
    n = {
        "retry",
        "retry",
        "retry",
        "retry",
        "retry"
    }
    s = {
        "I$0",
        "I$0",
        "I$0",
        "I$0",
        "I$0"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/hyprmx/android/sdk/utility/b1;

.field public final synthetic d:Lcom/hyprmx/android/sdk/api/data/c;

.field public final synthetic e:Lcom/hyprmx/android/sdk/preload/c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/b1;Lcom/hyprmx/android/sdk/api/data/c;Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/utility/b1;",
            "Lcom/hyprmx/android/sdk/api/data/c;",
            "Lcom/hyprmx/android/sdk/preload/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->c:Lcom/hyprmx/android/sdk/utility/b1;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/preload/g;->e:Lcom/hyprmx/android/sdk/preload/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 6
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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/g;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->c:Lcom/hyprmx/android/sdk/utility/b1;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/g;->e:Lcom/hyprmx/android/sdk/preload/c;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/preload/g;-><init>(Lcom/hyprmx/android/sdk/utility/b1;Lcom/hyprmx/android/sdk/api/data/c;Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/g;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/g;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    const-string v0, "Video successfully cached for url: "

    const-string v1, "Video is not playable for url: "

    const-string v2, "Error caching video for url: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/hyprmx/android/sdk/preload/g;->b:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_44

    if-eq v4, v10, :cond_3e

    if-eq v4, v9, :cond_38

    if-eq v4, v7, :cond_2e

    if-eq v4, v6, :cond_27

    if-ne v4, v5, :cond_1f

    goto :goto_2e

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget v0, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    :try_start_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2c} :catch_35

    goto/16 :goto_119

    :cond_2e
    :goto_2e
    iget v0, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    :try_start_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_33} :catch_35

    goto/16 :goto_13b

    :catch_35
    move-exception p1

    goto/16 :goto_136

    :cond_38
    iget v0, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    :try_start_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_3d} :catch_35

    goto :goto_8d

    :cond_3e
    iget v0, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    :try_start_40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_43} :catch_35

    goto :goto_7f

    :cond_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_47
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->c:Lcom/hyprmx/android/sdk/utility/b1;

    instance-of v4, p1, Lcom/hyprmx/android/sdk/utility/b1$a;

    if-eqz v4, :cond_a3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget v0, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    add-int/2addr v0, v10

    iput v0, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->c:Lcom/hyprmx/android/sdk/utility/b1;

    check-cast v0, Lcom/hyprmx/android/sdk/utility/b1$a;

    iget-boolean v0, v0, Lcom/hyprmx/android/sdk/utility/b1$a;->a:Z

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->e:Lcom/hyprmx/android/sdk/preload/c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    iput v8, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    iput v10, p0, Lcom/hyprmx/android/sdk/preload/g;->b:I

    invoke-virtual {v0, p1, p0}, Lcom/hyprmx/android/sdk/preload/c;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_7b} :catch_131

    if-ne p1, v3, :cond_7e

    return-object v3

    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    :try_start_7f
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->e:Lcom/hyprmx/android/sdk/preload/c;

    iput v0, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    iput v9, p0, Lcom/hyprmx/android/sdk/preload/g;->b:I

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/preload/c;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_8d

    return-object v3

    :cond_8c
    const/4 v0, 0x0

    :cond_8d
    :goto_8d
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget p1, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    if-gt p1, v9, :cond_96

    const/4 v0, 0x1

    goto/16 :goto_13b

    :cond_96
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->e:Lcom/hyprmx/android/sdk/preload/c;

    iput v0, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    iput v7, p0, Lcom/hyprmx/android/sdk/preload/g;->b:I

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/preload/c;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a0
    .catch Ljava/lang/IllegalStateException; {:try_start_7f .. :try_end_a0} :catch_35

    if-ne p1, v3, :cond_13b

    return-object v3

    :cond_a3
    :try_start_a3
    instance-of v2, p1, Lcom/hyprmx/android/sdk/utility/b1$b;

    if-eqz v2, :cond_134

    check-cast p1, Lcom/hyprmx/android/sdk/utility/b1$b;

    iget-boolean p1, p1, Lcom/hyprmx/android/sdk/utility/b1$b;->a:Z

    if-eqz p1, :cond_f4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->c:Lcom/hyprmx/android/sdk/utility/b1;

    check-cast v0, Lcom/hyprmx/android/sdk/utility/b1$b;

    iget-wide v0, v0, Lcom/hyprmx/android/sdk/utility/b1$b;->b:J

    iput-wide v0, p1, Lcom/hyprmx/android/sdk/api/data/c;->b:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:sss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dateFormatGmt.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/hyprmx/android/sdk/api/data/c;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iput v8, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    iput-boolean v10, p1, Lcom/hyprmx/android/sdk/api/data/c;->e:Z

    const/4 v0, 0x0

    goto :goto_120

    :cond_f4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->e:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    iput v8, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    iput v6, p0, Lcom/hyprmx/android/sdk/preload/g;->b:I

    invoke-virtual {p1, v0, p0}, Lcom/hyprmx/android/sdk/preload/c;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_115
    .catch Ljava/lang/IllegalStateException; {:try_start_a3 .. :try_end_115} :catch_131

    if-ne p1, v3, :cond_118

    return-object v3

    :cond_118
    const/4 v0, 0x0

    :goto_119
    :try_start_119
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget v1, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    add-int/2addr v1, v10

    iput v1, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    :goto_120
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/g;->e:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/g;->d:Lcom/hyprmx/android/sdk/api/data/c;

    iget-object v2, v1, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    iput v0, p0, Lcom/hyprmx/android/sdk/preload/g;->a:I

    iput v5, p0, Lcom/hyprmx/android/sdk/preload/g;->b:I

    invoke-virtual {p1, v2, v1, p0}, Lcom/hyprmx/android/sdk/preload/c;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/api/data/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_12e
    .catch Ljava/lang/IllegalStateException; {:try_start_119 .. :try_end_12e} :catch_35

    if-ne p1, v3, :cond_13b

    return-object v3

    :catch_131
    move-exception p1

    const/4 v0, 0x0

    goto :goto_136

    :cond_134
    const/4 v0, 0x0

    goto :goto_13b

    :goto_136
    const-string v1, "Exception while putting video to disk"

    invoke-static {v1, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13b
    :goto_13b
    if-eqz v0, :cond_13e

    const/4 v8, 0x1

    :cond_13e
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
