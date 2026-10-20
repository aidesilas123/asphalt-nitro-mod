###### Class io.didomi.drawable.T2 (io.didomi.sdk.T2)
.class public Lio/didomi/sdk/T2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000b\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u0012J1\u0010\u000b\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0015H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/didomi/sdk/T2;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lio/didomi/sdk/DidomiInitializeParameters;",
        "parameters",
        "Lio/didomi/sdk/z3;",
        "localPropertiesRepository",
        "Lio/didomi/sdk/Z;",
        "a",
        "(Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)Lio/didomi/sdk/Z;",
        "Lio/didomi/sdk/J;",
        "(Landroid/content/Context;)Lio/didomi/sdk/J;",
        "Lio/didomi/sdk/F8;",
        "userAgentRepository",
        "Lio/didomi/sdk/Z2;",
        "(Lio/didomi/sdk/F8;)Lio/didomi/sdk/Z2;",
        "connectivityHelper",
        "httpRequestHelper",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "Lio/didomi/sdk/l5;",
        "(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/CoroutineDispatcher;)Lio/didomi/sdk/l5;",
        "Lio/didomi/sdk/s5;",
        "b",
        "(Landroid/content/Context;)Lio/didomi/sdk/s5;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lio/didomi/sdk/J;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/J;

    invoke-direct {v0, p1}, Lio/didomi/sdk/J;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lio/didomi/sdk/F8;)Lio/didomi/sdk/Z2;
    .registers 3

    const-string v0, "userAgentRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/Z2;

    invoke-direct {v0, p1}, Lio/didomi/sdk/Z2;-><init>(Lio/didomi/sdk/F8;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)Lio/didomi/sdk/Z;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPropertiesRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/Z;

    invoke-direct {v0, p1, p2, p3}, Lio/didomi/sdk/Z;-><init>(Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;)Lio/didomi/sdk/l5;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpRequestHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/l5;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/didomi/sdk/l5;-><init>(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lio/didomi/sdk/s5;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/s5;

    invoke-direct {v0, p1}, Lio/didomi/sdk/s5;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
