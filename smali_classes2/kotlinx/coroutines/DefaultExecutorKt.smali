###### Class kotlinx.coroutines.DefaultExecutorKt (kotlinx.coroutines.DefaultExecutorKt)
.class public final Lkotlinx/coroutines/DefaultExecutorKt;
.super Ljava/lang/Object;
.source "DefaultExecutor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0008\u0010\u0008\u001a\u00020\u0001H\u0002\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "DefaultDelay",
        "Lkotlinx/coroutines/Delay;",
        "getDefaultDelay$annotations",
        "()V",
        "getDefaultDelay",
        "()Lkotlinx/coroutines/Delay;",
        "defaultMainDelayOptIn",
        "",
        "initializeDefaultDelay",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Lkotlinx/coroutines/Delay;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lkotlinx/coroutines/DefaultExecutorKt;->a:Z

    invoke-static {}, Lkotlinx/coroutines/DefaultExecutorKt;->a()Lkotlinx/coroutines/Delay;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->b:Lkotlinx/coroutines/Delay;

    return-void
.end method

.method private static final a()Lkotlinx/coroutines/Delay;
    .registers 2

    sget-boolean v0, Lkotlinx/coroutines/DefaultExecutorKt;->a:Z

    if-nez v0, :cond_7

    sget-object v0, Lkotlinx/coroutines/u;->g:Lkotlinx/coroutines/u;

    return-object v0

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->isMissing(Lkotlinx/coroutines/t0;)Z

    move-result v1

    if-nez v1, :cond_19

    instance-of v1, v0, Lkotlinx/coroutines/Delay;

    if-nez v1, :cond_16

    goto :goto_19

    :cond_16
    check-cast v0, Lkotlinx/coroutines/Delay;

    goto :goto_1b

    :cond_19
    :goto_19
    sget-object v0, Lkotlinx/coroutines/u;->g:Lkotlinx/coroutines/u;

    :goto_1b
    return-object v0
.end method

.method public static final getDefaultDelay()Lkotlinx/coroutines/Delay;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->b:Lkotlinx/coroutines/Delay;

    return-object v0
.end method

.method public static synthetic getDefaultDelay$annotations()V
    .registers 0

    return-void
.end method
