###### Class io.didomi.drawable.lifecycle.DidomiLifecycleHandler (io.didomi.sdk.lifecycle.DidomiLifecycleHandler)
.class public final Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0011\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u000f\u001a\u0004\u0008\n\u0010\u000e\"\u0004\u0008\u0007\u0010\u0010R\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000f\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\n\u0010\u0010R$\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0014\u001a\u0004\u0008\u0007\u0010\u0015\"\u0004\u0008\u0012\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Landroidx/lifecycle/LifecycleObserver;",
        "a",
        "(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/LifecycleObserver;",
        "",
        "b",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "",
        "d",
        "()Z",
        "Z",
        "(Z)V",
        "noticeWasDisplayed",
        "c",
        "preferencesWasDisplayed",
        "Landroidx/fragment/app/FragmentActivity;",
        "()Landroidx/fragment/app/FragmentActivity;",
        "currentActivity",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/LifecycleObserver;
    .registers 3

    new-instance v0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler$createLifecycleObserver$lifecycleObserver$1;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler$createLifecycleObserver$lifecycleObserver$1;-><init>(Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/fragment/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->c:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->a:Z

    return-void
.end method

.method public final b(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->c:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/LifecycleObserver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->b:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->a:Z

    return v0
.end method

.method public final c(Landroidx/fragment/app/FragmentActivity;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->c:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->b:Z

    return v0
.end method

.method public final d()Z
    .registers 3

    iget-boolean v0, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->a:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->b:Z

    if-eqz v0, :cond_1c

    :cond_8
    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->isInitializeInProgress$android_release()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method
