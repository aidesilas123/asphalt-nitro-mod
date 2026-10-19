###### Class io.didomi.sdk.V4.f (io.didomi.sdk.V4$f)
.class public final Lio/didomi/sdk/V4$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/m4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/V4$f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "io/didomi/sdk/V4$f",
        "Lio/didomi/sdk/m4$a;",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "Lio/didomi/sdk/w4$a;",
        "type",
        "",
        "id",
        "(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "Lio/didomi/sdk/o0;",
        "dataProcessing",
        "(Lio/didomi/sdk/o0;)V",
        "(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V",
        "b",
        "()V",
        "c",
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

    iput-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/I3;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/o0;)V
    .registers 5

    const-string v0, "dataProcessing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/c;->f:Lio/didomi/sdk/c$a;

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "requireActivity().supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lio/didomi/sdk/c$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/o0;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;)Lio/didomi/sdk/R0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    iget-object p1, p1, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_21

    :cond_20
    move-object p1, v0

    :goto_21
    instance-of v1, p1, Lio/didomi/sdk/m4;

    if-eqz v1, :cond_28

    move-object v0, p1

    check-cast v0, Lio/didomi/sdk/m4;

    :cond_28
    if-eqz v0, :cond_38

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lio/didomi/sdk/a5;->d(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/m4;->a(Ljava/util/List;)V

    :cond_38
    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->b(Lio/didomi/sdk/V4;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/V4$f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "parentFragmentManager"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_52

    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    if-nez p1, :cond_27

    return-void

    :cond_27
    sget-object p2, Lio/didomi/sdk/u4;->e:Lio/didomi/sdk/u4$a;

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lio/didomi/sdk/u4$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_6d

    :cond_36
    new-instance p2, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_52
    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/a5;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-nez p1, :cond_5f

    return-void

    :cond_5f
    sget-object p2, Lio/didomi/sdk/q4;->g:Lio/didomi/sdk/q4$a;

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lio/didomi/sdk/q4$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    :goto_6d
    return-void
.end method

.method public a(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 9

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    iget-object v3, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v3}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/didomi/sdk/a5;->u(Lio/didomi/sdk/models/InternalPurpose;)V

    sget-object v4, Lio/didomi/sdk/w4$a;->f:Lio/didomi/sdk/w4$a;

    if-ne p1, v4, :cond_56

    invoke-virtual {v3}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v4

    invoke-virtual {v4, v0, p3}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-static {v3}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;)Lio/didomi/sdk/R0;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, v0, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_41

    :cond_40
    move-object v0, v2

    :goto_41
    instance-of v4, v0, Lio/didomi/sdk/m4;

    if-eqz v4, :cond_48

    check-cast v0, Lio/didomi/sdk/m4;

    goto :goto_49

    :cond_48
    move-object v0, v2

    :goto_49
    if-eqz v0, :cond_56

    invoke-virtual {v3}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual {v0, p2, p3, v3, v1}, Lio/didomi/sdk/m4;->b(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_56
    sget-object v0, Lio/didomi/sdk/w4$a;->c:Lio/didomi/sdk/w4$a;

    if-ne p1, v0, :cond_9b

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/a5;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-eqz p1, :cond_9b

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    invoke-static {v0}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;)Lio/didomi/sdk/R0;

    move-result-object p3

    if-eqz p3, :cond_86

    iget-object p3, p3, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_86

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    goto :goto_87

    :cond_86
    move-object p3, v2

    :goto_87
    instance-of v3, p3, Lio/didomi/sdk/m4;

    if-eqz v3, :cond_8e

    move-object v2, p3

    check-cast v2, Lio/didomi/sdk/m4;

    :cond_8e
    if-eqz v2, :cond_9b

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p3

    invoke-virtual {p3}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p3

    invoke-virtual {v2, p2, p1, p3, v1}, Lio/didomi/sdk/m4;->a(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_9b
    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->b(Lio/didomi/sdk/V4;)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;

    invoke-direct {v1}, Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/I3;->b(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;

    invoke-direct {v1}, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/I3;->c(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
