###### Class io.didomi.drawable.C1784h7 (io.didomi.sdk.h7)
.class public final Lio/didomi/sdk/h7;
.super Lio/didomi/sdk/i7;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/h7;",
        "Lio/didomi/sdk/i7;",
        "Lio/didomi/sdk/H1;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/H1;)V",
        "Lio/didomi/sdk/b7$a;",
        "callback",
        "",
        "position",
        "Lio/didomi/sdk/x6$f;",
        "vendorsCount",
        "",
        "a",
        "(Lio/didomi/sdk/b7$a;ILio/didomi/sdk/x6$f;)V",
        "Lio/didomi/sdk/H1;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/H1;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H1;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/i7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/h7;->a:Lio/didomi/sdk/H1;

    return-void
.end method

.method private static final a(Lio/didomi/sdk/b7$a;ILandroid/view/View;Z)V
    .registers 4

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_a

    invoke-interface {p0, p1}, Lio/didomi/sdk/b7$a;->a(I)V

    :cond_a
    return-void
.end method

.method private static final a(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;)V
    .registers 3

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$vendorsCount"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/x6$f;->e()Lio/didomi/sdk/d9;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/didomi/sdk/b7$a;->a(Lio/didomi/sdk/d9;)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$vendorsCount"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x16

    if-ne p3, p2, :cond_1d

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1d

    invoke-virtual {p1}, Lio/didomi/sdk/x6$f;->e()Lio/didomi/sdk/d9;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/didomi/sdk/b7$a;->a(Lio/didomi/sdk/d9;)V

    return p3

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lio/didomi/sdk/h7;->a(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/h7;->a(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lio/didomi/sdk/b7$a;ILandroid/view/View;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/h7;->a(Lio/didomi/sdk/b7$a;ILandroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/b7$a;ILio/didomi/sdk/x6$f;)V
    .registers 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorsCount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h7;->a:Lio/didomi/sdk/H1;

    iget-object v0, v0, Lio/didomi/sdk/H1;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/didomi/sdk/x6$f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/didomi/sdk/h7;->a:Lio/didomi/sdk/H1;

    iget-object v0, v0, Lio/didomi/sdk/H1;->b:Landroid/widget/Button;

    invoke-virtual {p3}, Lio/didomi/sdk/x6$f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lio/didomi/sdk/fe;

    invoke-direct {v1, p1, p2}, Lio/didomi/sdk/fe;-><init>(Lio/didomi/sdk/b7$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, Lio/didomi/sdk/ee;

    invoke-direct {p2, p1, p3}, Lio/didomi/sdk/ee;-><init>(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lio/didomi/sdk/de;

    invoke-direct {p2, p1, p3}, Lio/didomi/sdk/de;-><init>(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

###### Class io.didomi.drawable.de (io.didomi.sdk.de)
.class public final synthetic Lio/didomi/sdk/de;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/b7$a;

.field public final synthetic b:Lio/didomi/sdk/x6$f;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/de;->a:Lio/didomi/sdk/b7$a;

    iput-object p2, p0, Lio/didomi/sdk/de;->b:Lio/didomi/sdk/x6$f;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/de;->a:Lio/didomi/sdk/b7$a;

    iget-object v1, p0, Lio/didomi/sdk/de;->b:Lio/didomi/sdk/x6$f;

    invoke-static {v0, v1, p1, p2, p3}, Lio/didomi/sdk/h7;->b(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.didomi.drawable.ee (io.didomi.sdk.ee)
.class public final synthetic Lio/didomi/sdk/ee;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/b7$a;

.field public final synthetic b:Lio/didomi/sdk/x6$f;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ee;->a:Lio/didomi/sdk/b7$a;

    iput-object p2, p0, Lio/didomi/sdk/ee;->b:Lio/didomi/sdk/x6$f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ee;->a:Lio/didomi/sdk/b7$a;

    iget-object v1, p0, Lio/didomi/sdk/ee;->b:Lio/didomi/sdk/x6$f;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/h7;->c(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.fe (io.didomi.sdk.fe)
.class public final synthetic Lio/didomi/sdk/fe;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/b7$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/b7$a;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/fe;->a:Lio/didomi/sdk/b7$a;

    iput p2, p0, Lio/didomi/sdk/fe;->b:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/fe;->a:Lio/didomi/sdk/b7$a;

    iget v1, p0, Lio/didomi/sdk/fe;->b:I

    invoke-static {v0, v1, p1, p2}, Lio/didomi/sdk/h7;->d(Lio/didomi/sdk/b7$a;ILandroid/view/View;Z)V

    return-void
.end method
