###### Class com.hyprmx.android.sdk.audio.g (com.hyprmx.android.sdk.audio.g)
.class public final Lcom/hyprmx/android/sdk/audio/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/audio/a;
.implements Lkotlinx/coroutines/s;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/s;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/js/a;Lkotlinx/coroutines/s;)V
    .registers 4

    const-string v0, "jsEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/audio/g;->a:Lkotlinx/coroutines/s;

    const-string p2, "HYPRAudioEventPublisherNative"

    invoke-interface {p1, p2, p0}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/audio/g;->a:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final onAudioEnd()V
    .registers 7

    new-instance v3, Lcom/hyprmx/android/sdk/audio/g$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/hyprmx/android/sdk/audio/g$a;-><init>(Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onAudioStart()V
    .registers 7

    new-instance v3, Lcom/hyprmx/android/sdk/audio/g$b;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/hyprmx/android/sdk/audio/g$b;-><init>(Lkotlin/coroutines/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
