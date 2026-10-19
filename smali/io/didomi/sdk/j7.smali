###### Class io.didomi.drawable.C1804j7 (io.didomi.sdk.j7)
.class public final Lio/didomi/sdk/j7;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/C8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/j7$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006*\u0001E\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\tJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\rJ\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u0017\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ+\u0010\"\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020!2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0004J\u0017\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004R\"\u00105\u001a\u0002008\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u00101\u001a\u0004\u0008\u0008\u00102\"\u0004\u00083\u00104R\"\u0010;\u001a\u0002068\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00107\u001a\u0004\u0008\u000c\u00108\"\u0004\u00089\u0010:R\u0018\u0010>\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010G\u00a8\u0006J"
    }
    d2 = {
        "Lio/didomi/sdk/j7;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Lio/didomi/sdk/C8;",
        "<init>",
        "()V",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "category",
        "",
        "b",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "purpose",
        "c",
        "(Lio/didomi/sdk/models/InternalPurpose;)V",
        "Lio/didomi/sdk/o0;",
        "dataProcessing",
        "a",
        "(Lio/didomi/sdk/o0;)V",
        "d",
        "e",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
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
        "Landroid/content/DialogInterface;",
        "dialog",
        "onCancel",
        "(Landroid/content/DialogInterface;)V",
        "dismiss",
        "onDetach",
        "onDestroyView",
        "Lio/didomi/sdk/l7;",
        "Lio/didomi/sdk/l7;",
        "()Lio/didomi/sdk/l7;",
        "setModel",
        "(Lio/didomi/sdk/l7;)V",
        "model",
        "Lio/didomi/sdk/D8;",
        "Lio/didomi/sdk/D8;",
        "()Lio/didomi/sdk/D8;",
        "setUiProvider",
        "(Lio/didomi/sdk/D8;)V",
        "uiProvider",
        "Lio/didomi/sdk/e1;",
        "Lio/didomi/sdk/e1;",
        "binding",
        "Lio/didomi/sdk/O3;",
        "Lio/didomi/sdk/O3;",
        "listener",
        "Lio/didomi/sdk/d4;",
        "Lio/didomi/sdk/d4;",
        "dismissHelper",
        "io/didomi/sdk/j7$f",
        "f",
        "Lio/didomi/sdk/j7$f;",
        "purposeListAdapterCallback",
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
.field public static final g:Lio/didomi/sdk/j7$a;


# instance fields
.field public a:Lio/didomi/sdk/l7;

.field public b:Lio/didomi/sdk/D8;

.field private c:Lio/didomi/sdk/e1;

.field private d:Lio/didomi/sdk/O3;

.field private final e:Lio/didomi/sdk/d4;

.field private final f:Lio/didomi/sdk/j7$f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/j7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/j7$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/j7;->g:Lio/didomi/sdk/j7$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    new-instance v0, Lio/didomi/sdk/d4;

    invoke-direct {v0}, Lio/didomi/sdk/d4;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/j7;->e:Lio/didomi/sdk/d4;

    new-instance v0, Lio/didomi/sdk/j7$f;

    invoke-direct {v0, p0}, Lio/didomi/sdk/j7$f;-><init>(Lio/didomi/sdk/j7;)V

    iput-object v0, p0, Lio/didomi/sdk/j7;->f:Lio/didomi/sdk/j7$f;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/j7;)Lio/didomi/sdk/e1;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V
    .registers 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lio/didomi/sdk/L6;

    if-eqz v0, :cond_17

    check-cast p0, Lio/didomi/sdk/L6;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_25

    invoke-virtual {p1}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/l7;->K1()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/L6;->a(I)V

    :cond_25
    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/j7;Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/j7;Lio/didomi/sdk/o0;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/o0;)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/j7;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    return-void
.end method

.method private final a(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/L6;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_16
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l7;->z(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/J6$i;)V

    :cond_23
    invoke-direct {p0}, Lio/didomi/sdk/j7;->e()V

    return-void
.end method

.method private final a(Lio/didomi/sdk/o0;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

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

    sget-object v2, Lio/didomi/sdk/h6;->e:Lio/didomi/sdk/h6$a;

    invoke-virtual {v2, p1}, Lio/didomi/sdk/h6$a;->a(Lio/didomi/sdk/o0;)Lio/didomi/sdk/h6;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "io.didomi.dialog.ADDITIONAL_DATA_PROCESSING_DETAIL"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/L6;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_16
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l7;->n(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/J6$d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/J6$d;)V

    :cond_23
    invoke-direct {p0}, Lio/didomi/sdk/j7;->e()V

    return-void
.end method

.method private static final a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/j7;)Lio/didomi/sdk/O3;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/j7;->d:Lio/didomi/sdk/O3;

    return-object p0
.end method

.method public static final synthetic b(Lio/didomi/sdk/j7;Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/j7;->b(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/j7;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/j7;->b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    return-void
.end method

.method private final b(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/L6;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_16
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/l7;->z(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/J6$i;)V

    :cond_23
    return-void
.end method

.method private final b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/l7;->d(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

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

    sget-object v2, Lio/didomi/sdk/B6;->e:Lio/didomi/sdk/B6$a;

    invoke-virtual {v2, p1}, Lio/didomi/sdk/B6$a;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/B6;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "TVPurposeCategoryFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private static final b(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lio/didomi/sdk/j7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/j7;->d()V

    return-void
.end method

.method public static final synthetic c(Lio/didomi/sdk/j7;Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/j7;->c(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method private final c(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

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

    sget-object v2, Lio/didomi/sdk/E6;->e:Lio/didomi/sdk/E6$a;

    invoke-virtual {v2, p1}, Lio/didomi/sdk/E6$a;->a(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E6;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "TVPurposeDetailFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private static final c(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final d()V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

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

    sget-object v2, Lio/didomi/sdk/o7;->c:Lio/didomi/sdk/o7$a;

    invoke-virtual {v2}, Lio/didomi/sdk/o7$a;->a()Lio/didomi/sdk/o7;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "TVSdkStorageDisclosureFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static final synthetic d(Lio/didomi/sdk/j7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/j7;->e()V

    return-void
.end method

.method private final e()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/L6;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/L6;

    :cond_16
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/l7;->M1()Lio/didomi/sdk/J6$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/J6$c;)V

    :cond_23
    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/j7;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V

    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/j7;->b(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/j7;->c(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/didomi/sdk/e1;->a()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/me;

    invoke-direct {v2, v0, p0}, Lio/didomi/sdk/me;-><init>(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public final b()Lio/didomi/sdk/l7;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j7;->a:Lio/didomi/sdk/l7;

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

    iget-object v0, p0, Lio/didomi/sdk/j7;->b:Lio/didomi/sdk/D8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "uiProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    iget-object v0, p0, Lio/didomi/sdk/j7;->d:Lio/didomi/sdk/O3;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lio/didomi/sdk/O3;->c()V

    :cond_a
    return-void
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

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/j7;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lio/didomi/sdk/O3;

    if-eqz v0, :cond_20

    check-cast p1, Lio/didomi/sdk/O3;

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-object p1, p0, Lio/didomi/sdk/j7;->d:Lio/didomi/sdk/O3;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->i1()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$style;->Didomi_Theme_TVDialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2a

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

    :cond_2a
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/e1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/e1;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    invoke-virtual {p1}, Lio/didomi/sdk/e1;->a()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, parent\u2026g = it\n            }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    iget-object v0, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_12
    iput-object v1, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->t0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->w0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->y0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/l7;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/l7;->c(I)V

    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/sdk/j7;->d:Lio/didomi/sdk/O3;

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lio/didomi/sdk/j7;->e:Lio/didomi/sdk/d4;

    invoke-virtual {v0}, Lio/didomi/sdk/d4;->a()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lio/didomi/sdk/j7;->e:Lio/didomi/sdk/d4;

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->c()Lio/didomi/sdk/D8;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/didomi/sdk/d4;->a(Landroidx/fragment/app/DialogFragment;Lio/didomi/sdk/D8;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lio/didomi/sdk/j7;->c:Lio/didomi/sdk/e1;

    if-eqz p1, :cond_51

    iget-object p1, p1, Lio/didomi/sdk/e1;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lio/didomi/sdk/L6;

    iget-object v0, p0, Lio/didomi/sdk/j7;->f:Lio/didomi/sdk/j7$f;

    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/l7;->R1()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lio/didomi/sdk/L6;-><init>(Lio/didomi/sdk/L6$a;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p2, Lio/didomi/sdk/view/ctv/CenterLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-direct {p2, v0, v6, v1}, Lio/didomi/sdk/view/ctv/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lio/didomi/sdk/R2;

    const-string v0, "this"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lio/didomi/sdk/j7$b;

    invoke-direct {v3, p1}, Lio/didomi/sdk/j7$b;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/R2;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    :cond_51
    invoke-virtual {p0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->k1()V

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->t0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/j7$c;

    invoke-direct {v1, p0}, Lio/didomi/sdk/j7$c;-><init>(Lio/didomi/sdk/j7;)V

    new-instance v2, Lio/didomi/sdk/le;

    invoke-direct {v2, v1}, Lio/didomi/sdk/le;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->w0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/j7$d;

    invoke-direct {v1, p0}, Lio/didomi/sdk/j7$d;-><init>(Lio/didomi/sdk/j7;)V

    new-instance v2, Lio/didomi/sdk/ne;

    invoke-direct {v2, v1}, Lio/didomi/sdk/ne;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->y0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lio/didomi/sdk/j7$e;

    invoke-direct {v0, p0}, Lio/didomi/sdk/j7$e;-><init>(Lio/didomi/sdk/j7;)V

    new-instance v1, Lio/didomi/sdk/oe;

    invoke-direct {v1, v0}, Lio/didomi/sdk/oe;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

###### Class io.didomi.drawable.C1804j7.a (io.didomi.sdk.j7$a)
.class public final Lio/didomi/sdk/j7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/j7;
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
        "Lio/didomi/sdk/j7$a;",
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

    invoke-direct {p0}, Lio/didomi/sdk/j7$a;-><init>()V

    return-void
.end method

###### Class io.didomi.drawable.C1804j7.b (io.didomi.sdk.j7$b)
.class final Lio/didomi/sdk/j7$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j7;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lio/didomi/sdk/j7$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/j7$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.adapter.TVPurposeListAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/didomi/sdk/L6;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/L6;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/j7$b;->a(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class io.didomi.drawable.C1804j7.c (io.didomi.sdk.j7$c)
.class final Lio/didomi/sdk/j7$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j7;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "it",
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
.field final synthetic a:Lio/didomi/sdk/j7;


# direct methods
.method constructor <init>(Lio/didomi/sdk/j7;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/j7$c;->a:Lio/didomi/sdk/j7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    iget-object p1, p0, Lio/didomi/sdk/j7$c;->a:Lio/didomi/sdk/j7;

    invoke-virtual {p1}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->s0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/j7$c;->a:Lio/didomi/sdk/j7;

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/j7;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/j7$c;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.drawable.C1804j7.d (io.didomi.sdk.j7$d)
.class final Lio/didomi/sdk/j7$d;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j7;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "it",
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
.field final synthetic a:Lio/didomi/sdk/j7;


# direct methods
.method constructor <init>(Lio/didomi/sdk/j7;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/j7$d;->a:Lio/didomi/sdk/j7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    iget-object p1, p0, Lio/didomi/sdk/j7$d;->a:Lio/didomi/sdk/j7;

    invoke-virtual {p1}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/InternalPurpose;

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/j7$d;->a:Lio/didomi/sdk/j7;

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->a(Lio/didomi/sdk/j7;Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/j7$d;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.drawable.C1804j7.e (io.didomi.sdk.j7$e)
.class final Lio/didomi/sdk/j7$e;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j7;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "it",
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
.field final synthetic a:Lio/didomi/sdk/j7;


# direct methods
.method constructor <init>(Lio/didomi/sdk/j7;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/j7$e;->a:Lio/didomi/sdk/j7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    iget-object p1, p0, Lio/didomi/sdk/j7$e;->a:Lio/didomi/sdk/j7;

    invoke-virtual {p1}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/InternalPurpose;

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/j7$e;->a:Lio/didomi/sdk/j7;

    invoke-virtual {v0}, Lio/didomi/sdk/j7;->b()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->w(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lio/didomi/sdk/j7$e;->a:Lio/didomi/sdk/j7;

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->b(Lio/didomi/sdk/j7;Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_24
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/j7$e;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

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

###### Class io.didomi.drawable.pe (io.didomi.sdk.pe)
.class public final synthetic Lio/didomi/sdk/pe;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/j7;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/j7;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/pe;->a:Lio/didomi/sdk/j7;

    iput p2, p0, Lio/didomi/sdk/pe;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/pe;->a:Lio/didomi/sdk/j7;

    iget v1, p0, Lio/didomi/sdk/pe;->b:I

    invoke-static {v0, v1}, Lio/didomi/sdk/j7$f;->c(Lio/didomi/sdk/j7;I)V

    return-void
.end method

###### Class io.didomi.drawable.le (io.didomi.sdk.le)
.class public final synthetic Lio/didomi/sdk/le;
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

    iput-object p1, p0, Lio/didomi/sdk/le;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/le;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->f(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.didomi.drawable.me (io.didomi.sdk.me)
.class public final synthetic Lio/didomi/sdk/me;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/e1;

.field public final synthetic b:Lio/didomi/sdk/j7;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/me;->a:Lio/didomi/sdk/e1;

    iput-object p2, p0, Lio/didomi/sdk/me;->b:Lio/didomi/sdk/j7;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/me;->a:Lio/didomi/sdk/e1;

    iget-object v1, p0, Lio/didomi/sdk/me;->b:Lio/didomi/sdk/j7;

    invoke-static {v0, v1}, Lio/didomi/sdk/j7;->g(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V

    return-void
.end method

###### Class io.didomi.drawable.ne (io.didomi.sdk.ne)
.class public final synthetic Lio/didomi/sdk/ne;
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

    iput-object p1, p0, Lio/didomi/sdk/ne;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ne;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->h(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.didomi.drawable.oe (io.didomi.sdk.oe)
.class public final synthetic Lio/didomi/sdk/oe;
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

    iput-object p1, p0, Lio/didomi/sdk/oe;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/oe;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/j7;->i(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method
