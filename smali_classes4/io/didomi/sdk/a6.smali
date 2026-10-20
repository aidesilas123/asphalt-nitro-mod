###### Class io.didomi.drawable.A6 (io.didomi.sdk.A6)
.class public final Lio/didomi/sdk/A6;
.super Lio/didomi/sdk/M6;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J8\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/didomi/sdk/A6;",
        "Lio/didomi/sdk/M6;",
        "Lio/didomi/sdk/I1;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/I1;)V",
        "Lio/didomi/sdk/J6$c;",
        "bulk",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isChecked",
        "",
        "callback",
        "a",
        "(Lio/didomi/sdk/J6$c;Lkotlin/jvm/functions/Function1;)V",
        "Lio/didomi/sdk/I1;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/I1;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/I1;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/M6;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/A6;->a:Lio/didomi/sdk/I1;

    return-void
.end method

.method private static final a(Lio/didomi/sdk/I1;Landroid/view/View;)V
    .registers 2

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/I1;->b:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void
.end method

.method private static final a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 2

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setAnimate(Z)V

    return-void
.end method

.method public static synthetic b(Lio/didomi/sdk/I1;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/A6;->a(Lio/didomi/sdk/I1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/A6;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/J6$c;Lkotlin/jvm/b/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/J6$c;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bulk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/A6;->a:Lio/didomi/sdk/I1;

    iget-object v1, v0, Lio/didomi/sdk/I1;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/I1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/I1;->b:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setAnimate(Z)V

    invoke-virtual {p1}, Lio/didomi/sdk/J6$c;->e()Z

    move-result p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setChecked(Z)V

    new-instance p1, Lio/didomi/sdk/A6$a;

    invoke-direct {p1, p2}, Lio/didomi/sdk/A6$a;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v1, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    new-instance p1, Lio/didomi/sdk/p9;

    invoke-direct {p1, v1}, Lio/didomi/sdk/p9;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lio/didomi/sdk/I1;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/o9;

    invoke-direct {p2, v0}, Lio/didomi/sdk/o9;-><init>(Lio/didomi/sdk/I1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
