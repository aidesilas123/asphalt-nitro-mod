###### Class com.hyprmx.android.sdk.utility.HyprMXInternalHelper (com.hyprmx.android.sdk.utility.HyprMXInternalHelper)
.class public final Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0007J\u000f\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007\u00a2\u0006\u0002\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;",
        "",
        "()V",
        "clearCache",
        "",
        "getAdCacheState",
        "",
        "",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getConsentStatus",
        "Lcom/hyprmx/android/sdk/consent/ConsentStatus;",
        "getSharedJSVersion",
        "",
        "()Ljava/lang/Integer;",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .registers 8

    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v1, v0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v1, :cond_16

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v2

    new-instance v4, Lcom/hyprmx/android/sdk/core/k;

    const/4 v0, 0x0

    invoke-direct {v4, v1, v0}, Lcom/hyprmx/android/sdk/core/k;-><init>(Lcom/hyprmx/android/sdk/core/j;Lkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_16
    return-void
.end method

.method public final getAdCacheState(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/core/q;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getConsentStatus()Lcom/hyprmx/android/sdk/consent/ConsentStatus;
    .registers 2

    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->h()Lcom/hyprmx/android/sdk/consent/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/consent/b;->b()Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_12
    sget-object v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_STATUS_UNKNOWN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    :cond_14
    return-object v0
.end method

.method public final getSharedJSVersion()Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j;->f:Ljava/lang/Integer;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
