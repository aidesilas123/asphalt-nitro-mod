###### Class io.didomi.drawable.G3 (io.didomi.sdk.G3)
.class public final Lio/didomi/sdk/G3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/D8;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\t\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000eR \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R \u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0012\u001a\u0004\u0008\u0017\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/didomi/sdk/G3;",
        "Lio/didomi/sdk/D8;",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "<init>",
        "(Lio/didomi/sdk/H;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "a",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "Lio/didomi/sdk/Y5;",
        "subScreenType",
        "(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V",
        "Lio/didomi/sdk/H;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "b",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "g",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "isNoticeDisplayed",
        "c",
        "f",
        "isPreferencesDisplayed",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/H;

.field private final b:Lkotlinx/coroutines/flow/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlinx/coroutines/flow/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;)V
    .registers 3

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/G3;->a:Lio/didomi/sdk/H;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/l;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/G3;->b:Lkotlinx/coroutines/flow/l;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/l;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/G3;->c:Lkotlinx/coroutines/flow/l;

    return-void
.end method


# virtual methods
.method public a()Lkotlinx/coroutines/flow/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/didomi/sdk/D8$a;->b(Lio/didomi/sdk/D8;)Lkotlinx/coroutines/flow/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/fragment/app/FragmentActivity;)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/G3;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lio/didomi/sdk/G3;->a:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->j(Lio/didomi/sdk/H;)Z

    move-result v0

    const-string v1, "activity.supportFragmentManager"

    if-eqz v0, :cond_23

    sget-object v0, Lio/didomi/sdk/O;->h:Lio/didomi/sdk/O$a;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/didomi/sdk/O$a;->a(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_2f

    :cond_23
    sget-object v0, Lio/didomi/sdk/S;->h:Lio/didomi/sdk/S$a;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/didomi/sdk/S$a;->a(Landroidx/fragment/app/FragmentManager;)V

    :goto_2f
    invoke-static {p0, p1}, Lio/didomi/sdk/D8$a;->a(Lio/didomi/sdk/D8;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subScreenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/G3;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    sget-object v0, Lio/didomi/sdk/V4;->j:Lio/didomi/sdk/V4$a;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "activity.supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lio/didomi/sdk/V4$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/Y5;)V

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/D8$a;->a(Lio/didomi/sdk/D8;Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V

    return-void
.end method

.method public b()Z
    .registers 2

    invoke-static {p0}, Lio/didomi/sdk/D8$a;->c(Lio/didomi/sdk/D8;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    invoke-static {p0}, Lio/didomi/sdk/D8$a;->d(Lio/didomi/sdk/D8;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/D8$a;->e(Lio/didomi/sdk/D8;)V

    return-void
.end method

.method public e()Lkotlinx/coroutines/flow/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/didomi/sdk/D8$a;->a(Lio/didomi/sdk/D8;)Lkotlinx/coroutines/flow/u;

    move-result-object v0

    return-object v0
.end method

.method public f()Lkotlinx/coroutines/flow/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G3;->c:Lkotlinx/coroutines/flow/l;

    return-object v0
.end method

.method public g()Lkotlinx/coroutines/flow/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/G3;->b:Lkotlinx/coroutines/flow/l;

    return-object v0
.end method

.method public h()V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/D8$a;->f(Lio/didomi/sdk/D8;)V

    return-void
.end method
