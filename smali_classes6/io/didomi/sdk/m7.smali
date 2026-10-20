###### Class io.didomi.drawable.M7 (io.didomi.sdk.M7)
.class public final Lio/didomi/sdk/M7;
.super Lio/didomi/sdk/Y7;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/didomi/sdk/M7;",
        "Lio/didomi/sdk/Y7;",
        "Lio/didomi/sdk/c2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/c2;)V",
        "Lio/didomi/sdk/V7$b;",
        "consent",
        "Lio/didomi/sdk/K7$a;",
        "callback",
        "",
        "a",
        "(Lio/didomi/sdk/V7$b;Lio/didomi/sdk/K7$a;)V",
        "Lio/didomi/sdk/c2;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/c2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/c2;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/Y7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/M7;->a:Lio/didomi/sdk/c2;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/M7;)Lio/didomi/sdk/c2;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/M7;->a:Lio/didomi/sdk/c2;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 2

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setAnimate(Z)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V
    .registers 2

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void
.end method

.method private static final a(Lio/didomi/sdk/K7$a;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string p1, "$callback"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x16

    if-ne p2, v0, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_14

    invoke-interface {p0}, Lio/didomi/sdk/K7$a;->a()V

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public static synthetic b(Lio/didomi/sdk/K7$a;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/M7;->a(Lio/didomi/sdk/K7$a;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/M7;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method

.method public static synthetic d(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/M7;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/V7$b;Lio/didomi/sdk/K7$a;)V
    .registers 6

    const-string v0, "consent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/M7;->a:Lio/didomi/sdk/c2;

    iget-object v1, v0, Lio/didomi/sdk/c2;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/V7$b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lio/didomi/sdk/c2;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/V7$b;->f()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Lio/didomi/sdk/V7$b;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_22
    invoke-virtual {p1}, Lio/didomi/sdk/V7$b;->c()Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/didomi/sdk/M7;->a:Lio/didomi/sdk/c2;

    iget-object v0, v0, Lio/didomi/sdk/c2;->c:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setAnimate(Z)V

    invoke-virtual {p1}, Lio/didomi/sdk/V7$b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setChecked(Z)V

    new-instance v1, Lio/didomi/sdk/M7$a;

    invoke-direct {v1, p0, p1, p2}, Lio/didomi/sdk/M7$a;-><init>(Lio/didomi/sdk/M7;Lio/didomi/sdk/V7$b;Lio/didomi/sdk/K7$a;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/didomi/sdk/ac;

    invoke-direct {v1, v0}, Lio/didomi/sdk/ac;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lio/didomi/sdk/zb;

    invoke-direct {p1, v0}, Lio/didomi/sdk/zb;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lio/didomi/sdk/yb;

    invoke-direct {v0, p2}, Lio/didomi/sdk/yb;-><init>(Lio/didomi/sdk/K7$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
