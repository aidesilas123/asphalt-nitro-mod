###### Class io.didomi.drawable.C1785h8 (io.didomi.sdk.h8)
.class public final Lio/didomi/sdk/h8;
.super Lio/didomi/sdk/m8;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J8\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/didomi/sdk/h8;",
        "Lio/didomi/sdk/m8;",
        "Lio/didomi/sdk/i2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/i2;)V",
        "Lio/didomi/sdk/g8$g;",
        "vendor",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isChecked",
        "",
        "callback",
        "a",
        "(Lio/didomi/sdk/g8$g;Lkotlin/jvm/functions/Function1;)V",
        "Lio/didomi/sdk/i2;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/i2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/i2;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/m8;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

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

.method public static synthetic b(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/h8;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/h8;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/g8$g;Lkotlin/jvm/b/l;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g8$g;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

    iget-object v0, v0, Lio/didomi/sdk/i2;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/g8$g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

    iget-object v0, v0, Lio/didomi/sdk/i2;->e:Landroid/widget/TextView;

    const-string v1, "binding.textCtvVendorItemIabtcfTag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/g8$g;->h()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2b

    :cond_29
    const/16 v1, 0x8

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lio/didomi/sdk/g8$g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

    iget-object v2, v0, Lio/didomi/sdk/i2;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/g8$g;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lio/didomi/sdk/i2;->f:Landroid/widget/TextView;

    const-string v2, "textCtvVendorItemStatus"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

    iget-object v0, v0, Lio/didomi/sdk/i2;->d:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-virtual {v0, v3}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setAnimate(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setEnabled(Z)V

    const-string v2, "bind$lambda$3"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    invoke-virtual {p1}, Lio/didomi/sdk/g8$g;->g()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setChecked(Z)V

    new-instance p1, Lio/didomi/sdk/h8$a;

    invoke-direct {p1, p2}, Lio/didomi/sdk/h8$a;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v0, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    iget-object p1, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

    invoke-virtual {p1}, Lio/didomi/sdk/i2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/ge;

    invoke-direct {p2, v0}, Lio/didomi/sdk/ge;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lio/didomi/sdk/he;

    invoke-direct {p1, v0}, Lio/didomi/sdk/he;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_a5

    :cond_86
    iget-object p1, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

    iget-object p1, p1, Lio/didomi/sdk/i2;->f:Landroid/widget/TextView;

    const-string p2, "binding.textCtvVendorItemStatus"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lio/didomi/sdk/h8;->a:Lio/didomi/sdk/i2;

    iget-object p1, p1, Lio/didomi/sdk/i2;->d:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-virtual {p1, v3}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setEnabled(Z)V

    const-string p2, "bind$lambda$4"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    :goto_a5
    return-void
.end method

###### Class io.didomi.drawable.C1785h8.a (io.didomi.sdk.h8$a)
.class public final Lio/didomi/sdk/h8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h8;->a(Lio/didomi/sdk/g8$g;Lkotlin/jvm/b/l;)V
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
        "io/didomi/sdk/h8$a",
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

    iput-object p1, p0, Lio/didomi/sdk/h8$a;->a:Lkotlin/jvm/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V
    .registers 4

    const-string v0, "switch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/h8$a;->a:Lkotlin/jvm/b/l;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.didomi.drawable.ge (io.didomi.sdk.ge)
.class public final synthetic Lio/didomi/sdk/ge;
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

    iput-object p1, p0, Lio/didomi/sdk/ge;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ge;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-static {v0, p1}, Lio/didomi/sdk/h8;->b(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.he (io.didomi.sdk.he)
.class public final synthetic Lio/didomi/sdk/he;
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

    iput-object p1, p0, Lio/didomi/sdk/he;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/he;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-static {v0}, Lio/didomi/sdk/h8;->c(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method
