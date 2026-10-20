###### Class io.didomi.drawable.C1953y6 (io.didomi.sdk.y6)
.class public final Lio/didomi/sdk/y6;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/y6$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u001a\u0018\u0000 (2\u00020\u0001:\u0001\u0007B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001bR\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u0007\u0010 \"\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006)"
    }
    d2 = {
        "Lio/didomi/sdk/y6;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Lio/didomi/sdk/d9;",
        "listType",
        "",
        "a",
        "(Lio/didomi/sdk/d9;)V",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "io/didomi/sdk/y6$b",
        "Lio/didomi/sdk/y6$b;",
        "callback",
        "Lio/didomi/sdk/l7;",
        "b",
        "Lio/didomi/sdk/l7;",
        "()Lio/didomi/sdk/l7;",
        "setModel",
        "(Lio/didomi/sdk/l7;)V",
        "model",
        "Lio/didomi/sdk/a1;",
        "c",
        "Lio/didomi/sdk/a1;",
        "binding",
        "d",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lio/didomi/sdk/y6$a;


# instance fields
.field private final a:Lio/didomi/sdk/y6$b;

.field public b:Lio/didomi/sdk/l7;

.field private c:Lio/didomi/sdk/a1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/y6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/y6$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/y6;->d:Lio/didomi/sdk/y6$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lio/didomi/sdk/y6$b;

    invoke-direct {v0, p0}, Lio/didomi/sdk/y6$b;-><init>(Lio/didomi/sdk/y6;)V

    iput-object v0, p0, Lio/didomi/sdk/y6;->a:Lio/didomi/sdk/y6$b;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/y6;)Lio/didomi/sdk/a1;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/y6;->c:Lio/didomi/sdk/a1;

    return-object p0
.end method

.method private final a(Lio/didomi/sdk/d9;)V
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/y6;->a()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-nez v0, :cond_11

    return-void

    :cond_11
    sget-object v1, Lio/didomi/sdk/T6;->c:Lio/didomi/sdk/T6$a;

    invoke-virtual {v1, v0, p1}, Lio/didomi/sdk/T6$a;->a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/d9;)Lio/didomi/sdk/T6;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$anim;->didomi_enter_from_right:I

    sget v2, Lio/didomi/sdk/R$anim;->didomi_fade_out:I

    sget v3, Lio/didomi/sdk/R$anim;->didomi_fade_in:I

    sget v4, Lio/didomi/sdk/R$anim;->didomi_exit_to_right_alpha:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$id;->container_ctv_preferences_secondary:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "io.didomi.dialog.TV_PURPOSE_VENDORS_FRAGMENT"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/y6;Lio/didomi/sdk/d9;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/y6;->a(Lio/didomi/sdk/d9;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/l7;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/y6;->b:Lio/didomi/sdk/l7;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getComponent$android_release()Lio/didomi/sdk/J0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/y6;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/a1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/a1;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/y6;->c:Lio/didomi/sdk/a1;

    invoke-virtual {p1}, Lio/didomi/sdk/a1;->a()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, parent\u2026g = it\n            }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lio/didomi/sdk/y6;->c:Lio/didomi/sdk/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, v0, Lio/didomi/sdk/a1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_15
    iput-object v1, p0, Lio/didomi/sdk/y6;->c:Lio/didomi/sdk/a1;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lio/didomi/sdk/y6;->c:Lio/didomi/sdk/a1;

    if-eqz p1, :cond_49

    iget-object p1, p1, Lio/didomi/sdk/a1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_49

    new-instance p2, Lio/didomi/sdk/b7;

    iget-object v0, p0, Lio/didomi/sdk/y6;->a:Lio/didomi/sdk/y6$b;

    invoke-virtual {p0}, Lio/didomi/sdk/y6;->a()Lio/didomi/sdk/l7;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/l7;->E1()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lio/didomi/sdk/b7;-><init>(Lio/didomi/sdk/b7$a;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-direct {p2, v0, v6, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lio/didomi/sdk/R2;

    new-instance v3, Lio/didomi/sdk/y6$c;

    invoke-direct {v3, p1}, Lio/didomi/sdk/y6$c;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/R2;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    :cond_49
    return-void
.end method
