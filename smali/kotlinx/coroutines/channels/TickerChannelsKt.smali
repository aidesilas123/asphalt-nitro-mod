###### Class kotlinx.coroutines.channels.TickerChannelsKt (kotlinx.coroutines.channels.TickerChannelsKt)
.class public final Lkotlinx/coroutines/channels/TickerChannelsKt;
.super Ljava/lang/Object;
.source "TickerChannels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a,\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0082@\u00a2\u0006\u0002\u0010\u0007\u001a,\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0082@\u00a2\u0006\u0002\u0010\u0007\u001a4\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "fixedDelayTicker",
        "",
        "delayMillis",
        "",
        "initialDelayMillis",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fixedPeriodTicker",
        "ticker",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "mode",
        "Lkotlinx/coroutines/channels/TickerMode;",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final a(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$a;

    if-eqz v0, :cond_13

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$a;-><init>(Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_53

    if-eq v2, v5, :cond_48

    if-eq v2, v4, :cond_3e

    if-ne v2, v3, :cond_36

    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->a:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->b:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_34
    move-object p4, p2

    goto :goto_63

    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->a:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->b:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_48
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->a:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->b:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_53
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->b:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->a:J

    iput v5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->d:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_63

    return-object v1

    :cond_63
    :goto_63
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->b:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->a:J

    iput v4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->d:I

    invoke-interface {p4, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->K(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_72

    return-object v1

    :cond_72
    move-object p2, p4

    :goto_73
    iput-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->b:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->a:J

    iput v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$a;->d:I

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_34

    return-object v1
.end method

.method public static final synthetic access$fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->a(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->b(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final b(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$b;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;

    iget v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->e:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/TickerChannelsKt$b;-><init>(Lkotlin/coroutines/d;)V

    :goto_1a
    iget-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->e:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_70

    if-eq v3, v8, :cond_63

    if-eq v3, v7, :cond_57

    if-eq v3, v6, :cond_45

    if-ne v3, v5, :cond_3d

    iget-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    iget-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v0, 0x4

    goto :goto_50

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    iget-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_50
    :goto_50
    move-wide/from16 v17, v8

    move-wide v8, v10

    move-wide/from16 v10, v17

    goto/16 :goto_e9

    :cond_57
    iget-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    iget-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b5

    :cond_63
    iget-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    iget-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_99

    :cond_70
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_102

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-static/range {p2 .. p3}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v11

    add-long/2addr v9, v11

    move-object/from16 v0, p4

    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    move-wide/from16 v11, p0

    iput-wide v11, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iput-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    iput v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->e:I

    move-wide/from16 v13, p2

    invoke-static {v13, v14, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_97

    return-object v2

    :cond_97
    move-wide v8, v9

    move-wide v10, v11

    :goto_99
    invoke-static {v10, v11}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v10

    :goto_9d
    add-long/2addr v8, v10

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    iput-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    iput v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->e:I

    invoke-interface {v0, v3, v1}, Lkotlinx/coroutines/channels/SendChannel;->K(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_af

    return-object v2

    :cond_af
    move-object v3, v0

    move-wide/from16 v17, v8

    move-wide v8, v10

    move-wide/from16 v10, v17

    :goto_b5
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_100

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v14, v10, v12

    const-wide/16 v4, 0x0

    invoke-static {v14, v15, v4, v5}, Lkotlin/ranges/m;->coerceAtLeast(JJ)J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-nez v16, :cond_ec

    cmp-long v16, v8, v4

    if-eqz v16, :cond_ec

    sub-long v4, v12, v10

    rem-long/2addr v4, v8

    sub-long v4, v8, v4

    add-long v10, v12, v4

    invoke-static {v4, v5}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v4

    iput-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iput-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    iput v6, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->e:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_50

    return-object v2

    :goto_e9
    move-object v0, v3

    const/4 v5, 0x4

    goto :goto_9d

    :cond_ec
    invoke-static {v14, v15}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v4

    iput-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->c:Ljava/lang/Object;

    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->a:J

    iput-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->b:J

    const/4 v0, 0x4

    iput v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$b;->e:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_50

    return-object v2

    :cond_100
    const/4 v1, 0x0

    throw v1

    :cond_102
    const/4 v1, 0x0

    throw v1
.end method

.method public static final ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/TickerMode;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    move-wide v2, p0

    move-wide v4, p2

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v9, " ms"

    if-eqz v1, :cond_52

    cmp-long v1, v4, v6

    if-ltz v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_34

    sget-object v7, Lkotlinx/coroutines/g0;->a:Lkotlinx/coroutines/g0;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/r;

    move-result-object v0

    move-object v1, p4

    invoke-virtual {v0, p4}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    new-instance v10, Lkotlinx/coroutines/channels/TickerChannelsKt$c;

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p5

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/channels/TickerChannelsKt$c;-><init>(Lkotlinx/coroutines/channels/TickerMode;JJLkotlin/coroutines/d;)V

    invoke-static {v7, v9, v8, v10}, Lkotlinx/coroutines/channels/ProduceKt;->produce(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/b/p;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected non-negative initial delay, but has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected non-negative delay, but has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic ticker$default(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 8

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_5

    move-wide p2, p0

    :cond_5
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_b

    sget-object p4, Lkotlin/coroutines/e;->a:Lkotlin/coroutines/e;

    :cond_b
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_11

    sget-object p5, Lkotlinx/coroutines/channels/TickerMode;->a:Lkotlinx/coroutines/channels/TickerMode;

    :cond_11
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method
