###### Class io.didomi.drawable.g9 (io.didomi.sdk.g9)
.class public abstract Lio/didomi/sdk/g9;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0015\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0011\u001a\u0004\u0008\u000b\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/didomi/sdk/g9;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/z8;Landroidx/viewbinding/ViewBinding;)V",
        "Lio/didomi/sdk/U8;",
        "data",
        "",
        "a",
        "(Lio/didomi/sdk/U8;)V",
        "Lio/didomi/sdk/z8;",
        "b",
        "()Lio/didomi/sdk/z8;",
        "",
        "Z",
        "()Z",
        "setPreventListAccessibilityAnnouncement",
        "(Z)V",
        "preventListAccessibilityAnnouncement",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/z8;

.field private b:Z


# direct methods
.method public constructor <init>(Lio/didomi/sdk/z8;Landroidx/viewbinding/ViewBinding;)V
    .registers 4

    const-string v0, "themeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lio/didomi/sdk/g9;->a:Lio/didomi/sdk/z8;

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/U8;)V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8;->b()Z

    move-result p1

    iput-boolean p1, p0, Lio/didomi/sdk/g9;->b:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/g9;->b:Z

    return v0
.end method

.method protected final b()Lio/didomi/sdk/z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/g9;->a:Lio/didomi/sdk/z8;

    return-object v0
.end method
