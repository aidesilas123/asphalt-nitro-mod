###### Class io.didomi.drawable.T7 (io.didomi.sdk.T7)
.class public final Lio/didomi/sdk/T7;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/C8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/T7$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u00010\u0018\u0000 \u000e2\u00020\u00012\u00020\u0002:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0019\u0010#\u001a\u00020\"2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008#\u0010$J+\u0010*\u001a\u00020)2\u0006\u0010&\u001a\u00020%2\u0008\u0010(\u001a\u0004\u0018\u00010\'2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008*\u0010+J!\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020)2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0004R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\"\u0010=\u001a\u0002078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u00088\u0010:\"\u0004\u0008;\u0010<R\"\u0010C\u001a\u00020>8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010?\u001a\u0004\u00084\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006D"
    }
    d2 = {
        "Lio/didomi/sdk/T7;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Lio/didomi/sdk/C8;",
        "<init>",
        "()V",
        "",
        "loaded",
        "",
        "a",
        "(Ljava/lang/Boolean;)V",
        "f",
        "g",
        "h",
        "k",
        "e",
        "i",
        "d",
        "j",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "tag",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "getTheme",
        "()I",
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
        "onDestroyView",
        "io/didomi/sdk/T7$c",
        "Lio/didomi/sdk/T7$c;",
        "vendorDetailAdapterCallback",
        "Lio/didomi/sdk/k1;",
        "b",
        "Lio/didomi/sdk/k1;",
        "binding",
        "Lio/didomi/sdk/t8;",
        "c",
        "Lio/didomi/sdk/t8;",
        "()Lio/didomi/sdk/t8;",
        "setModel",
        "(Lio/didomi/sdk/t8;)V",
        "model",
        "Lio/didomi/sdk/o6;",
        "Lio/didomi/sdk/o6;",
        "()Lio/didomi/sdk/o6;",
        "setDisclosuresModel",
        "(Lio/didomi/sdk/o6;)V",
        "disclosuresModel",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final e:Lio/didomi/sdk/T7$a;


# instance fields
.field private final a:Lio/didomi/sdk/T7$c;

.field private b:Lio/didomi/sdk/k1;

.field public c:Lio/didomi/sdk/t8;

.field public d:Lio/didomi/sdk/o6;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/T7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/T7$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/T7;->e:Lio/didomi/sdk/T7$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    new-instance v0, Lio/didomi/sdk/T7$c;

    invoke-direct {v0, p0}, Lio/didomi/sdk/T7$c;-><init>(Lio/didomi/sdk/T7;)V

    iput-object v0, p0, Lio/didomi/sdk/T7;->a:Lio/didomi/sdk/T7$c;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/T7;)Lio/didomi/sdk/k1;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/T7;->b:Lio/didomi/sdk/k1;

    return-object p0
.end method

.method private final a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 8

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

    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/T7;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/T7;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/k1;Lio/didomi/sdk/T7;)V
    .registers 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/k1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lio/didomi/sdk/K7;

    if-eqz v0, :cond_17

    check-cast p0, Lio/didomi/sdk/K7;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_25

    invoke-virtual {p1}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/t8;->g0()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/K7;->a(I)V

    :cond_25
    return-void
.end method

.method private final a(Ljava/lang/Boolean;)V
    .registers 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/InternalVendor;

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDeviceStorageDisclosures()Lio/didomi/sdk/models/DeviceStorageDisclosures;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    invoke-virtual {p0}, Lio/didomi/sdk/T7;->b()Lio/didomi/sdk/o6;

    move-result-object v1

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/didomi/sdk/C0;->a(Ljava/lang/String;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V

    iget-object v0, p0, Lio/didomi/sdk/T7;->b:Lio/didomi/sdk/k1;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lio/didomi/sdk/k1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    move-object v0, v1

    :goto_3b
    instance-of v2, v0, Lio/didomi/sdk/K7;

    if-eqz v2, :cond_42

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/K7;

    :cond_42
    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lio/didomi/sdk/T7;->b()Lio/didomi/sdk/o6;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/h9;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lio/didomi/sdk/q3;->h(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lio/didomi/sdk/o6;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/K7;->a(Ljava/util/List;)V

    :cond_5b
    return-void
.end method

.method private static final a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->d()V

    return-void
.end method

.method public static final synthetic c(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->e()V

    return-void
.end method

.method private final d()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/t7;

    invoke-direct {v0}, Lio/didomi/sdk/t7;-><init>()V

    const-string v1, "TVVendorAdditionalDataFragment"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->f()V

    return-void
.end method

.method private final e()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/E7;

    invoke-direct {v0}, Lio/didomi/sdk/E7;-><init>()V

    const-string v1, "TVVendorConsentDataFragment"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic e(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->g()V

    return-void
.end method

.method private final f()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/Z7;

    invoke-direct {v0}, Lio/didomi/sdk/Z7;-><init>()V

    const-string v1, "io.didomi.dialog.VENDOR_DISCLOSURES_DETAIL"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic f(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->h()V

    return-void
.end method

.method private final g()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/e8;

    invoke-direct {v0}, Lio/didomi/sdk/e8;-><init>()V

    const-string v1, "TVVendorIabFragment"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic g(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->i()V

    return-void
.end method

.method private final h()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/i8;

    invoke-direct {v0}, Lio/didomi/sdk/i8;-><init>()V

    const-string v1, "TVVendorLegIntClaimFragment"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic h(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->j()V

    return-void
.end method

.method private final i()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/k8;

    invoke-direct {v0}, Lio/didomi/sdk/k8;-><init>()V

    const-string v1, "TVVendorLegIntDataFragment"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic i(Lio/didomi/sdk/T7;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/T7;->k()V

    return-void
.end method

.method private final j()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/b8;

    invoke-direct {v0}, Lio/didomi/sdk/b8;-><init>()V

    const-string v1, "TVVendorEssentialDataFragment"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method private final k()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/n8;

    invoke-direct {v0}, Lio/didomi/sdk/n8;-><init>()V

    const-string v1, "TVVendorPrivacyFragment"

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/T7;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lio/didomi/sdk/k1;Lio/didomi/sdk/T7;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/T7;->a(Lio/didomi/sdk/k1;Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public static synthetic m(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/T7;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/T7;->b:Lio/didomi/sdk/k1;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/didomi/sdk/k1;->a()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/zc;

    invoke-direct {v2, v0, p0}, Lio/didomi/sdk/zc;-><init>(Lio/didomi/sdk/k1;Lio/didomi/sdk/T7;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public final b()Lio/didomi/sdk/o6;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7;->d:Lio/didomi/sdk/o6;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "disclosuresModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/t8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7;->c:Lio/didomi/sdk/t8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
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

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/T7;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/didomi/sdk/t8;->d(I)V

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

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/k1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/k1;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/T7;->b:Lio/didomi/sdk/k1;

    invoke-virtual {p1}, Lio/didomi/sdk/k1;->a()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, parent\u2026nding = it\n        }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->M()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lio/didomi/sdk/T7;->b:Lio/didomi/sdk/k1;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-object v0, v0, Lio/didomi/sdk/k1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_21
    iput-object v1, p0, Lio/didomi/sdk/T7;->b:Lio/didomi/sdk/k1;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lio/didomi/sdk/T7;->b:Lio/didomi/sdk/k1;

    if-eqz p1, :cond_3c

    iget-object p1, p1, Lio/didomi/sdk/k1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3c

    new-instance p2, Lio/didomi/sdk/K7;

    iget-object v0, p0, Lio/didomi/sdk/T7;->a:Lio/didomi/sdk/T7$c;

    invoke-virtual {p0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/t8;->u0()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lio/didomi/sdk/K7;-><init>(Lio/didomi/sdk/K7$a;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p2, Lio/didomi/sdk/view/ctv/CenterLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v0, v2, v1}, Lio/didomi/sdk/view/ctv/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    :cond_3c
    invoke-virtual {p0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->a0()Z

    move-result p2

    if-eqz p2, :cond_4c

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lio/didomi/sdk/T7;->a(Ljava/lang/Boolean;)V

    goto :goto_73

    :cond_4c
    invoke-virtual {p1}, Lio/didomi/sdk/h9;->M()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/T7$b;

    invoke-direct {v1, p0}, Lio/didomi/sdk/T7$b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/didomi/sdk/bd;

    invoke-direct {v2, v1}, Lio/didomi/sdk/bd;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.models.InternalVendor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/h9;->C(Lio/didomi/sdk/models/InternalVendor;)V

    :goto_73
    return-void
.end method

###### Class io.didomi.sdk.T7.a (io.didomi.sdk.T7$a)
.class public final Lio/didomi/sdk/T7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/T7;
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
        "Lio/didomi/sdk/T7$a;",
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

    invoke-direct {p0}, Lio/didomi/sdk/T7$a;-><init>()V

    return-void
.end method

###### Class io.didomi.sdk.T7.b (io.didomi.sdk.T7$b)
.class final synthetic Lio/didomi/sdk/T7$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/T7;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lio/didomi/sdk/T7;

    const/4 v1, 0x1

    const-string v4, "handleDeviceStorageDisclosures"

    const-string v5, "handleDeviceStorageDisclosures(Ljava/lang/Boolean;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lkotlin/jvm/internal/l;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/didomi/sdk/T7;

    invoke-static {v0, p1}, Lio/didomi/sdk/T7;->a(Lio/didomi/sdk/T7;Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/T7$b;->a(Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.sdk.T7.c (io.didomi.sdk.T7$c)
.class public final Lio/didomi/sdk/T7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/K7$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/T7;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0010J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0013J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "io/didomi/sdk/T7$c",
        "Lio/didomi/sdk/K7$a;",
        "",
        "e",
        "()V",
        "f",
        "d",
        "a",
        "",
        "isChecked",
        "(Z)V",
        "c",
        "b",
        "g",
        "",
        "index",
        "(I)V",
        "",
        "id",
        "(Ljava/lang/String;)V",
        "position",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/T7;


# direct methods
.method constructor <init>(Lio/didomi/sdk/T7;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/T7;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/T7;->a(Lio/didomi/sdk/T7;)Lio/didomi/sdk/k1;

    move-result-object p0

    if-eqz p0, :cond_12

    iget-object p0, p0, Lio/didomi/sdk/k1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_12
    return-void
.end method

.method public static synthetic h(Lio/didomi/sdk/T7;I)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/T7$c;->a(Lio/didomi/sdk/T7;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {v0}, Lio/didomi/sdk/T7;->c(Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-virtual {v0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/t8;->d(I)V

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    new-instance v2, Lio/didomi/sdk/ad;

    invoke-direct {v2, v1, p1}, Lio/didomi/sdk/ad;-><init>(Lio/didomi/sdk/T7;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/F7;->c:Lio/didomi/sdk/F7$a;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/F7$a;->a(Ljava/lang/String;)Lio/didomi/sdk/F7;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

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

    const-string v0, "TVVendorDataCategoryFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-virtual {v0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/t8;->c(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {v0}, Lio/didomi/sdk/T7;->h(Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-virtual {v0}, Lio/didomi/sdk/T7;->b()Lio/didomi/sdk/o6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/C0;->b(I)V

    iget-object p1, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {p1}, Lio/didomi/sdk/T7;->d(Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-virtual {v0}, Lio/didomi/sdk/T7;->c()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/t8;->d(Z)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {v0}, Lio/didomi/sdk/T7;->g(Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {v0}, Lio/didomi/sdk/T7;->f(Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {v0}, Lio/didomi/sdk/T7;->i(Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {v0}, Lio/didomi/sdk/T7;->e(Lio/didomi/sdk/T7;)V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/T7$c;->a:Lio/didomi/sdk/T7;

    invoke-static {v0}, Lio/didomi/sdk/T7;->b(Lio/didomi/sdk/T7;)V

    return-void
.end method

###### Class io.didomi.drawable.ad (io.didomi.sdk.ad)
.class public final synthetic Lio/didomi/sdk/ad;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/T7;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/T7;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ad;->a:Lio/didomi/sdk/T7;

    iput p2, p0, Lio/didomi/sdk/ad;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ad;->a:Lio/didomi/sdk/T7;

    iget v1, p0, Lio/didomi/sdk/ad;->b:I

    invoke-static {v0, v1}, Lio/didomi/sdk/T7$c;->h(Lio/didomi/sdk/T7;I)V

    return-void
.end method

###### Class io.didomi.drawable.bd (io.didomi.sdk.bd)
.class public final synthetic Lio/didomi/sdk/bd;
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

    iput-object p1, p0, Lio/didomi/sdk/bd;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/bd;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/T7;->m(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.didomi.drawable.zc (io.didomi.sdk.zc)
.class public final synthetic Lio/didomi/sdk/zc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/k1;

.field public final synthetic b:Lio/didomi/sdk/T7;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/k1;Lio/didomi/sdk/T7;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/zc;->a:Lio/didomi/sdk/k1;

    iput-object p2, p0, Lio/didomi/sdk/zc;->b:Lio/didomi/sdk/T7;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/zc;->a:Lio/didomi/sdk/k1;

    iget-object v1, p0, Lio/didomi/sdk/zc;->b:Lio/didomi/sdk/T7;

    invoke-static {v0, v1}, Lio/didomi/sdk/T7;->l(Lio/didomi/sdk/k1;Lio/didomi/sdk/T7;)V

    return-void
.end method
