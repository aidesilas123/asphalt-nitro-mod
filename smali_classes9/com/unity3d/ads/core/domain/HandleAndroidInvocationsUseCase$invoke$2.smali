###### Class com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase.AnonymousClass2 (com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2)
.class final Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "HandleAndroidInvocationsUseCase.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;->invoke(Lkotlinx/coroutines/flow/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/flow/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lcom/unity3d/ads/adplayer/Invocation;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/unity3d/ads/adplayer/Invocation;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2"
    f = "HandleAndroidInvocationsUseCase.kt"
    i = {}
    l = {
        0x2f,
        0x38,
        0x39,
        0x3a,
        0x3b,
        0x3c,
        0x3d,
        0x45,
        0x4d,
        0x56,
        0x5c,
        0x66,
        0x6c,
        0x77,
        0x81,
        0x8c,
        0x90,
        0x94,
        0x98,
        0x9c,
        0xa0,
        0xaa,
        0xae,
        0xb2,
        0xc7,
        0xd0,
        0xd9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adData:Ljava/lang/String;

.field final synthetic $adDataRefreshToken:Ljava/lang/String;

.field final synthetic $adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field final synthetic $impressionConfig:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adData:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$impressionConfig:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adDataRefreshToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 11
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

    new-instance v7, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adData:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$impressionConfig:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adDataRefreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V

    iput-object p1, v7, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/unity3d/ads/adplayer/Invocation;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->invoke(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    packed-switch v1, :pswitch_data_212

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_20e

    :pswitch_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/Invocation;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/Invocation;->getLocation()Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_24e

    goto/16 :goto_20e

    :pswitch_2f
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$27;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$27;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x1b

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_41
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$26;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$26;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x1a

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_53
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$25;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$25;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V

    const/16 v2, 0x19

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_65
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$24;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V

    const/16 v2, 0x18

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_79
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$23;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, v3, v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$23;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V

    const/16 v2, 0x17

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_8d
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$22;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$22;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x16

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_9f
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$21;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x15

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_b1
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$20;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$20;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x14

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_c3
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$19;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$19;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x13

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_d5
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$18;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$18;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0x12

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_e7
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$17;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$17;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0x11

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_f9
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$16;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$16;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x10

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_10b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$15;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$15;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0xf

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_11b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$14;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$14;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0xe

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_12b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$13;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$13;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0xd

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_13b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$12;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$12;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0xc

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_14b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$11;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$11;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0xb

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_15b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$10;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$10;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0xa

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_16b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$9;

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$9;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    const/16 v2, 0x9

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_17b
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$8;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, p1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$8;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/16 v2, 0x8

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_18d
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-direct {v1, v3, p1, v4, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$7;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/adplayer/Invocation;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/d;)V

    const/4 v2, 0x7

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_1a0
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$6;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$6;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/4 v2, 0x6

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_1b1
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$5;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$5;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/4 v2, 0x5

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_1c2
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$4;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$4;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/4 v2, 0x4

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_1d3
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$3;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$3;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/4 v2, 0x3

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_1e4
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$2;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    invoke-direct {v1, v3, v2}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$2;-><init>(Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/4 v2, 0x2

    iput v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :pswitch_1f5
    new-instance v7, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adData:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$impressionConfig:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->$adDataRefreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lkotlin/coroutines/d;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;->label:I

    invoke-virtual {p1, v7, p0}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20e

    return-object v0

    :cond_20e
    :goto_20e
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    nop

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_1f5
        :pswitch_1e4
        :pswitch_1d3
        :pswitch_1c2
        :pswitch_1b1
        :pswitch_1a0
        :pswitch_18d
        :pswitch_17b
        :pswitch_16b
        :pswitch_15b
        :pswitch_14b
        :pswitch_13b
        :pswitch_12b
        :pswitch_11b
        :pswitch_10b
        :pswitch_f9
        :pswitch_e7
        :pswitch_d5
        :pswitch_c3
        :pswitch_b1
        :pswitch_9f
        :pswitch_8d
        :pswitch_79
        :pswitch_65
        :pswitch_53
        :pswitch_41
        :pswitch_2f
    .end packed-switch
.end method
