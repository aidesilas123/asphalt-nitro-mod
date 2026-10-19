###### Class io.didomi.drawable.C1885r8 (io.didomi.sdk.r8)
.class public final Lio/didomi/sdk/r8;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/C8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/r8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001+\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ+\u0010 \u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0004\u0008 \u0010!J!\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0004J\u000f\u0010&\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008&\u0010\u0004J\u000f\u0010\'\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u000f\u0010(\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008(\u0010\u0004J\u000f\u0010)\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008)\u0010\u0004J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J\r\u0010*\u001a\u00020\t\u00a2\u0006\u0004\u0008*\u0010\u0004R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010,R\"\u00103\u001a\u00020.8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010/\u001a\u0004\u0008\r\u00100\"\u0004\u00081\u00102R\"\u0010:\u001a\u0002048\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00085\u00107\"\u0004\u00088\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010C\u00a8\u0006F"
    }
    d2 = {
        "Lio/didomi/sdk/r8;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Lio/didomi/sdk/C8;",
        "<init>",
        "()V",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "consentStatus",
        "",
        "a",
        "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "legIntState",
        "b",
        "e",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "",
        "getTheme",
        "()I",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "onPause",
        "dismiss",
        "onDetach",
        "onDestroyView",
        "d",
        "io/didomi/sdk/r8$f",
        "Lio/didomi/sdk/r8$f;",
        "vendorListCallback",
        "Lio/didomi/sdk/t8;",
        "Lio/didomi/sdk/t8;",
        "()Lio/didomi/sdk/t8;",
        "setModel",
        "(Lio/didomi/sdk/t8;)V",
        "model",
        "Lio/didomi/sdk/D8;",
        "c",
        "Lio/didomi/sdk/D8;",
        "()Lio/didomi/sdk/D8;",
        "setUiProvider",
        "(Lio/didomi/sdk/D8;)V",
        "uiProvider",
        "Lio/didomi/sdk/l1;",
        "Lio/didomi/sdk/l1;",
        "binding",
        "Lio/didomi/sdk/s6;",
        "Lio/didomi/sdk/s6;",
        "listener",
        "Lkotlinx/coroutines/Job;",
        "f",
        "Lkotlinx/coroutines/Job;",
        "job",
        "g",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final g:Lio/didomi/sdk/r8$a;


# instance fields
.field private final a:Lio/didomi/sdk/r8$f;

.field public b:Lio/didomi/sdk/t8;

.field public c:Lio/didomi/sdk/D8;

.field private d:Lio/didomi/sdk/l1;

.field private e:Lio/didomi/sdk/s6;

.field private f:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/r8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/r8$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/r8;->g:Lio/didomi/sdk/r8$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    new-instance v0, Lio/didomi/sdk/r8$f;

    invoke-direct {v0, p0}, Lio/didomi/sdk/r8$f;-><init>(Lio/didomi/sdk/r8;)V

    iput-object v0, p0, Lio/didomi/sdk/r8;->a:Lio/didomi/sdk/r8$f;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/r8;)Lio/didomi/sdk/l1;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/l1;Lio/didomi/sdk/r8;)V
    .registers 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lio/didomi/sdk/l8;

    if-eqz v0, :cond_17

    check-cast p0, Lio/didomi/sdk/l8;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_25

    invoke-virtual {p1}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/t8;->i0()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/l8;->a(I)V

    :cond_25
    return-void
.end method

.method private final a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p2, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    iget-object p2, p2, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    goto :goto_16

    :cond_15
    move-object p2, v0

    :goto_16
    instance-of v1, p2, Lio/didomi/sdk/l8;

    if-eqz v1, :cond_1d

    move-object v0, p2

    check-cast v0, Lio/didomi/sdk/l8;

    :cond_1d
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/didomi/sdk/t8;->M(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/g8$g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l8;->a(Lio/didomi/sdk/g8$g;)V

    :cond_2a
    invoke-direct {p0}, Lio/didomi/sdk/r8;->e()V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/r8;Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/r8;->a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

.method private static final a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/r8;)Lio/didomi/sdk/s6;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/r8;->e:Lio/didomi/sdk/s6;

    return-object p0
.end method

.method private final b(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p2, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    iget-object p2, p2, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    goto :goto_16

    :cond_15
    move-object p2, v0

    :goto_16
    instance-of v1, p2, Lio/didomi/sdk/l8;

    if-eqz v1, :cond_1d

    move-object v0, p2

    check-cast v0, Lio/didomi/sdk/l8;

    :cond_1d
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/didomi/sdk/t8;->M(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/g8$g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l8;->a(Lio/didomi/sdk/g8$g;)V

    :cond_2a
    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/r8;Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/r8;->b(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

.method private static final b(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lio/didomi/sdk/r8;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/r8;->e()V

    return-void
.end method

.method private final e()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/l8;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/l8;

    :cond_16
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/t8;->A0()Lio/didomi/sdk/g8$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/didomi/sdk/l8;->a(Lio/didomi/sdk/g8$a;)V

    :cond_23
    return-void
.end method

.method public static synthetic f(Lio/didomi/sdk/l1;Lio/didomi/sdk/r8;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/r8;->a(Lio/didomi/sdk/l1;Lio/didomi/sdk/r8;)V

    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/r8;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/r8;->b(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/didomi/sdk/l1;->a()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/mf;

    invoke-direct {v2, v0, p0}, Lio/didomi/sdk/mf;-><init>(Lio/didomi/sdk/l1;Lio/didomi/sdk/r8;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public final b()Lio/didomi/sdk/t8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/r8;->b:Lio/didomi/sdk/t8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/D8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/r8;->c:Lio/didomi/sdk/D8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "uiProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$anim;->didomi_enter_from_right:I

    sget v2, Lio/didomi/sdk/R$anim;->didomi_fade_out:I

    sget v3, Lio/didomi/sdk/R$anim;->didomi_fade_in:I

    sget v4, Lio/didomi/sdk/R$anim;->didomi_exit_to_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$id;->container_ctv_preferences_secondary:I

    new-instance v2, Lio/didomi/sdk/T7;

    invoke-direct {v2}, Lio/didomi/sdk/T7;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "TVVendorDetailFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    iget-object v0, p0, Lio/didomi/sdk/r8;->e:Lio/didomi/sdk/s6;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lio/didomi/sdk/s6;->e()V

    :cond_a
    return-void
.end method

.method public getTheme()I
    .registers 2

    sget v0, Lio/didomi/sdk/R$style;->Didomi_Theme_TVDialog:I

    return v0
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

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/r8;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lio/didomi/sdk/s6;

    if-eqz v0, :cond_20

    check-cast p1, Lio/didomi/sdk/s6;

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-object p1, p0, Lio/didomi/sdk/r8;->e:Lio/didomi/sdk/s6;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    const-string v0, "super.onCreateDialog(sav\u2026), 0, 0, 0, 0))\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/l1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/l1;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    invoke-virtual {p1}, Lio/didomi/sdk/l1;->a()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, parent\u2026g = it\n            }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    iget-object v0, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_12
    iput-object v1, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->L()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->O()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/t8;->d(I)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/t8;->e(I)V

    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/sdk/r8;->e:Lio/didomi/sdk/s6;

    return-void
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lio/didomi/sdk/r8;->f:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->c()Lio/didomi/sdk/D8;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/D8;->a()Lkotlinx/coroutines/flow/u;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/r8$b;

    invoke-direct {v1, p0}, Lio/didomi/sdk/r8$b;-><init>(Lio/didomi/sdk/r8;)V

    invoke-static {p0, v0, v1}, Lio/didomi/sdk/N2;->a(Landroidx/fragment/app/Fragment;Lkotlinx/coroutines/flow/u;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/r8;->f:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lio/didomi/sdk/r8;->d:Lio/didomi/sdk/l1;

    if-eqz p2, :cond_4e

    iget-object p2, p2, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_4e

    new-instance v0, Lio/didomi/sdk/l8;

    iget-object v1, p0, Lio/didomi/sdk/r8;->a:Lio/didomi/sdk/r8$f;

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/t8;->L0()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/l8;-><init>(Lio/didomi/sdk/l8$a;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lio/didomi/sdk/view/ctv/CenterLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "view.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-direct {v0, p1, v6, v1}, Lio/didomi/sdk/view/ctv/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lio/didomi/sdk/R2;

    new-instance v3, Lio/didomi/sdk/r8$c;

    invoke-direct {v3, p2}, Lio/didomi/sdk/r8$c;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/R2;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    :cond_4e
    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/t8;->U0()V

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->L()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/r8$d;

    invoke-direct {v1, p0}, Lio/didomi/sdk/r8$d;-><init>(Lio/didomi/sdk/r8;)V

    new-instance v2, Lio/didomi/sdk/nf;

    invoke-direct {v2, v1}, Lio/didomi/sdk/nf;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->O()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lio/didomi/sdk/r8$e;

    invoke-direct {v0, p0}, Lio/didomi/sdk/r8$e;-><init>(Lio/didomi/sdk/r8;)V

    new-instance v1, Lio/didomi/sdk/of;

    invoke-direct {v1, v0}, Lio/didomi/sdk/of;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

###### Class io.didomi.drawable.C1885r8.a (io.didomi.sdk.r8$a)
.class public final Lio/didomi/sdk/r8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/r8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/r8$a;",
        "",
        "<init>",
        "()V",
        "",
        "TAG",
        "Ljava/lang/String;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/r8$a;-><init>()V

    return-void
.end method

###### Class io.didomi.drawable.C1885r8.b (io.didomi.sdk.r8$b)
.class final Lio/didomi/sdk/r8$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/r8;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(Z)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/r8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/r8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/r8$b;->a:Lio/didomi/sdk/r8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    if-nez p1, :cond_7

    iget-object p1, p0, Lio/didomi/sdk/r8$b;->a:Lio/didomi/sdk/r8;

    invoke-virtual {p1}, Lio/didomi/sdk/r8;->dismiss()V

    :cond_7
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/r8$b;->a(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.drawable.C1885r8.c (io.didomi.sdk.r8$c)
.class final Lio/didomi/sdk/r8$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/r8;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(I)Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/r8$c;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/r8$c;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/r8$c;->a(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class io.didomi.drawable.C1885r8.d (io.didomi.sdk.r8$d)
.class final Lio/didomi/sdk/r8$d;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/r8;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "kotlin.jvm.PlatformType",
        "consentState",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/r8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/r8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/r8$d;->a:Lio/didomi/sdk/r8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/r8$d;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lio/didomi/sdk/r8$d;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-nez v0, :cond_20

    return-void

    :cond_20
    iget-object v1, p0, Lio/didomi/sdk/r8$d;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v1}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz p1, :cond_33

    iget-object v1, p0, Lio/didomi/sdk/r8$d;->a:Lio/didomi/sdk/r8;

    invoke-static {v1, v0, p1}, Lio/didomi/sdk/r8;->a(Lio/didomi/sdk/r8;Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    :cond_33
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/r8$d;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.drawable.C1885r8.e (io.didomi.sdk.r8$e)
.class final Lio/didomi/sdk/r8$e;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/r8;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "kotlin.jvm.PlatformType",
        "legIntState",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/r8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/r8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/r8$e;->a:Lio/didomi/sdk/r8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/r8$e;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lio/didomi/sdk/r8$e;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-nez v0, :cond_20

    return-void

    :cond_20
    iget-object v1, p0, Lio/didomi/sdk/r8$e;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v1}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz p1, :cond_33

    iget-object v1, p0, Lio/didomi/sdk/r8$e;->a:Lio/didomi/sdk/r8;

    invoke-static {v1, v0, p1}, Lio/didomi/sdk/r8;->b(Lio/didomi/sdk/r8;Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    :cond_33
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/r8$e;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.drawable.C1885r8.f (io.didomi.sdk.r8$f)
.class public final Lio/didomi/sdk/r8$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/l8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/r8;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\nJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "io/didomi/sdk/r8$f",
        "Lio/didomi/sdk/l8$a;",
        "",
        "isChecked",
        "",
        "a",
        "(Z)V",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "(Lio/didomi/sdk/models/InternalVendor;)V",
        "(Lio/didomi/sdk/models/InternalVendor;Z)V",
        "()V",
        "",
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
.field final synthetic a:Lio/didomi/sdk/r8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/r8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/r8;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/r8;->a(Lio/didomi/sdk/r8;)Lio/didomi/sdk/l1;

    move-result-object p0

    if-eqz p0, :cond_16

    iget-object p0, p0, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_16

    const/4 v0, 0x4

    if-gt p1, v0, :cond_13

    const/4 p1, 0x0

    :cond_13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_16
    return-void
.end method

.method public static synthetic b(Lio/didomi/sdk/r8;I)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/r8$f;->a(Lio/didomi/sdk/r8;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-static {v0}, Lio/didomi/sdk/r8;->b(Lio/didomi/sdk/r8;)Lio/didomi/sdk/s6;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lio/didomi/sdk/s6;->d()V

    :cond_b
    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/t8;->e(I)V

    iget-object v0, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    new-instance v2, Lio/didomi/sdk/pf;

    invoke-direct {v2, v1, p1}, Lio/didomi/sdk/pf;-><init>(Lio/didomi/sdk/r8;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/h9;->D(Lio/didomi/sdk/models/InternalVendor;)V

    invoke-virtual {v0, p1}, Lio/didomi/sdk/h9;->B(Lio/didomi/sdk/models/InternalVendor;)V

    iget-object p1, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {p1}, Lio/didomi/sdk/r8;->d()V

    return-void
.end method

.method public a(Lio/didomi/sdk/models/InternalVendor;Z)V
    .registers 5

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    if-eqz p2, :cond_10

    sget-object p2, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_12

    :cond_10
    sget-object p2, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_12
    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/h9;->c(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p2, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-static {p2}, Lio/didomi/sdk/r8;->a(Lio/didomi/sdk/r8;)Lio/didomi/sdk/l1;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    iget-object p2, p2, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    goto :goto_28

    :cond_27
    move-object p2, v0

    :goto_28
    instance-of v1, p2, Lio/didomi/sdk/l8;

    if-eqz v1, :cond_2f

    move-object v0, p2

    check-cast v0, Lio/didomi/sdk/l8;

    :cond_2f
    if-eqz v0, :cond_3e

    iget-object p2, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {p2}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/didomi/sdk/t8;->M(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/g8$g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l8;->a(Lio/didomi/sdk/g8$g;)V

    :cond_3e
    iget-object p1, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-static {p1}, Lio/didomi/sdk/r8;->c(Lio/didomi/sdk/r8;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {v0}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/t8;->b(Z)V

    iget-object p1, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-static {p1}, Lio/didomi/sdk/r8;->a(Lio/didomi/sdk/r8;)Lio/didomi/sdk/l1;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lio/didomi/sdk/l1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    instance-of v1, p1, Lio/didomi/sdk/l8;

    if-eqz v1, :cond_23

    move-object v0, p1

    check-cast v0, Lio/didomi/sdk/l8;

    :cond_23
    if-eqz v0, :cond_32

    iget-object p1, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-virtual {p1}, Lio/didomi/sdk/r8;->b()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/t8;->z0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l8;->a(Ljava/util/List;)V

    :cond_32
    iget-object p1, p0, Lio/didomi/sdk/r8$f;->a:Lio/didomi/sdk/r8;

    invoke-static {p1}, Lio/didomi/sdk/r8;->c(Lio/didomi/sdk/r8;)V

    return-void
.end method

###### Class io.didomi.drawable.pf (io.didomi.sdk.pf)
.class public final synthetic Lio/didomi/sdk/pf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/r8;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/r8;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/pf;->a:Lio/didomi/sdk/r8;

    iput p2, p0, Lio/didomi/sdk/pf;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/pf;->a:Lio/didomi/sdk/r8;

    iget v1, p0, Lio/didomi/sdk/pf;->b:I

    invoke-static {v0, v1}, Lio/didomi/sdk/r8$f;->b(Lio/didomi/sdk/r8;I)V

    return-void
.end method

###### Class io.didomi.drawable.mf (io.didomi.sdk.mf)
.class public final synthetic Lio/didomi/sdk/mf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/l1;

.field public final synthetic b:Lio/didomi/sdk/r8;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/l1;Lio/didomi/sdk/r8;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/mf;->a:Lio/didomi/sdk/l1;

    iput-object p2, p0, Lio/didomi/sdk/mf;->b:Lio/didomi/sdk/r8;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/mf;->a:Lio/didomi/sdk/l1;

    iget-object v1, p0, Lio/didomi/sdk/mf;->b:Lio/didomi/sdk/r8;

    invoke-static {v0, v1}, Lio/didomi/sdk/r8;->f(Lio/didomi/sdk/l1;Lio/didomi/sdk/r8;)V

    return-void
.end method

###### Class io.didomi.drawable.nf (io.didomi.sdk.nf)
.class public final synthetic Lio/didomi/sdk/nf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/nf;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/nf;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/r8;->g(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.didomi.drawable.of (io.didomi.sdk.of)
.class public final synthetic Lio/didomi/sdk/of;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/of;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/of;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/r8;->h(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method
