###### Class io.didomi.sdk.Didomi.Companion (io.didomi.sdk.Didomi$Companion)
.class public final Lio/didomi/sdk/Didomi$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/Didomi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/didomi/sdk/Didomi$Companion;",
        "",
        "()V",
        "VIEW_PURPOSES",
        "",
        "VIEW_SENSITIVE_PERSONAL_INFORMATION",
        "VIEW_VENDORS",
        "currentInstance",
        "Lio/didomi/sdk/Didomi;",
        "clearInstance",
        "",
        "getInstance",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/Didomi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearInstance()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lio/didomi/sdk/Didomi;->access$setCurrentInstance$cp(Lio/didomi/sdk/Didomi;)V

    return-void
.end method

.method public final getInstance()Lio/didomi/sdk/Didomi;
    .registers 3

    invoke-static {}, Lio/didomi/sdk/Didomi;->access$getCurrentInstance$cp()Lio/didomi/sdk/Didomi;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lio/didomi/sdk/Didomi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/Didomi;-><init>(Lkotlin/jvm/internal/n;)V

    invoke-static {v0}, Lio/didomi/sdk/Didomi;->access$setCurrentInstance$cp(Lio/didomi/sdk/Didomi;)V

    :cond_f
    invoke-static {}, Lio/didomi/sdk/Didomi;->access$getCurrentInstance$cp()Lio/didomi/sdk/Didomi;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.didomi.sdk.Didomi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
