###### Class io.didomi.drawable.C1741d4 (io.didomi.sdk.d4)
.class public final Lio/didomi/sdk/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/didomi/sdk/d4;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/DialogFragment;",
        "fragment",
        "Lio/didomi/sdk/D8;",
        "uiProvider",
        "",
        "a",
        "(Landroidx/fragment/app/DialogFragment;Lio/didomi/sdk/D8;)V",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/Job;",
        "job",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/d4;->a:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_8
    return-void
.end method

.method public final a(Landroidx/fragment/app/DialogFragment;Lio/didomi/sdk/D8;)V
    .registers 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lio/didomi/sdk/D8;->a()Lkotlinx/coroutines/flow/u;

    move-result-object p2

    new-instance v0, Lio/didomi/sdk/d4$a;

    invoke-direct {v0, p1}, Lio/didomi/sdk/d4$a;-><init>(Landroidx/fragment/app/DialogFragment;)V

    invoke-static {p1, p2, v0}, Lio/didomi/sdk/N2;->a(Landroidx/fragment/app/Fragment;Lkotlinx/coroutines/flow/u;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/d4;->a:Lkotlinx/coroutines/Job;

    return-void
.end method
