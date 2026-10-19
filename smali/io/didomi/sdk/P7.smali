###### Class io.didomi.drawable.P7 (io.didomi.sdk.P7)
.class public final Lio/didomi/sdk/P7;
.super Lio/didomi/sdk/Y7;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/didomi/sdk/P7;",
        "Lio/didomi/sdk/Y7;",
        "Lio/didomi/sdk/b2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/b2;)V",
        "Lio/didomi/sdk/V7$e;",
        "deviceStorageDisclosure",
        "Lio/didomi/sdk/K7$a;",
        "callback",
        "",
        "a",
        "(Lio/didomi/sdk/V7$e;Lio/didomi/sdk/K7$a;)V",
        "Lio/didomi/sdk/b2;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/b2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/b2;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/Y7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/P7;->a:Lio/didomi/sdk/b2;

    return-void
.end method

.method private static final a(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;Landroid/view/View;)V
    .registers 3

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$deviceStorageDisclosure"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/V7$e;->c()I

    move-result p1

    invoke-interface {p0, p1}, Lio/didomi/sdk/K7$a;->b(I)V

    return-void
.end method

.method private static final a(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x16

    if-ne p2, v0, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public static synthetic b(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/P7;->a(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/P7;->a(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/V7$e;Lio/didomi/sdk/K7$a;)V
    .registers 5

    const-string v0, "deviceStorageDisclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/P7;->a:Lio/didomi/sdk/b2;

    iget-object v0, v0, Lio/didomi/sdk/b2;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/V7$e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/didomi/sdk/gc;

    invoke-direct {v1, p2, p1}, Lio/didomi/sdk/gc;-><init>(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lio/didomi/sdk/hc;

    invoke-direct {p1, v0}, Lio/didomi/sdk/hc;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

###### Class io.didomi.drawable.gc (io.didomi.sdk.gc)
.class public final synthetic Lio/didomi/sdk/gc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/K7$a;

.field public final synthetic b:Lio/didomi/sdk/V7$e;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/gc;->a:Lio/didomi/sdk/K7$a;

    iput-object p2, p0, Lio/didomi/sdk/gc;->b:Lio/didomi/sdk/V7$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/gc;->a:Lio/didomi/sdk/K7$a;

    iget-object v1, p0, Lio/didomi/sdk/gc;->b:Lio/didomi/sdk/V7$e;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/P7;->b(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.hc (io.didomi.sdk.hc)
.class public final synthetic Lio/didomi/sdk/hc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/hc;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/hc;->a:Landroid/view/View;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/P7;->c(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
