###### Class io.didomi.drawable.W7 (io.didomi.sdk.W7)
.class public final Lio/didomi/sdk/W7;
.super Lio/didomi/sdk/Y7;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/didomi/sdk/W7;",
        "Lio/didomi/sdk/Y7;",
        "Lio/didomi/sdk/f2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/f2;)V",
        "Lio/didomi/sdk/V7$i;",
        "legitimateInterest",
        "Lio/didomi/sdk/K7$a;",
        "callback",
        "",
        "a",
        "(Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;)V",
        "Lio/didomi/sdk/f2;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/f2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/f2;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/Y7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/W7;->a:Lio/didomi/sdk/f2;

    return-void
.end method

.method private static final a(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;Landroid/view/View;)V
    .registers 5

    const-string p3, "$this_apply"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$legitimateInterest"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$callback"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lio/didomi/sdk/f2;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iget-object v0, p0, Lio/didomi/sdk/f2;->d:Landroid/widget/TextView;

    if-eqz p3, :cond_20

    invoke-virtual {p1}, Lio/didomi/sdk/V7$i;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Lio/didomi/sdk/V7$i;->c()Ljava/lang/String;

    move-result-object p1

    :goto_24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lio/didomi/sdk/f2;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-interface {p2, p3}, Lio/didomi/sdk/K7$a;->b(Z)V

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

    invoke-interface {p0}, Lio/didomi/sdk/K7$a;->c()V

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public static synthetic b(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/W7;->a(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/K7$a;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/W7;->a(Lio/didomi/sdk/K7$a;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;)V
    .registers 6

    const-string v0, "legitimateInterest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/W7;->a:Lio/didomi/sdk/f2;

    iget-object v1, v0, Lio/didomi/sdk/f2;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/V7$i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/f2;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/V7$i;->f()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lio/didomi/sdk/V7$i;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_22
    invoke-virtual {p1}, Lio/didomi/sdk/V7$i;->c()Ljava/lang/String;

    move-result-object v2

    :goto_26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/f2;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Lio/didomi/sdk/V7$i;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lio/didomi/sdk/kd;

    invoke-direct {v2, v0, p1, p2}, Lio/didomi/sdk/kd;-><init>(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lio/didomi/sdk/ld;

    invoke-direct {v0, p2}, Lio/didomi/sdk/ld;-><init>(Lio/didomi/sdk/K7$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

###### Class io.didomi.drawable.kd (io.didomi.sdk.kd)
.class public final synthetic Lio/didomi/sdk/kd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/f2;

.field public final synthetic b:Lio/didomi/sdk/V7$i;

.field public final synthetic c:Lio/didomi/sdk/K7$a;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/kd;->a:Lio/didomi/sdk/f2;

    iput-object p2, p0, Lio/didomi/sdk/kd;->b:Lio/didomi/sdk/V7$i;

    iput-object p3, p0, Lio/didomi/sdk/kd;->c:Lio/didomi/sdk/K7$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/kd;->a:Lio/didomi/sdk/f2;

    iget-object v1, p0, Lio/didomi/sdk/kd;->b:Lio/didomi/sdk/V7$i;

    iget-object v2, p0, Lio/didomi/sdk/kd;->c:Lio/didomi/sdk/K7$a;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/W7;->b(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.ld (io.didomi.sdk.ld)
.class public final synthetic Lio/didomi/sdk/ld;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/K7$a;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/K7$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ld;->a:Lio/didomi/sdk/K7$a;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/ld;->a:Lio/didomi/sdk/K7$a;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/W7;->c(Lio/didomi/sdk/K7$a;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
