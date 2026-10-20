###### Class io.didomi.sdk.V4.g (io.didomi.sdk.V4$g)
.class public final Lio/didomi/sdk/V4$g;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/V4$g",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "newState",
        "",
        "onScrollStateChanged",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V4$g;->a:Lio/didomi/sdk/V4;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/V4$g;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->w1()Z

    move-result p1

    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    iget-object p1, p0, Lio/didomi/sdk/V4$g;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->c(Lio/didomi/sdk/V4;)V

    :cond_18
    return-void
.end method
