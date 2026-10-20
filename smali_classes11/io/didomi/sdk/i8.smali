###### Class io.didomi.drawable.I8 (io.didomi.sdk.I8)
.class public final Lio/didomi/sdk/I8;
.super Lio/didomi/sdk/I0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/I8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0003R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001dR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008 \u0010\"\"\u0004\u0008#\u0010$R\"\u0010+\u001a\u00020&8\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\'\u001a\u0004\u0008\u0019\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lio/didomi/sdk/I8;",
        "Lio/didomi/sdk/I0;",
        "<init>",
        "()V",
        "",
        "b",
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
        "onDestroyView",
        "Lio/didomi/sdk/m1;",
        "a",
        "Lio/didomi/sdk/m1;",
        "binding",
        "Ljava/util/Timer;",
        "Ljava/util/Timer;",
        "timer",
        "Lio/didomi/sdk/K8;",
        "c",
        "Lio/didomi/sdk/K8;",
        "()Lio/didomi/sdk/K8;",
        "setModel",
        "(Lio/didomi/sdk/K8;)V",
        "model",
        "Lio/didomi/sdk/z8;",
        "Lio/didomi/sdk/z8;",
        "()Lio/didomi/sdk/z8;",
        "setThemeProvider",
        "(Lio/didomi/sdk/z8;)V",
        "themeProvider",
        "e",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final e:Lio/didomi/sdk/I8$a;


# instance fields
.field private a:Lio/didomi/sdk/m1;

.field private b:Ljava/util/Timer;

.field public c:Lio/didomi/sdk/K8;

.field public d:Lio/didomi/sdk/z8;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/I8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/I8$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/I8;->e:Lio/didomi/sdk/I8$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/I0;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/I8;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/I8;->d()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/I8;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/m1;)V
    .registers 15

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/m1;->f:Landroid/widget/TextView;

    const-string v0, "userInfoCopiedText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;JILkotlin/jvm/b/a;ILjava/lang/Object;)V

    iget-object v8, p0, Lio/didomi/sdk/m1;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p0, "userInfoCopiedImage"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x32

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lio/didomi/sdk/k9;->a(Landroid/view/View;JLkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method private final b()V
    .registers 15

    iget-object v0, p0, Lio/didomi/sdk/I8;->a:Lio/didomi/sdk/m1;

    if-eqz v0, :cond_2e

    iget-object v1, v0, Lio/didomi/sdk/m1;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "binding.userInfoCopiedImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;JILkotlin/jvm/b/a;ILjava/lang/Object;)V

    iget-object v8, v0, Lio/didomi/sdk/m1;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/K8;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const-string v0, "copyInfoToClipBoard$lambda$10$lambda$9"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x32

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lio/didomi/sdk/k9;->a(Landroid/view/View;JLkotlin/jvm/b/a;ILjava/lang/Object;)V

    :cond_2e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/ClipboardManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/K8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/K8;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_53
    iget-object v0, p0, Lio/didomi/sdk/I8;->b:Ljava/util/Timer;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_5a
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lio/didomi/sdk/I8$b;

    invoke-direct {v1, p0}, Lio/didomi/sdk/I8$b;-><init>(Lio/didomi/sdk/I8;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput-object v0, p0, Lio/didomi/sdk/I8;->b:Ljava/util/Timer;

    return-void
.end method

.method private static final b(Lio/didomi/sdk/I8;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/I8;->b()V

    return-void
.end method

.method private final d()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/I8;->a:Lio/didomi/sdk/m1;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/ra;

    invoke-direct {v2, v0}, Lio/didomi/sdk/ra;-><init>(Lio/didomi/sdk/m1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public static synthetic e(Lio/didomi/sdk/I8;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/I8;->a(Lio/didomi/sdk/I8;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lio/didomi/sdk/m1;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/I8;->a(Lio/didomi/sdk/m1;)V

    return-void
.end method

.method public static synthetic g(Lio/didomi/sdk/I8;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/I8;->b(Lio/didomi/sdk/I8;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lio/didomi/sdk/z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/I8;->d:Lio/didomi/sdk/z8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "themeProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/K8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/I8;->c:Lio/didomi/sdk/K8;

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

    invoke-static {p0}, Lio/didomi/sdk/F0;->a(Landroidx/fragment/app/DialogFragment;)Lio/didomi/sdk/J0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/I8;)V

    :cond_e
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/m1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/m1;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/I8;->a:Lio/didomi/sdk/m1;

    invoke-virtual {p1}, Lio/didomi/sdk/m1;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, contai\u2026g = it\n            }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/K8;->e()Lio/didomi/sdk/C3;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/C3;->a(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/sdk/I8;->a:Lio/didomi/sdk/m1;

    iget-object v0, p0, Lio/didomi/sdk/I8;->b:Ljava/util/Timer;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_21
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lio/didomi/sdk/I0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lio/didomi/sdk/I8;->a:Lio/didomi/sdk/m1;

    if-eqz p1, :cond_f6

    iget-object v0, p1, Lio/didomi/sdk/m1;->g:Lio/didomi/sdk/view/mobile/HeaderView;

    const-string p2, "binding.userInfoHeader"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/K8;->e()Lio/didomi/sdk/C3;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string p2, "viewLifecycleOwner"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/K8;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/view/mobile/HeaderView;Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p2, p1, Lio/didomi/sdk/m1;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v0, "onViewCreated$lambda$8$lambda$2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/K8;->a()Lio/didomi/sdk/a;

    move-result-object v0

    invoke-static {p2, v0}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->j()I

    move-result v0

    invoke-static {p2, v0}, Lio/didomi/sdk/l3;->a(Landroid/widget/ImageView;I)V

    new-instance v0, Lio/didomi/sdk/qa;

    invoke-direct {v0, p0}, Lio/didomi/sdk/qa;-><init>(Lio/didomi/sdk/I8;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lio/didomi/sdk/m1;->i:Landroid/widget/TextView;

    const-string v0, "onViewCreated$lambda$8$lambda$3"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/e4;->n()Lio/didomi/sdk/w8;

    move-result-object v0

    invoke-static {p2, v0}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/K8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lio/didomi/sdk/m1;->d:Landroid/widget/TextView;

    const-string v0, "onViewCreated$lambda$8$lambda$4"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/e4;->d()Lio/didomi/sdk/w8;

    move-result-object v0

    invoke-static {p2, v0}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/K8;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lio/didomi/sdk/m1;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v0, "onViewCreated$lambda$8$lambda$6"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/K8;->h()Lio/didomi/sdk/a;

    move-result-object v0

    invoke-static {p2, v0}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->r()I

    move-result v0

    invoke-static {p2, v0}, Lio/didomi/sdk/q;->a(Landroid/widget/Button;I)V

    new-instance v0, Lio/didomi/sdk/sa;

    invoke-direct {v0, p0}, Lio/didomi/sdk/sa;-><init>(Lio/didomi/sdk/I8;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lio/didomi/sdk/m1;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "binding.userInfoCopiedImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->j()I

    move-result v0

    invoke-static {p2, v0}, Lio/didomi/sdk/l3;->a(Landroid/widget/ImageView;I)V

    iget-object p1, p1, Lio/didomi/sdk/m1;->f:Landroid/widget/TextView;

    const-string p2, "onViewCreated$lambda$8$lambda$7"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->a()Lio/didomi/sdk/z8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/e4;->c()Lio/didomi/sdk/w8;

    move-result-object p2

    invoke-static {p1, p2}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {p0}, Lio/didomi/sdk/I8;->c()Lio/didomi/sdk/K8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/K8;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_f6
    return-void
.end method
