###### Class io.didomi.drawable.notice.ctv.a (io.didomi.sdk.notice.ctv.a)
.class public final Lio/didomi/sdk/notice/ctv/a;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/notice/ctv/a$a;,
        Lio/didomi/sdk/notice/ctv/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 I2\u00020\u0001:\u0002\u000f\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J+\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001d2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0003R\"\u0010,\u001a\u00020\'8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010(\u001a\u0004\u0008\u000f\u0010)\"\u0004\u0008*\u0010+R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u00109\u001a\u0002048\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008/\u00105\u001a\u0004\u0008\u000b\u00106\"\u0004\u00087\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010>R\u0014\u0010B\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010AR\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010AR\u0014\u0010D\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010AR\u0014\u0010F\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010AR\u0014\u0010H\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010A\u00a8\u0006J"
    }
    d2 = {
        "Lio/didomi/sdk/notice/ctv/a;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "",
        "h",
        "e",
        "d",
        "f",
        "",
        "noticeText",
        "b",
        "(Ljava/lang/String;)V",
        "g",
        "partnersLabel",
        "a",
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
        "dismiss",
        "onDestroyView",
        "Lio/didomi/sdk/l6;",
        "Lio/didomi/sdk/l6;",
        "()Lio/didomi/sdk/l6;",
        "setModel",
        "(Lio/didomi/sdk/l6;)V",
        "model",
        "Lio/didomi/sdk/D8;",
        "Lio/didomi/sdk/D8;",
        "c",
        "()Lio/didomi/sdk/D8;",
        "setUiProvider",
        "(Lio/didomi/sdk/D8;)V",
        "uiProvider",
        "Lio/didomi/sdk/I3;",
        "Lio/didomi/sdk/I3;",
        "()Lio/didomi/sdk/I3;",
        "setNavigationManager",
        "(Lio/didomi/sdk/I3;)V",
        "navigationManager",
        "Lio/didomi/sdk/X0;",
        "Lio/didomi/sdk/X0;",
        "binding",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/Job;",
        "job",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnClickListener;",
        "agreeButtonListener",
        "disagreeButtonListener",
        "manageButtonListener",
        "i",
        "privacyButtonListener",
        "j",
        "partnersButtonListener",
        "k",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final k:Lio/didomi/sdk/notice/ctv/a$b;


# instance fields
.field public a:Lio/didomi/sdk/l6;

.field public b:Lio/didomi/sdk/D8;

.field public c:Lio/didomi/sdk/I3;

.field private d:Lio/didomi/sdk/X0;

.field private e:Lkotlinx/coroutines/Job;

.field private final f:Landroid/view/View$OnClickListener;

.field private final g:Landroid/view/View$OnClickListener;

.field private final h:Landroid/view/View$OnClickListener;

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/notice/ctv/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/notice/ctv/a$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/notice/ctv/a;->k:Lio/didomi/sdk/notice/ctv/a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Lio/didomi/sdk/notice/ctv/i;

    invoke-direct {v0, p0}, Lio/didomi/sdk/notice/ctv/i;-><init>(Lio/didomi/sdk/notice/ctv/a;)V

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lio/didomi/sdk/notice/ctv/h;

    invoke-direct {v0, p0}, Lio/didomi/sdk/notice/ctv/h;-><init>(Lio/didomi/sdk/notice/ctv/a;)V

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->g:Landroid/view/View$OnClickListener;

    new-instance v0, Lio/didomi/sdk/notice/ctv/g;

    invoke-direct {v0, p0}, Lio/didomi/sdk/notice/ctv/g;-><init>(Lio/didomi/sdk/notice/ctv/a;)V

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lio/didomi/sdk/notice/ctv/e;

    invoke-direct {v0, p0}, Lio/didomi/sdk/notice/ctv/e;-><init>(Lio/didomi/sdk/notice/ctv/a;)V

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lio/didomi/sdk/notice/ctv/d;

    invoke-direct {v0, p0}, Lio/didomi/sdk/notice/ctv/d;-><init>(Lio/didomi/sdk/notice/ctv/a;)V

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static final a(Landroid/view/View;Z)V
    .registers 2

    if-nez p1, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_9
    return-void
.end method

.method private static final a(Landroid/widget/Button;)V
    .registers 2

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private static final a(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/U;->C()V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lio/didomi/sdk/X0;->e:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/notice/ctv/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void
.end method

.method private static final b(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/U;->D()V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lio/didomi/sdk/X0;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x12c

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    invoke-static {p1}, Lio/didomi/sdk/V5;->i(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/didomi/sdk/v8;->a:Lio/didomi/sdk/v8;

    invoke-virtual {v1, p1}, Lio/didomi/sdk/v8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    const/16 v1, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, p1, v1, v2, v3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    :cond_43
    return-void
.end method

.method private static final c(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/U;->E()V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->b()Lio/didomi/sdk/I3;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lio/didomi/sdk/I3;->a(Lio/didomi/sdk/I3;Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;ILjava/lang/Object;)V

    return-void
.end method

.method private final d()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lio/didomi/sdk/X0;->b:Landroid/widget/Button;

    if-eqz v0, :cond_24

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/notice/ctv/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/U;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    return-void
.end method

.method private static final d(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/U;->G()V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->b()Lio/didomi/sdk/I3;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object v0, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    invoke-virtual {p1, p0, v0}, Lio/didomi/sdk/I3;->a(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V

    return-void
.end method

.method private final e()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz v0, :cond_3b

    iget-object v0, v0, Lio/didomi/sdk/X0;->c:Landroid/widget/Button;

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/U;->e()Lio/didomi/sdk/k$i$a;

    move-result-object v1

    sget-object v2, Lio/didomi/sdk/k$i$a;->e:Lio/didomi/sdk/k$i$a;

    if-eq v1, v2, :cond_36

    iget-object v1, p0, Lio/didomi/sdk/notice/ctv/a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/didomi/sdk/U;->b(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3b

    :cond_36
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private static final e(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/l6;->L()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lio/didomi/sdk/notice/ctv/a$a;

    if-eqz p1, :cond_17

    check-cast p0, Lio/didomi/sdk/notice/ctv/a$a;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_1d

    invoke-interface {p0}, Lio/didomi/sdk/notice/ctv/a$a;->a()V

    :cond_1d
    return-void
.end method

.method private final f()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lio/didomi/sdk/X0;->d:Landroid/widget/Button;

    if-eqz v0, :cond_24

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/notice/ctv/a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/U;->l()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    return-void
.end method

.method private final g()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lio/didomi/sdk/X0;->f:Landroid/widget/Button;

    if-eqz v0, :cond_24

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/notice/ctv/a;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    return-void
.end method

.method private final h()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz v0, :cond_36

    iget-object v0, v0, Lio/didomi/sdk/X0;->g:Landroid/widget/Button;

    if-eqz v0, :cond_36

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusedByDefault(Z)V

    :cond_12
    new-instance v1, Lio/didomi/sdk/notice/ctv/c;

    invoke-direct {v1, v0}, Lio/didomi/sdk/notice/ctv/c;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    sget-object v1, Lio/didomi/sdk/notice/ctv/f;->a:Lio/didomi/sdk/notice/ctv/f;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/l6;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    return-void
.end method

.method public static synthetic i(Landroid/widget/Button;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/notice/ctv/a;->a(Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic j(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/notice/ctv/a;->d(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/notice/ctv/a;->e(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/View;Z)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/notice/ctv/a;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic m(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/notice/ctv/a;->c(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/notice/ctv/a;->b(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/notice/ctv/a;->a(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/l6;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->a:Lio/didomi/sdk/l6;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lio/didomi/sdk/I3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->c:Lio/didomi/sdk/I3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "navigationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/D8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->b:Lio/didomi/sdk/D8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "uiProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dismiss()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lio/didomi/sdk/notice/ctv/a$a;

    if-eqz v1, :cond_e

    check-cast v0, Lio/didomi/sdk/notice/ctv/a$a;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lio/didomi/sdk/notice/ctv/a$a;->b()V

    :cond_14
    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/l6;->K()V

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

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/notice/ctv/a;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10

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

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/X0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/X0;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    invoke-virtual {p1}, Lio/didomi/sdk/X0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, parent\u2026g = it\n            }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/U;->n()Lio/didomi/sdk/C3;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/C3;->a(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    return-void
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->e:Lkotlinx/coroutines/Job;

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

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->c()Lio/didomi/sdk/D8;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/D8;->e()Lkotlinx/coroutines/flow/u;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/notice/ctv/a$c;

    invoke-direct {v1, p0}, Lio/didomi/sdk/notice/ctv/a$c;-><init>(Lio/didomi/sdk/notice/ctv/a;)V

    invoke-static {p0, v0, v1}, Lio/didomi/sdk/N2;->a(Landroidx/fragment/app/Fragment;Lkotlinx/coroutines/flow/u;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/a;->e:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lio/didomi/sdk/notice/ctv/a;->h()V

    invoke-direct {p0}, Lio/didomi/sdk/notice/ctv/a;->e()V

    invoke-direct {p0}, Lio/didomi/sdk/notice/ctv/a;->d()V

    invoke-direct {p0}, Lio/didomi/sdk/notice/ctv/a;->f()V

    invoke-direct {p0}, Lio/didomi/sdk/notice/ctv/a;->g()V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/l6;->r()Lio/didomi/sdk/U$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/U$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/didomi/sdk/notice/ctv/a;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/didomi/sdk/notice/ctv/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/notice/ctv/a;->d:Lio/didomi/sdk/X0;

    if-eqz p1, :cond_49

    iget-object p1, p1, Lio/didomi/sdk/X0;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    const-string v0, "viewLifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/notice/ctv/a;->a()Lio/didomi/sdk/l6;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/U;->n()Lio/didomi/sdk/C3;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/didomi/sdk/k3;->a(Landroid/widget/ImageView;Landroidx/lifecycle/LifecycleOwner;Lio/didomi/sdk/C3;)V

    :cond_49
    return-void
.end method
