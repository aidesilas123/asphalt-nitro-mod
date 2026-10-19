###### Class io.didomi.drawable.C1757f0 (io.didomi.sdk.f0)
.class public final Lio/didomi/sdk/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lkotlinx/coroutines/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/didomi/sdk/f0;
    .registers 1

    invoke-static {}, Lio/didomi/sdk/f0$a;->a()Lio/didomi/sdk/f0;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lkotlinx/coroutines/r;
    .registers 1

    sget-object v0, Lio/didomi/sdk/e0;->a:Lio/didomi/sdk/e0;

    invoke-virtual {v0}, Lio/didomi/sdk/e0;->a()Lkotlinx/coroutines/r;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/r;

    return-object v0
.end method


# virtual methods
.method public b()Lkotlinx/coroutines/r;
    .registers 2

    invoke-static {}, Lio/didomi/sdk/f0;->c()Lkotlinx/coroutines/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/f0;->b()Lkotlinx/coroutines/r;

    move-result-object v0

    return-object v0
.end method
