###### Class io.didomi.drawable.D7 (io.didomi.sdk.D7)
.class public final Lio/didomi/sdk/D7;
.super Lio/didomi/sdk/m8;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J8\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/didomi/sdk/D7;",
        "Lio/didomi/sdk/m8;",
        "Lio/didomi/sdk/Z1;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/Z1;)V",
        "Lio/didomi/sdk/g8$a;",
        "bulk",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isChecked",
        "",
        "callback",
        "a",
        "(Lio/didomi/sdk/g8$a;Lkotlin/jvm/functions/Function1;)V",
        "Lio/didomi/sdk/Z1;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/Z1;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/Z1;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/m8;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/D7;->a:Lio/didomi/sdk/Z1;

    return-void
.end method

.method private static final a(Lio/didomi/sdk/Z1;Landroid/view/View;)V
    .registers 2

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/Z1;->b:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

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

.method public static synthetic b(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/D7;->a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/Z1;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/D7;->a(Lio/didomi/sdk/Z1;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/g8$a;Lkotlin/jvm/b/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g8$a;",
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

    iget-object v0, p0, Lio/didomi/sdk/D7;->a:Lio/didomi/sdk/Z1;

    iget-object v1, v0, Lio/didomi/sdk/Z1;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/g8$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/Z1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/g8$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/Z1;->b:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setAnimate(Z)V

    invoke-virtual {p1}, Lio/didomi/sdk/g8$a;->e()Z

    move-result p1

    invoke-virtual {v1, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setChecked(Z)V

    new-instance p1, Lio/didomi/sdk/D7$a;

    invoke-direct {p1, p2}, Lio/didomi/sdk/D7$a;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v1, p1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    new-instance p1, Lio/didomi/sdk/w9;

    invoke-direct {p1, v1}, Lio/didomi/sdk/w9;-><init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lio/didomi/sdk/Z1;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/x9;

    invoke-direct {p2, v0}, Lio/didomi/sdk/x9;-><init>(Lio/didomi/sdk/Z1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class io.didomi.sdk.D7.a (io.didomi.sdk.D7$a)
.class public final Lio/didomi/sdk/D7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/D7;->a(Lio/didomi/sdk/g8$a;Lkotlin/jvm/b/l;)V
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
        "io/didomi/sdk/D7$a",
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

    iput-object p1, p0, Lio/didomi/sdk/D7$a;->a:Lkotlin/jvm/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V
    .registers 4

    const-string v0, "switch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/D7$a;->a:Lkotlin/jvm/b/l;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.didomi.drawable.w9 (io.didomi.sdk.w9)
.class public final synthetic Lio/didomi/sdk/w9;
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

    iput-object p1, p0, Lio/didomi/sdk/w9;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/w9;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-static {v0}, Lio/didomi/sdk/D7;->b(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method

###### Class io.didomi.drawable.x9 (io.didomi.sdk.x9)
.class public final synthetic Lio/didomi/sdk/x9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Z1;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Z1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/x9;->a:Lio/didomi/sdk/Z1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/x9;->a:Lio/didomi/sdk/Z1;

    invoke-static {v0, p1}, Lio/didomi/sdk/D7;->c(Lio/didomi/sdk/Z1;Landroid/view/View;)V

    return-void
.end method
