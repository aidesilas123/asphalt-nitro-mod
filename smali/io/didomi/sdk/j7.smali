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
