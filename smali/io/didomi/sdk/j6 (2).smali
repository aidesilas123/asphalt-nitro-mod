###### Class io.didomi.drawable.C1803j6 (io.didomi.sdk.j6)
.class public final Lio/didomi/sdk/j6;
.super Lio/didomi/sdk/M6;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J8\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/didomi/sdk/j6;",
        "Lio/didomi/sdk/M6;",
        "Lio/didomi/sdk/O1;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/O1;)V",
        "Lio/didomi/sdk/J6$d;",
        "category",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isChecked",
        "",
        "callback",
        "a",
        "(Lio/didomi/sdk/J6$d;Lkotlin/jvm/functions/Function1;)V",
        "Lio/didomi/sdk/O1;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/O1;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/O1;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/M6;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/j6;->a:Lio/didomi/sdk/O1;

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

.method private static final a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V
    .registers 2

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void
.end method

.method public static synthetic b(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/j6;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/j6;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/J6$d;Lkotlin/jvm/b/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/J6$d;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/j6;->a:Lio/didomi/sdk/O1;

    iget-object v1, v0, Lio/didomi/sdk/O1;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lio/didomi/sdk/O1;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/J6$d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/didomi/sdk/j6;->a:Lio/didomi/sdk/O1;

    iget-object v0, v0, Lio/didomi/sdk/O1;->c:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setAnimate(Z)V

    invoke-virtual {p1}, Lio/didomi/sdk/J6$d;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setChecked(Z)V

    invoke-virtual {p1}, Lio/didomi/sdk/J6$d;->g()Z

    move-result p1

    const-string v2, "bind$lambda$3"

    if-eqz p1, :cond_44

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setEnabled(Z)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    :cond_44
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setEnabled(Z)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lio/didomi/sdk/j6$a;

    invoke-direct {p1, p2}, Lio/didomi/sdk/j6$a;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v0, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    iget-object p1, p0, Lio/didomi/sdk/j6;->a:Lio/didomi/sdk/O1;

    invoke-virtual {p1}, Lio/didomi/sdk/O1;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/ke;

    invoke-direct {p2, v0}, Lio/didomi/sdk/ke;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lio/didomi/sdk/je;

    invoke-direct {p1, v0}, Lio/didomi/sdk/je;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_6c
    return-void
.end method

###### Class io.didomi.drawable.C1803j6.a (io.didomi.sdk.j6$a)
.class public final Lio/didomi/sdk/j6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j6;->a(Lio/didomi/sdk/J6$d;Lkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/j6$a",
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;",
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;",
        "switch",
        "",
        "isChecked",
        "",
        "a",
        "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/j6$a;->a:Lkotlin/jvm/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V
    .registers 4

    const-string v0, "switch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/j6$a;->a:Lkotlin/jvm/b/l;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.didomi.drawable.je (io.didomi.sdk.je)
.class public final synthetic Lio/didomi/sdk/je;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/je;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/je;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-static {v0}, Lio/didomi/sdk/j6;->b(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method

###### Class io.didomi.drawable.ke (io.didomi.sdk.ke)
.class public final synthetic Lio/didomi/sdk/ke;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ke;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ke;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-static {v0, p1}, Lio/didomi/sdk/j6;->c(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V

    return-void
.end method
