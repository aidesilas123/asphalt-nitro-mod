###### Class io.didomi.sdk.D8.a (io.didomi.sdk.D8$a)
.class public final Lio/didomi/sdk/D8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/D8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lio/didomi/sdk/D8;)Lkotlinx/coroutines/flow/u;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/D8;",
            ")",
            "Lkotlinx/coroutines/flow/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lio/didomi/sdk/D8;->g()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/didomi/sdk/D8;Landroidx/fragment/app/FragmentActivity;)V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lio/didomi/sdk/D8;->g()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/l;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lio/didomi/sdk/D8;Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "subScreenType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lio/didomi/sdk/D8;->f()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/l;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lio/didomi/sdk/D8;)Lkotlinx/coroutines/flow/u;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/D8;",
            ")",
            "Lkotlinx/coroutines/flow/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lio/didomi/sdk/D8;->f()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lio/didomi/sdk/D8;)Z
    .registers 1

    invoke-interface {p0}, Lio/didomi/sdk/D8;->g()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/l;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static d(Lio/didomi/sdk/D8;)Z
    .registers 1

    invoke-interface {p0}, Lio/didomi/sdk/D8;->f()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/l;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(Lio/didomi/sdk/D8;)V
    .registers 2

    invoke-interface {p0}, Lio/didomi/sdk/D8;->g()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/l;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static f(Lio/didomi/sdk/D8;)V
    .registers 2

    invoke-interface {p0}, Lio/didomi/sdk/D8;->f()Lkotlinx/coroutines/flow/l;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/l;->setValue(Ljava/lang/Object;)V

    return-void
.end method
