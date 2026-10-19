###### Class io.didomi.drawable.Q (io.didomi.sdk.Q)
.class public final Lio/didomi/sdk/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B9\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00102\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0012J\u000f\u0010 \u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0012J\u000f\u0010!\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0012J\u000f\u0010\"\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0012J\u000f\u0010#\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0012J\u000f\u0010$\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0012J\r\u0010%\u001a\u00020\u0010\u00a2\u0006\u0004\u0008%\u0010\u0012R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010&R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\'R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010(R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010.R\"\u00104\u001a\u0002008\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008\"\u00101\u001a\u0004\u0008+\u00102\"\u0004\u0008\u0016\u00103R\"\u00109\u001a\u0002058\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u00106\u001a\u0004\u0008)\u00107\"\u0004\u0008\u0016\u00108\u00a8\u0006:"
    }
    d2 = {
        "Lio/didomi/sdk/Q;",
        "",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lio/didomi/sdk/N0;",
        "binding",
        "Lio/didomi/sdk/U;",
        "model",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Lio/didomi/sdk/I3;",
        "navigationManager",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/N0;Lio/didomi/sdk/U;Lio/didomi/sdk/z8;Lio/didomi/sdk/I3;Landroidx/lifecycle/LifecycleOwner;)V",
        "",
        "p",
        "()V",
        "m",
        "",
        "label",
        "a",
        "(Ljava/lang/String;)V",
        "l",
        "n",
        "h",
        "Lio/didomi/sdk/k$i$a;",
        "format",
        "(Lio/didomi/sdk/k$i$a;)V",
        "b",
        "c",
        "o",
        "k",
        "g",
        "f",
        "i",
        "j",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lio/didomi/sdk/N0;",
        "Lio/didomi/sdk/U;",
        "d",
        "Lio/didomi/sdk/z8;",
        "e",
        "Lio/didomi/sdk/I3;",
        "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
        "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
        "scrollListener",
        "Lio/didomi/sdk/s2;",
        "Lio/didomi/sdk/s2;",
        "()Lio/didomi/sdk/s2;",
        "(Lio/didomi/sdk/s2;)V",
        "headerBinding",
        "Lio/didomi/sdk/r2;",
        "Lio/didomi/sdk/r2;",
        "()Lio/didomi/sdk/r2;",
        "(Lio/didomi/sdk/r2;)V",
        "footerBinding",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/FragmentActivity;

.field private final b:Lio/didomi/sdk/N0;

.field private final c:Lio/didomi/sdk/U;

.field private final d:Lio/didomi/sdk/z8;

.field private final e:Lio/didomi/sdk/I3;

.field private final f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public g:Lio/didomi/sdk/s2;

.field public h:Lio/didomi/sdk/r2;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/N0;Lio/didomi/sdk/U;Lio/didomi/sdk/z8;Lio/didomi/sdk/I3;Landroidx/lifecycle/LifecycleOwner;)V
    .registers 8

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/Q;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iput-object p3, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    iput-object p4, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    iput-object p5, p0, Lio/didomi/sdk/Q;->e:Lio/didomi/sdk/I3;

    new-instance p1, Lio/didomi/sdk/ic;

    invoke-direct {p1, p0}, Lio/didomi/sdk/ic;-><init>(Lio/didomi/sdk/Q;)V

    iput-object p1, p0, Lio/didomi/sdk/Q;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p4}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p5

    invoke-virtual {p5}, Lio/didomi/sdk/M3;->n()Z

    move-result p5

    if-eqz p5, :cond_3f

    iget-object p5, p2, Lio/didomi/sdk/N0;->h:Landroid/view/ViewStub;

    const-string v0, "{\n            binding.st\u2026iceHeaderSticky\n        }"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_46

    :cond_3f
    iget-object p5, p2, Lio/didomi/sdk/N0;->g:Landroid/view/ViewStub;

    const-string v0, "{\n            binding.stubNoticeHeader\n        }"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_46
    new-instance v0, Lio/didomi/sdk/rc;

    invoke-direct {v0, p0}, Lio/didomi/sdk/rc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {p5, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    invoke-virtual {p5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p4}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p5

    invoke-virtual {p5}, Lio/didomi/sdk/M3;->n()Z

    move-result p5

    if-eqz p5, :cond_6c

    iget-object p5, p2, Lio/didomi/sdk/N0;->i:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p1, p2, Lio/didomi/sdk/N0;->f:Landroid/view/ViewStub;

    const-string p5, "{\n            // Add scr\u2026iceFooterSticky\n        }"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_73

    :cond_6c
    iget-object p1, p2, Lio/didomi/sdk/N0;->e:Landroid/view/ViewStub;

    const-string p5, "{\n            binding.stubNoticeFooter\n        }"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_73
    new-instance p5, Lio/didomi/sdk/mc;

    invoke-direct {p5, p0}, Lio/didomi/sdk/mc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {p1, p5}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object p1, p2, Lio/didomi/sdk/N0;->c:Landroid/widget/ImageView;

    const-string p5, "binding.imageNoticeLogo"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/didomi/sdk/U;->n()Lio/didomi/sdk/C3;

    move-result-object p5

    invoke-static {p1, p6, p5}, Lio/didomi/sdk/k3;->a(Landroid/widget/ImageView;Landroidx/lifecycle/LifecycleOwner;Lio/didomi/sdk/C3;)V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->p()V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->m()V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->l()V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->c()V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->o()V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->n()V

    invoke-virtual {p3}, Lio/didomi/sdk/U;->y()Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-virtual {p3}, Lio/didomi/sdk/U;->A()Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->d()Lio/didomi/sdk/r2;

    move-result-object p1

    iget-object p1, p1, Lio/didomi/sdk/r2;->f:Landroidx/constraintlayout/helper/widget/Flow;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/helper/widget/Flow;->setMaxElementsWrap(I)V

    :cond_b4
    invoke-virtual {p4}, Lio/didomi/sdk/z8;->u()Z

    move-result p1

    if-nez p1, :cond_ca

    invoke-virtual {p2}, Lio/didomi/sdk/N0;->a()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lio/didomi/sdk/R$dimen;->didomi_bottom_sheet_top_margin:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3, p3}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIII)V

    goto :goto_e0

    :cond_ca
    invoke-virtual {p4}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->n()Z

    move-result p1

    if-eqz p1, :cond_e0

    invoke-virtual {p2}, Lio/didomi/sdk/N0;->a()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/nc;

    invoke-direct {p2, p0}, Lio/didomi/sdk/nc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_e0
    :goto_e0
    return-void
.end method

.method private final a()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->e()Lio/didomi/sdk/s2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/s2;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v1, "displayDisagreeButtonAsCross$lambda$19"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->c()Lio/didomi/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->n()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v0}, Lio/didomi/sdk/k9;->a(Landroid/view/View;)V

    :cond_23
    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->j()I

    move-result v1

    invoke-static {v0, v1}, Lio/didomi/sdk/l3;->a(Landroid/widget/ImageView;I)V

    new-instance v1, Lio/didomi/sdk/qc;

    invoke-direct {v1, p0}, Lio/didomi/sdk/qc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/Q;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/Q;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {p0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {p0}, Lio/didomi/sdk/U;->D()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/Q;Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/didomi/sdk/s2;->a(Landroid/view/View;)Lio/didomi/sdk/s2;

    move-result-object p1

    const-string p2, "bind(inflated)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/Q;->a(Lio/didomi/sdk/s2;)V

    return-void
.end method

.method private final a(Lio/didomi/sdk/k$i$a;)V
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->e()Lio/didomi/sdk/s2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/s2;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v1, "headerBinding.buttonNoticeHeaderDisagreeCross"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->e()Lio/didomi/sdk/s2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/s2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "headerBinding.buttonNoticeHeaderDisagreeLink"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->d()Lio/didomi/sdk/r2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/r2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "displayDisagreeButton$lambda$15"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/didomi/sdk/U;->a(Z)Lio/didomi/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/M3;->a(Lio/didomi/sdk/k$i$a;)Lio/didomi/sdk/w8;

    move-result-object p1

    invoke-static {v0, p1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    iget-object p1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {p1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->n()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-static {v0}, Lio/didomi/sdk/k9;->a(Landroid/view/View;)V

    :cond_4f
    new-instance p1, Lio/didomi/sdk/sc;

    invoke-direct {p1, p0}, Lio/didomi/sdk/sc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {p1, v2}, Lio/didomi/sdk/U;->b(Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .registers 14

    if-eqz p1, :cond_5b

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5b

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->b:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "displayNoticeVendorsLink$lambda$11"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v11}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->f()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lio/didomi/sdk/q;->a(Landroid/widget/Button;IILjava/lang/Object;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lio/didomi/sdk/oc;

    invoke-direct {p1, p0}, Lio/didomi/sdk/oc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5b
    :goto_5b
    iget-object p1, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object p1, p1, Lio/didomi/sdk/N0;->b:Landroidx/appcompat/widget/AppCompatButton;

    const-string v0, "binding.buttonNoticeVendorLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/Q;)Lio/didomi/sdk/U;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    return-object p0
.end method

.method private final b()V
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->e()Lio/didomi/sdk/s2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/s2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "displayDisagreeButtonAsLink$lambda$17"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/didomi/sdk/U;->a(Z)Lio/didomi/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->g()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->n()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {v0}, Lio/didomi/sdk/k9;->a(Landroid/view/View;)V

    :cond_31
    new-instance v1, Lio/didomi/sdk/pc;

    invoke-direct {v1, p0}, Lio/didomi/sdk/pc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v1}, Lio/didomi/sdk/q;->a(Landroid/widget/Button;IILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1, v2}, Lio/didomi/sdk/U;->b(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final b(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {p0}, Lio/didomi/sdk/U;->D()V

    return-void
.end method

.method private static final b(Lio/didomi/sdk/Q;Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/didomi/sdk/r2;->a(Landroid/view/View;)Lio/didomi/sdk/r2;

    move-result-object p1

    const-string p2, "bind(inflated)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/Q;->a(Lio/didomi/sdk/r2;)V

    return-void
.end method

.method private final c()V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->d()Lio/didomi/sdk/r2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/r2;->d:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->z()Z

    move-result v1

    const-string v2, "displayLearnMoreButton$lambda$21"

    if-eqz v1, :cond_19

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->k()Lio/didomi/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->i()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    new-instance v1, Lio/didomi/sdk/kc;

    invoke-direct {v1, p0}, Lio/didomi/sdk/kc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->l()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic c(Lio/didomi/sdk/Q;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/Q;->g()V

    return-void
.end method

.method private static final c(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {p0}, Lio/didomi/sdk/U;->D()V

    return-void
.end method

.method private static final d(Lio/didomi/sdk/Q;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->d:Landroid/widget/ScrollView;

    const-string v1, "binding.scrollNotice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v1, v1, Lio/didomi/sdk/N0;->i:Landroid/widget/TextView;

    const-string v2, "binding.textNoticeContent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/didomi/sdk/x5;->a(Landroid/widget/ScrollView;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->d()Lio/didomi/sdk/r2;

    move-result-object v0

    iget-object v1, v0, Lio/didomi/sdk/r2;->b:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "buttonNoticeFooterAgree"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/didomi/sdk/k9;->b(Landroid/view/View;)V

    iget-object v0, v0, Lio/didomi/sdk/r2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "buttonNoticeFooterDisagree"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/k9;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->e()Lio/didomi/sdk/s2;

    move-result-object v0

    iget-object v1, v0, Lio/didomi/sdk/s2;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v2, "buttonNoticeHeaderDisagreeCross"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/didomi/sdk/k9;->b(Landroid/view/View;)V

    iget-object v0, v0, Lio/didomi/sdk/s2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "buttonNoticeHeaderDisagreeLink"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/k9;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->j()V

    :cond_50
    return-void
.end method

.method private static final d(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->i()V

    return-void
.end method

.method private static final e(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->g()V

    return-void
.end method

.method private final f()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->F()V

    iget-object v0, p0, Lio/didomi/sdk/Q;->e:Lio/didomi/sdk/I3;

    iget-object v1, p0, Lio/didomi/sdk/Q;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v2, Lio/didomi/sdk/Y5;->b:Lio/didomi/sdk/Y5;

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/I3;->a(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V

    return-void
.end method

.method private static final f(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {p0}, Lio/didomi/sdk/U;->C()V

    return-void
.end method

.method private final g()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->G()V

    iget-object v0, p0, Lio/didomi/sdk/Q;->e:Lio/didomi/sdk/I3;

    iget-object v1, p0, Lio/didomi/sdk/Q;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v2, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/I3;->a(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V

    return-void
.end method

.method private static final g(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->f()V

    return-void
.end method

.method private final h()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->d()Lio/didomi/sdk/r2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/r2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "footerBinding.buttonNoticeFooterDisagree"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final i()V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->E()V

    iget-object v0, p0, Lio/didomi/sdk/Q;->e:Lio/didomi/sdk/I3;

    iget-object v1, p0, Lio/didomi/sdk/Q;->a:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/didomi/sdk/I3;->a(Lio/didomi/sdk/I3;Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;ILjava/lang/Object;)V

    return-void
.end method

.method private final k()V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->c:Landroid/widget/ImageView;

    const-string v1, "binding.imageNoticeLogo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5a

    :cond_1b
    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->j:Landroid/widget/TextView;

    const-string v1, "binding.textNoticeTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-nez v0, :cond_3c

    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5a

    :cond_3c
    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->i:Landroid/widget/TextView;

    const-string v3, "binding.textNoticeContent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_5a
    :goto_5a
    return-void
.end method

.method private final l()V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->d()Lio/didomi/sdk/r2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/r2;->b:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->z()Z

    move-result v1

    const-string v2, "setupAgreeButton$lambda$13"

    if-eqz v1, :cond_19

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->a()Lio/didomi/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->h()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->n()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {v0}, Lio/didomi/sdk/k9;->a(Landroid/view/View;)V

    :cond_41
    new-instance v1, Lio/didomi/sdk/lc;

    invoke-direct {v1, p0}, Lio/didomi/sdk/lc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final m()V
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->z()Z

    move-result v0

    const-string v1, "linkTextColors"

    if-eqz v0, :cond_41

    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->i:Landroid/widget/TextView;

    const-string v2, "setupContentText$lambda$7"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lio/didomi/sdk/L0;->a:Lio/didomi/sdk/L0;

    iget-object v3, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-static {v0, v2, v3}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V

    iget-object v2, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v2}, Lio/didomi/sdk/U;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/didomi/sdk/V5;->k(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    iget-object v3, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v3}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/M3;->e()F

    move-result v3

    invoke-static {v2, v3}, Lio/didomi/sdk/T5;->a(Landroid/text/Spanned;F)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lio/didomi/sdk/T5;->a(Landroid/text/Spanned;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_41
    const/4 v0, 0x0

    iget-object v2, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v2}, Lio/didomi/sdk/U;->r()Lio/didomi/sdk/U$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/U$b;->c()Z

    move-result v3

    if-eqz v3, :cond_58

    new-instance v0, Lio/didomi/sdk/s;

    new-instance v3, Lio/didomi/sdk/Q$a;

    invoke-direct {v3, p0}, Lio/didomi/sdk/Q$a;-><init>(Lio/didomi/sdk/Q;)V

    invoke-direct {v0, v3}, Lio/didomi/sdk/s;-><init>(Lkotlin/jvm/b/l;)V

    :cond_58
    invoke-virtual {v2}, Lio/didomi/sdk/U$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/didomi/sdk/Q;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v3, v3, Lio/didomi/sdk/N0;->i:Landroid/widget/TextView;

    const-string v4, "setupContentText$lambda$8"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lio/didomi/sdk/L0;->a:Lio/didomi/sdk/L0;

    iget-object v5, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-static {v3, v4, v5}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V

    if-nez v0, :cond_75

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :cond_75
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2}, Lio/didomi/sdk/U$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/V5;->k(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v2, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/M3;->e()F

    move-result v2

    invoke-static {v0, v2}, Lio/didomi/sdk/T5;->a(Landroid/text/Spanned;F)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lio/didomi/sdk/T5;->a(Landroid/text/Spanned;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic m(Lio/didomi/sdk/Q;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/Q;->d(Lio/didomi/sdk/Q;)V

    return-void
.end method

.method private final n()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lio/didomi/sdk/k$i$a;->c:Lio/didomi/sdk/k$i$a;

    invoke-direct {p0, v0}, Lio/didomi/sdk/Q;->a(Lio/didomi/sdk/k$i$a;)V

    return-void

    :cond_e
    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->e()Lio/didomi/sdk/k$i$a;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/k$i$a;->e:Lio/didomi/sdk/k$i$a;

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lio/didomi/sdk/Q;->h()V

    goto :goto_25

    :cond_1c
    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->e()Lio/didomi/sdk/k$i$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/Q;->a(Lio/didomi/sdk/k$i$a;)V

    :goto_25
    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->f()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lio/didomi/sdk/Q;->a()V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->k()V

    goto :goto_44

    :cond_36
    invoke-virtual {p0}, Lio/didomi/sdk/Q;->e()Lio/didomi/sdk/s2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/s2;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v2, "headerBinding.buttonNoticeHeaderDisagreeCross"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_44
    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->g()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-direct {p0}, Lio/didomi/sdk/Q;->b()V

    invoke-direct {p0}, Lio/didomi/sdk/Q;->k()V

    goto :goto_61

    :cond_53
    invoke-virtual {p0}, Lio/didomi/sdk/Q;->e()Lio/didomi/sdk/s2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/s2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "headerBinding.buttonNoticeHeaderDisagreeLink"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_61
    return-void
.end method

.method public static synthetic n(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Q;->g(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method

.method private final o()V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/Q;->d()Lio/didomi/sdk/r2;

    move-result-object v0

    iget-object v0, v0, Lio/didomi/sdk/r2;->e:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->h()Z

    move-result v1

    const-string v2, "setupManageSpiChoicesButton$lambda$23"

    if-nez v1, :cond_19

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M3;->i()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    new-instance v1, Lio/didomi/sdk/jc;

    invoke-direct {v1, p0}, Lio/didomi/sdk/jc;-><init>(Lio/didomi/sdk/Q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v1}, Lio/didomi/sdk/U;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic o(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Q;->d(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method

.method private final p()V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q;->c:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v1, v1, Lio/didomi/sdk/N0;->j:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "setupTitleText$lambda$6"

    if-eqz v2, :cond_1b

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    :cond_1b
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lio/didomi/sdk/L0;->b:Lio/didomi/sdk/L0;

    iget-object v3, p0, Lio/didomi/sdk/Q;->d:Lio/didomi/sdk/z8;

    invoke-static {v1, v2, v3}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_28
    return-void
.end method

.method public static synthetic p(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Q;->f(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lio/didomi/sdk/Q;Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/Q;->b(Lio/didomi/sdk/Q;Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lio/didomi/sdk/Q;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/Q;->a(Lio/didomi/sdk/Q;)V

    return-void
.end method

.method public static synthetic s(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Q;->e(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Q;->c(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Q;->b(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lio/didomi/sdk/Q;Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/Q;->a(Lio/didomi/sdk/Q;Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lio/didomi/sdk/Q;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Q;->a(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/r2;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Q;->h:Lio/didomi/sdk/r2;

    return-void
.end method

.method public final a(Lio/didomi/sdk/s2;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Q;->g:Lio/didomi/sdk/s2;

    return-void
.end method

.method public final d()Lio/didomi/sdk/r2;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Q;->h:Lio/didomi/sdk/r2;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "footerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lio/didomi/sdk/s2;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Q;->g:Lio/didomi/sdk/s2;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "headerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/Q;->b:Lio/didomi/sdk/N0;

    iget-object v0, v0, Lio/didomi/sdk/N0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/Q;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method
