###### Class io.didomi.sdk.B6.e (io.didomi.sdk.B6$e)
.class public final Lio/didomi/sdk/B6$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/L6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/B6;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\nJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0011J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "io/didomi/sdk/B6$e",
        "Lio/didomi/sdk/L6$a;",
        "",
        "isChecked",
        "",
        "a",
        "(Z)V",
        "Lio/didomi/sdk/J6;",
        "purposeListItem",
        "(Lio/didomi/sdk/J6;)V",
        "(Lio/didomi/sdk/J6;Z)V",
        "",
        "index",
        "Lio/didomi/sdk/o0;",
        "dataProcessing",
        "(ILio/didomi/sdk/o0;)V",
        "b",
        "()V",
        "position",
        "(I)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/B6;


# direct methods
.method constructor <init>(Lio/didomi/sdk/B6;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/B6;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/B6;->a(Lio/didomi/sdk/B6;)Lio/didomi/sdk/b1;

    move-result-object p0

    if-eqz p0, :cond_16

    iget-object p0, p0, Lio/didomi/sdk/b1;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_16

    const/4 v0, 0x4

    if-gt p1, v0, :cond_13

    const/4 p1, 0x0

    :cond_13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_16
    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/B6;I)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/B6$e;->a(Lio/didomi/sdk/B6;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-virtual {v0}, Lio/didomi/sdk/B6;->c()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l7;->d(I)V

    iget-object v0, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    new-instance v2, Lio/didomi/sdk/r9;

    invoke-direct {v2, v1, p1}, Lio/didomi/sdk/r9;-><init>(Lio/didomi/sdk/B6;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILio/didomi/sdk/o0;)V
    .registers 3

    const-string p1, "dataProcessing"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/J6;)V
    .registers 4

    const-string v0, "purposeListItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lio/didomi/sdk/J6$i;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    check-cast p1, Lio/didomi/sdk/J6$i;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$i;->c()Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    invoke-static {v0, p1}, Lio/didomi/sdk/B6;->c(Lio/didomi/sdk/B6;Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_2b

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No click callback for purposeListItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_2b
    return-void
.end method

.method public a(Lio/didomi/sdk/J6;Z)V
    .registers 6

    const-string v0, "purposeListItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lio/didomi/sdk/J6$i;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-virtual {v0}, Lio/didomi/sdk/B6;->c()Lio/didomi/sdk/l7;

    move-result-object v0

    check-cast p1, Lio/didomi/sdk/J6$i;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$i;->c()Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lio/didomi/sdk/l7;->a(Lio/didomi/sdk/models/InternalPurpose;Z)V

    iget-object p2, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-static {p2}, Lio/didomi/sdk/B6;->a(Lio/didomi/sdk/B6;)Lio/didomi/sdk/b1;

    move-result-object p2

    if-eqz p2, :cond_2a

    iget-object p2, p2, Lio/didomi/sdk/b1;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    goto :goto_2b

    :cond_2a
    move-object p2, v1

    :goto_2b
    instance-of v0, p2, Lio/didomi/sdk/L6;

    if-eqz v0, :cond_32

    move-object v1, p2

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_32
    if-eqz v1, :cond_45

    iget-object p2, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-virtual {p2}, Lio/didomi/sdk/B6;->c()Lio/didomi/sdk/l7;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/J6$i;->c()Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/didomi/sdk/l7;->z(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/J6$i;)V

    :cond_45
    iget-object p1, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-static {p1}, Lio/didomi/sdk/B6;->c(Lio/didomi/sdk/B6;)V

    goto :goto_60

    :cond_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No toggle callback for purposeListItem: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v1, p2, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_60
    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-virtual {v0}, Lio/didomi/sdk/B6;->c()Lio/didomi/sdk/l7;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-static {v1}, Lio/didomi/sdk/B6;->b(Lio/didomi/sdk/B6;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object v1

    if-eqz p1, :cond_11

    sget-object v2, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_13

    :cond_11
    sget-object v2, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_13
    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object v0, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-static {v0}, Lio/didomi/sdk/B6;->a(Lio/didomi/sdk/B6;)Lio/didomi/sdk/b1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, v0, Lio/didomi/sdk/b1;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_29

    :cond_28
    move-object v0, v1

    :goto_29
    instance-of v2, v0, Lio/didomi/sdk/L6;

    if-eqz v2, :cond_30

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_30
    if-eqz v1, :cond_42

    iget-object v0, p0, Lio/didomi/sdk/B6$e;->a:Lio/didomi/sdk/B6;

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Z)V

    invoke-virtual {v0}, Lio/didomi/sdk/B6;->c()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/l7;->O1()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->b(Ljava/util/List;)V

    :cond_42
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
