###### Class io.didomi.drawable.C1871q4.d (io.didomi.sdk.q4$d)
.class public final Lio/didomi/sdk/q4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/m4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/q4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/q4$d$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "io/didomi/sdk/q4$d",
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
.field final synthetic a:Lio/didomi/sdk/q4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/q4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lio/didomi/sdk/o0;)V
    .registers 5

    const-string v0, "dataProcessing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/c;->f:Lio/didomi/sdk/c$a;

    iget-object v1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

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
    .registers 5

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-static {v0}, Lio/didomi/sdk/q4;->b(Lio/didomi/sdk/q4;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-virtual {v1}, Lio/didomi/sdk/q4;->b()Lio/didomi/sdk/a5;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-static {p1}, Lio/didomi/sdk/q4;->a(Lio/didomi/sdk/q4;)Lio/didomi/sdk/S0;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    iget-object p1, p1, Lio/didomi/sdk/S0;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_29

    :cond_28
    move-object p1, v1

    :goto_29
    instance-of v2, p1, Lio/didomi/sdk/m4;

    if-eqz v2, :cond_30

    move-object v1, p1

    check-cast v1, Lio/didomi/sdk/m4;

    :cond_30
    if-eqz v1, :cond_40

    iget-object p1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-virtual {p1}, Lio/didomi/sdk/q4;->b()Lio/didomi/sdk/a5;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/m4;->a(Ljava/util/List;)V

    :cond_40
    iget-object p1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-static {p1}, Lio/didomi/sdk/q4;->c(Lio/didomi/sdk/q4;)V

    return-void

    :cond_46
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Category is invalid"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/q4$d$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_52

    if-ne v0, v1, :cond_36

    iget-object p1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-virtual {p1}, Lio/didomi/sdk/q4;->b()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    if-nez p1, :cond_25

    return-void

    :cond_25
    sget-object p2, Lio/didomi/sdk/u4;->e:Lio/didomi/sdk/u4$a;

    iget-object v0, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lio/didomi/sdk/u4$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_58

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
    const-string p1, "A Purpose Category should not contain other categories."

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, p2}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_58
    return-void
.end method

.method public a(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-static {v0}, Lio/didomi/sdk/q4;->b(Lio/didomi/sdk/q4;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-virtual {v1}, Lio/didomi/sdk/q4;->b()Lio/didomi/sdk/a5;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v2, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-virtual {v2}, Lio/didomi/sdk/q4;->b()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/didomi/sdk/a5;->u(Lio/didomi/sdk/models/InternalPurpose;)V

    sget-object v3, Lio/didomi/sdk/w4$a;->f:Lio/didomi/sdk/w4$a;

    if-ne p1, v3, :cond_5d

    invoke-virtual {v2}, Lio/didomi/sdk/q4;->b()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-static {v2}, Lio/didomi/sdk/q4;->a(Lio/didomi/sdk/q4;)Lio/didomi/sdk/S0;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_47

    iget-object p1, p1, Lio/didomi/sdk/S0;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_48

    :cond_47
    move-object p1, v1

    :goto_48
    instance-of v3, p1, Lio/didomi/sdk/m4;

    if-eqz v3, :cond_4f

    move-object v1, p1

    check-cast v1, Lio/didomi/sdk/m4;

    :cond_4f
    if-eqz v1, :cond_5d

    invoke-virtual {v2}, Lio/didomi/sdk/q4;->b()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v1, p2, p3, p1, v0}, Lio/didomi/sdk/m4;->b(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_5d
    iget-object p1, p0, Lio/didomi/sdk/q4$d;->a:Lio/didomi/sdk/q4;

    invoke-static {p1}, Lio/didomi/sdk/q4;->c(Lio/didomi/sdk/q4;)V

    return-void

    :cond_63
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Category is invalid"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method
