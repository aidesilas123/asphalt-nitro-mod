###### Class io.didomi.sdk.L5.c (io.didomi.sdk.L5$c)
.class public final Lio/didomi/sdk/L5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/G5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/L5;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/L5$c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "io/didomi/sdk/L5$c",
        "Lio/didomi/sdk/G5$a;",
        "Lio/didomi/sdk/W3$a;",
        "type",
        "",
        "id",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "a",
        "(Lio/didomi/sdk/W3$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "(Lio/didomi/sdk/W3$a;Ljava/lang/String;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/L5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/L5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/L5$c;->a:Lio/didomi/sdk/L5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/W3$a;Ljava/lang/String;)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/L5$c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    iget-object p1, p0, Lio/didomi/sdk/L5$c;->a:Lio/didomi/sdk/L5;

    invoke-virtual {p1}, Lio/didomi/sdk/L5;->c()Lio/didomi/sdk/Q5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/Q5;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-nez p1, :cond_22

    return-void

    :cond_22
    sget-object p2, Lio/didomi/sdk/H5;->g:Lio/didomi/sdk/H5$a;

    iget-object v0, p0, Lio/didomi/sdk/L5$c;->a:Lio/didomi/sdk/L5;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lio/didomi/sdk/H5$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    return-void

    :cond_33
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
.end method

.method public a(Lio/didomi/sdk/W3$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 9

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/L5$c;->a:Lio/didomi/sdk/L5;

    invoke-virtual {v0}, Lio/didomi/sdk/L5;->c()Lio/didomi/sdk/Q5;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/didomi/sdk/Q5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    iget-object v3, p0, Lio/didomi/sdk/L5$c;->a:Lio/didomi/sdk/L5;

    sget-object v4, Lio/didomi/sdk/W3$a;->e:Lio/didomi/sdk/W3$a;

    if-ne p1, v4, :cond_47

    invoke-virtual {v3}, Lio/didomi/sdk/L5;->c()Lio/didomi/sdk/Q5;

    move-result-object v4

    invoke-virtual {v4, v0, p3}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-static {v3}, Lio/didomi/sdk/L5;->a(Lio/didomi/sdk/L5;)Lio/didomi/sdk/V0;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, v0, Lio/didomi/sdk/V0;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_3a

    :cond_39
    move-object v0, v2

    :goto_3a
    instance-of v3, v0, Lio/didomi/sdk/G5;

    if-eqz v3, :cond_41

    check-cast v0, Lio/didomi/sdk/G5;

    goto :goto_42

    :cond_41
    move-object v0, v2

    :goto_42
    if-eqz v0, :cond_47

    invoke-virtual {v0, p2, p3, v1}, Lio/didomi/sdk/G5;->b(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_47
    sget-object v0, Lio/didomi/sdk/W3$a;->a:Lio/didomi/sdk/W3$a;

    if-ne p1, v0, :cond_84

    iget-object p1, p0, Lio/didomi/sdk/L5$c;->a:Lio/didomi/sdk/L5;

    invoke-virtual {p1}, Lio/didomi/sdk/L5;->c()Lio/didomi/sdk/Q5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/Q5;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-eqz p1, :cond_84

    iget-object v0, p0, Lio/didomi/sdk/L5$c;->a:Lio/didomi/sdk/L5;

    invoke-virtual {v0}, Lio/didomi/sdk/L5;->c()Lio/didomi/sdk/Q5;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {v0}, Lio/didomi/sdk/L5;->c()Lio/didomi/sdk/Q5;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/didomi/sdk/Q5;->d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    invoke-static {v0}, Lio/didomi/sdk/L5;->a(Lio/didomi/sdk/L5;)Lio/didomi/sdk/V0;

    move-result-object p3

    if-eqz p3, :cond_77

    iget-object p3, p3, Lio/didomi/sdk/V0;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_77

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    goto :goto_78

    :cond_77
    move-object p3, v2

    :goto_78
    instance-of v0, p3, Lio/didomi/sdk/G5;

    if-eqz v0, :cond_7f

    move-object v2, p3

    check-cast v2, Lio/didomi/sdk/G5;

    :cond_7f
    if-eqz v2, :cond_84

    invoke-virtual {v2, p2, p1, v1}, Lio/didomi/sdk/G5;->a(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_84
    return-void
.end method
