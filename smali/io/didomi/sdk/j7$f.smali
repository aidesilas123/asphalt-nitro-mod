###### Class io.didomi.drawable.C1804j7.f (io.didomi.sdk.j7$f)
.class public final Lio/didomi/sdk/j7$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/L6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j7;-><init>()V
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
        "io/didomi/sdk/j7$f",
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
.field final synthetic a:Lio/didomi/sdk/j7;


# direct methods
.method constructor <init>(Lio/didomi/sdk/j7;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/j7;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/j7;)Lio/didomi/sdk/e1;

    move-result-object p0

    if-eqz p0, :cond_16

    iget-object p0, p0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_16

    const/4 v0, 0x4

    if-gt p1, v0, :cond_13

    const/4 p1, 0x0

    :cond_13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_16
    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/j7;I)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/j7$f;->a(Lio/didomi/sdk/j7;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {v0}, Lio/didomi/sdk/j7;->b(Lio/didomi/sdk/j7;)Lio/didomi/sdk/O3;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lio/didomi/sdk/O3;->f()V

    :cond_b
    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l7;->c(I)V

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    new-instance v2, Lio/didomi/sdk/pe;

    invoke-direct {v2, v1, p1}, Lio/didomi/sdk/pe;-><init>(Lio/didomi/sdk/j7;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILio/didomi/sdk/o0;)V
    .registers 4

    const-string v0, "dataProcessing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l7;->b(I)V

    iget-object p1, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {p1, p2}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/j7;Lio/didomi/sdk/o0;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/J6;)V
    .registers 4

    const-string v0, "purposeListItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lio/didomi/sdk/J6$d;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    check-cast p1, Lio/didomi/sdk/J6$d;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$d;->c()Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->b(Lio/didomi/sdk/j7;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    goto :goto_3b

    :cond_15
    instance-of v0, p1, Lio/didomi/sdk/J6$i;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    check-cast p1, Lio/didomi/sdk/J6$i;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$i;->c()Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->c(Lio/didomi/sdk/j7;Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_3b

    :cond_25
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

    :goto_3b
    return-void
.end method

.method public a(Lio/didomi/sdk/J6;Z)V
    .registers 6

    const-string v0, "purposeListItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lio/didomi/sdk/J6$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    if-eqz p2, :cond_f

    sget-object p2, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_11

    :cond_f
    sget-object p2, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_11
    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    check-cast p1, Lio/didomi/sdk/J6$d;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$d;->c()Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p2, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {p2}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/j7;)Lio/didomi/sdk/e1;

    move-result-object p2

    if-eqz p2, :cond_31

    iget-object p2, p2, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    goto :goto_32

    :cond_31
    move-object p2, v1

    :goto_32
    instance-of v0, p2, Lio/didomi/sdk/L6;

    if-eqz v0, :cond_39

    move-object v1, p2

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_39
    if-eqz v1, :cond_4c

    iget-object p2, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {p2}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/J6$d;->c()Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/didomi/sdk/l7;->n(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/J6$d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/J6$d;)V

    :cond_4c
    iget-object p1, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {p1}, Lio/didomi/sdk/j7;->d(Lio/didomi/sdk/j7;)V

    goto :goto_ac

    :cond_52
    instance-of v0, p1, Lio/didomi/sdk/J6$i;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    check-cast p1, Lio/didomi/sdk/J6$i;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$i;->c()Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lio/didomi/sdk/l7;->a(Lio/didomi/sdk/models/InternalPurpose;Z)V

    iget-object p2, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {p2}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/j7;)Lio/didomi/sdk/e1;

    move-result-object p2

    if-eqz p2, :cond_76

    iget-object p2, p2, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_76

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    goto :goto_77

    :cond_76
    move-object p2, v1

    :goto_77
    instance-of v0, p2, Lio/didomi/sdk/L6;

    if-eqz v0, :cond_7e

    move-object v1, p2

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_7e
    if-eqz v1, :cond_91

    iget-object p2, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {p2}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/J6$i;->c()Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/didomi/sdk/l7;->z(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/J6$i;)V

    :cond_91
    iget-object p1, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {p1}, Lio/didomi/sdk/j7;->d(Lio/didomi/sdk/j7;)V

    goto :goto_ac

    :cond_97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No toggle callback for purposeListItem: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v1, p2, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_ac
    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l7;->e(Z)V

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {v0}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/j7;)Lio/didomi/sdk/e1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    :goto_1c
    instance-of v2, v0, Lio/didomi/sdk/L6;

    if-eqz v2, :cond_23

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_23
    if-eqz v1, :cond_40

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Z)V

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/l7;->H1()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/l7;->N1()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->b(Ljava/util/List;)V

    :cond_40
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j7$f;->a:Lio/didomi/sdk/j7;

    invoke-static {v0}, Lio/didomi/sdk/j7;->c(Lio/didomi/sdk/j7;)V

    return-void
.end method
