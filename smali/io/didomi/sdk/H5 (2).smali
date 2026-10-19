###### Class io.didomi.drawable.H5 (io.didomi.sdk.H5)
.class public final Lio/didomi/sdk/H5;
.super Lio/didomi/sdk/I0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/H5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 <2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0003R\u001d\u0010$\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010*R\"\u00101\u001a\u00020,8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010-\u001a\u0004\u0008&\u0010.\"\u0004\u0008/\u00100R\"\u00107\u001a\u0002028\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\u0005\u00103\u001a\u0004\u0008 \u00104\"\u0004\u00085\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:\u00a8\u0006="
    }
    d2 = {
        "Lio/didomi/sdk/H5;",
        "Lio/didomi/sdk/I0;",
        "<init>",
        "()V",
        "",
        "e",
        "d",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
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
        "onDestroyView",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "a",
        "Lkotlin/Lazy;",
        "c",
        "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "selectedCategory",
        "Lio/didomi/sdk/d4;",
        "b",
        "Lio/didomi/sdk/d4;",
        "dismissHelper",
        "Lio/didomi/sdk/G5$a;",
        "Lio/didomi/sdk/G5$a;",
        "personalDataCallback",
        "Lio/didomi/sdk/Q5;",
        "Lio/didomi/sdk/Q5;",
        "()Lio/didomi/sdk/Q5;",
        "setModel",
        "(Lio/didomi/sdk/Q5;)V",
        "model",
        "Lio/didomi/sdk/z8;",
        "Lio/didomi/sdk/z8;",
        "()Lio/didomi/sdk/z8;",
        "setThemeProvider",
        "(Lio/didomi/sdk/z8;)V",
        "themeProvider",
        "Lio/didomi/sdk/W0;",
        "f",
        "Lio/didomi/sdk/W0;",
        "binding",
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
.field public static final g:Lio/didomi/sdk/H5$a;


# instance fields
.field private final a:Lkotlin/i;

.field private final b:Lio/didomi/sdk/d4;

.field private final c:Lio/didomi/sdk/G5$a;

.field public d:Lio/didomi/sdk/Q5;

.field public e:Lio/didomi/sdk/z8;

.field private f:Lio/didomi/sdk/W0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/H5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/H5$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/H5;->g:Lio/didomi/sdk/H5$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/I0;-><init>()V

    new-instance v0, Lio/didomi/sdk/H5$c;

    invoke-direct {v0, p0}, Lio/didomi/sdk/H5$c;-><init>(Lio/didomi/sdk/H5;)V

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/H5;->a:Lkotlin/i;

    new-instance v0, Lio/didomi/sdk/d4;

    invoke-direct {v0}, Lio/didomi/sdk/d4;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/H5;->b:Lio/didomi/sdk/d4;

    new-instance v0, Lio/didomi/sdk/H5$b;

    invoke-direct {v0, p0}, Lio/didomi/sdk/H5$b;-><init>(Lio/didomi/sdk/H5;)V

    iput-object v0, p0, Lio/didomi/sdk/H5;->c:Lio/didomi/sdk/G5$a;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/H5;)Lio/didomi/sdk/W0;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/H5;->f:Lio/didomi/sdk/W0;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/H5;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/H5;->d()V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->dismiss()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/H5;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$selectedCategory"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/didomi/sdk/Q5;->i(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    new-instance p1, Lio/didomi/sdk/la;

    invoke-direct {p1, p0}, Lio/didomi/sdk/la;-><init>(Lio/didomi/sdk/H5;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/H5;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/H5;->e()V

    return-void
.end method

.method private final c()Lio/didomi/sdk/purpose/common/model/PurposeCategory;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/H5;->a:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    return-object v0
.end method

.method private static final c(Lio/didomi/sdk/H5;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->dismiss()V

    return-void
.end method

.method private final d()V
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Q5;->t()V

    invoke-direct {p0}, Lio/didomi/sdk/H5;->e()V

    return-void
.end method

.method private final e()V
    .registers 1

    return-void
.end method

.method public static synthetic f(Lio/didomi/sdk/H5;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/H5;->a(Lio/didomi/sdk/H5;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lio/didomi/sdk/H5;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/H5;->a(Lio/didomi/sdk/H5;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lio/didomi/sdk/H5;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/H5;->c(Lio/didomi/sdk/H5;)V

    return-void
.end method


# virtual methods
.method public a()Lio/didomi/sdk/z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/H5;->e:Lio/didomi/sdk/z8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "themeProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lio/didomi/sdk/Q5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/H5;->d:Lio/didomi/sdk/Q5;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dismiss()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/F0;->a(Landroidx/fragment/app/DialogFragment;)Lio/didomi/sdk/J0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/H5;)V

    :cond_e
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/H5;->d()V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/W0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/W0;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/H5;->f:Lio/didomi/sdk/W0;

    invoke-virtual {p1}, Lio/didomi/sdk/W0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, contai\u2026g = it\n            }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Q5;->i()Lio/didomi/sdk/C3;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/C3;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lio/didomi/sdk/H5;->f:Lio/didomi/sdk/W0;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, v0, Lio/didomi/sdk/W0;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_26
    iput-object v1, p0, Lio/didomi/sdk/H5;->f:Lio/didomi/sdk/W0;

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/H5;->b:Lio/didomi/sdk/d4;

    invoke-virtual {v0}, Lio/didomi/sdk/d4;->a()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lio/didomi/sdk/H5;->b:Lio/didomi/sdk/d4;

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/Q5;->s()Lio/didomi/sdk/D8;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/didomi/sdk/d4;->a(Landroidx/fragment/app/DialogFragment;Lio/didomi/sdk/D8;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 16

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lio/didomi/sdk/I0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lio/didomi/sdk/H5;->c()Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-eqz p1, :cond_112

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/didomi/sdk/Q5;->j(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    iget-object p2, p0, Lio/didomi/sdk/H5;->f:Lio/didomi/sdk/W0;

    if-eqz p2, :cond_107

    iget-object v11, p2, Lio/didomi/sdk/W0;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Q5;->d()Ljava/lang/String;

    move-result-object v2

    const-string v0, "onViewCreated$lambda$9$lambda$2"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, v2

    invoke-static/range {v0 .. v10}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->j()I

    move-result v0

    invoke-static {v11, v0}, Lio/didomi/sdk/l3;->a(Landroid/widget/ImageView;I)V

    new-instance v0, Lio/didomi/sdk/ja;

    invoke-direct {v0, p0}, Lio/didomi/sdk/ja;-><init>(Lio/didomi/sdk/H5;)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lio/didomi/sdk/W0;->c:Lio/didomi/sdk/view/mobile/HeaderView;

    const-string v1, "onViewCreated$lambda$9$lambda$3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/Q5;->e(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/view/mobile/HeaderView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v0}, Lio/didomi/sdk/view/mobile/HeaderView;->a()V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Lio/didomi/sdk/W0;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lio/didomi/sdk/G5;

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->a()Lio/didomi/sdk/z8;

    move-result-object v3

    iget-object v4, p0, Lio/didomi/sdk/H5;->c:Lio/didomi/sdk/G5$a;

    invoke-direct {v2, v0, v3, v4}, Lio/didomi/sdk/G5;-><init>(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/G5$a;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lio/didomi/sdk/J4;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v3, "context"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->a()Lio/didomi/sdk/z8;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lio/didomi/sdk/J4;-><init>(Landroid/content/Context;Lio/didomi/sdk/z8;ZZILkotlin/jvm/internal/n;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const-string v2, "onViewCreated$lambda$9$lambda$4"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lio/didomi/sdk/a4;

    invoke-static {v0, v2}, Lio/didomi/sdk/y3;->a(Ljava/util/List;Ljava/lang/Class;)I

    move-result v0

    invoke-static {v1, v0}, Lio/didomi/sdk/i5;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p2, Lio/didomi/sdk/W0;->c:Lio/didomi/sdk/view/mobile/HeaderView;

    const-string v2, "binding.headerSpiCategory"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/didomi/sdk/i5;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    iget-object v0, p2, Lio/didomi/sdk/W0;->e:Lio/didomi/sdk/purpose/mobile/PurposeSaveView;

    invoke-virtual {v0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getSaveButton$android_release()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_e4

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->a()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/e4;->j()Lio/didomi/sdk/w8;

    move-result-object v2

    invoke-static {v1, v2}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Q5;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lio/didomi/sdk/ka;

    invoke-direct {v2, p0, p1, v1}, Lio/didomi/sdk/ka;-><init>(Lio/didomi/sdk/H5;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e4
    invoke-virtual {v0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getLogoImage$android_release()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_eb

    goto :goto_f9

    :cond_eb
    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v0

    invoke-virtual {v0, v5}, Lio/didomi/sdk/Q5;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v5, 0x4

    :cond_f6
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f9
    iget-object p1, p2, Lio/didomi/sdk/W0;->f:Landroid/view/View;

    const-string p2, "binding.viewSpiCategoryBottomDivider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H5;->a()Lio/didomi/sdk/z8;

    move-result-object p2

    invoke-static {p1, p2}, Lio/didomi/sdk/k9;->a(Landroid/view/View;Lio/didomi/sdk/z8;)V

    :cond_107
    invoke-virtual {p0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/Q5;->u()V

    invoke-direct {p0}, Lio/didomi/sdk/H5;->e()V

    return-void

    :cond_112
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Category is invalid"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.didomi.sdk.H5.a (io.didomi.sdk.H5$a)
.class public final Lio/didomi/sdk/H5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/H5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/didomi/sdk/H5$a;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "category",
        "",
        "a",
        "(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "",
        "PURPOSE_CATEGORY",
        "Ljava/lang/String;",
        "TAG",
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

    invoke-direct {p0}, Lio/didomi/sdk/H5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 7

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SensitivePersonalInfoCategoryFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_28

    new-instance v1, Lio/didomi/sdk/H5;

    invoke-direct {v1}, Lio/didomi/sdk/H5;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "purpose_category"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2f

    :cond_28
    const/4 p1, 0x2

    const-string p2, "Fragment with tag \'SensitivePersonalInfoCategoryFragment\' is already present"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_2f
    return-void
.end method

###### Class io.didomi.sdk.H5.b (io.didomi.sdk.H5$b)
.class public final Lio/didomi/sdk/H5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/G5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/H5;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/H5$b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "io/didomi/sdk/H5$b",
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
.field final synthetic a:Lio/didomi/sdk/H5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/H5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/H5$b;->a:Lio/didomi/sdk/H5;

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

    sget-object v0, Lio/didomi/sdk/H5$b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    iget-object p1, p0, Lio/didomi/sdk/H5$b;->a:Lio/didomi/sdk/H5;

    invoke-virtual {p1}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/Q5;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-nez p1, :cond_22

    return-void

    :cond_22
    sget-object p2, Lio/didomi/sdk/H5;->g:Lio/didomi/sdk/H5$a;

    iget-object v0, p0, Lio/didomi/sdk/H5$b;->a:Lio/didomi/sdk/H5;

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
    .registers 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/H5$b;->a:Lio/didomi/sdk/H5;

    invoke-virtual {v0}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/didomi/sdk/Q5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v1, p0, Lio/didomi/sdk/H5$b;->a:Lio/didomi/sdk/H5;

    sget-object v2, Lio/didomi/sdk/W3$a;->e:Lio/didomi/sdk/W3$a;

    if-ne p1, v2, :cond_46

    invoke-virtual {v1}, Lio/didomi/sdk/H5;->b()Lio/didomi/sdk/Q5;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-static {v1}, Lio/didomi/sdk/H5;->a(Lio/didomi/sdk/H5;)Lio/didomi/sdk/W0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    iget-object p1, p1, Lio/didomi/sdk/W0;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_39

    :cond_38
    move-object p1, v0

    :goto_39
    instance-of v1, p1, Lio/didomi/sdk/G5;

    if-eqz v1, :cond_40

    move-object v0, p1

    check-cast v0, Lio/didomi/sdk/G5;

    :cond_40
    if-eqz v0, :cond_46

    const/4 p1, 0x1

    invoke-virtual {v0, p2, p3, p1}, Lio/didomi/sdk/G5;->b(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_46
    iget-object p1, p0, Lio/didomi/sdk/H5$b;->a:Lio/didomi/sdk/H5;

    invoke-static {p1}, Lio/didomi/sdk/H5;->b(Lio/didomi/sdk/H5;)V

    return-void
.end method

###### Class io.didomi.sdk.H5.b.a (io.didomi.sdk.H5$b$a)
.class public final synthetic Lio/didomi/sdk/H5$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/H5$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/sdk/W3$a;->values()[Lio/didomi/sdk/W3$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/W3$a;->a:Lio/didomi/sdk/W3$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lio/didomi/sdk/H5$b$a;->a:[I

    return-void
.end method

###### Class io.didomi.sdk.H5.c (io.didomi.sdk.H5$c)
.class final Lio/didomi/sdk/H5$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/H5;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "a",
        "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/H5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/H5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/H5$c;->a:Lio/didomi/sdk/H5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/purpose/common/model/PurposeCategory;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "purpose_category"

    const/16 v2, 0x21

    if-lt v0, v2, :cond_19

    iget-object v0, p0, Lio/didomi/sdk/H5$c;->a:Lio/didomi/sdk/H5;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_28

    const-class v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    goto :goto_29

    :cond_19
    iget-object v0, p0, Lio/didomi/sdk/H5$c;->a:Lio/didomi/sdk/H5;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/H5$c;->a()Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.ja (io.didomi.sdk.ja)
.class public final synthetic Lio/didomi/sdk/ja;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/H5;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/H5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ja;->a:Lio/didomi/sdk/H5;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ja;->a:Lio/didomi/sdk/H5;

    invoke-static {v0, p1}, Lio/didomi/sdk/H5;->f(Lio/didomi/sdk/H5;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.ka (io.didomi.sdk.ka)
.class public final synthetic Lio/didomi/sdk/ka;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/H5;

.field public final synthetic b:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

.field public final synthetic c:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/H5;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ka;->a:Lio/didomi/sdk/H5;

    iput-object p2, p0, Lio/didomi/sdk/ka;->b:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    iput-object p3, p0, Lio/didomi/sdk/ka;->c:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/ka;->a:Lio/didomi/sdk/H5;

    iget-object v1, p0, Lio/didomi/sdk/ka;->b:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    iget-object v2, p0, Lio/didomi/sdk/ka;->c:Landroid/widget/Button;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/H5;->g(Lio/didomi/sdk/H5;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.la (io.didomi.sdk.la)
.class public final synthetic Lio/didomi/sdk/la;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/H5;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/H5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/la;->a:Lio/didomi/sdk/H5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/la;->a:Lio/didomi/sdk/H5;

    invoke-static {v0}, Lio/didomi/sdk/H5;->h(Lio/didomi/sdk/H5;)V

    return-void
.end method
