###### Class io.didomi.drawable.Z8 (io.didomi.sdk.Z8)
.class public final Lio/didomi/sdk/Z8;
.super Lio/didomi/sdk/g9;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\r\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/didomi/sdk/Z8;",
        "Lio/didomi/sdk/g9;",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Lio/didomi/sdk/l2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/z8;Lio/didomi/sdk/l2;)V",
        "Lio/didomi/sdk/U8$a;",
        "data",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$a;",
        "toggleCallback",
        "",
        "a",
        "(Lio/didomi/sdk/U8$a;Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "(Lio/didomi/sdk/U8$a;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "c",
        "Lio/didomi/sdk/l2;",
        "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "nextState",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final c:Lio/didomi/sdk/l2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/z8;Lio/didomi/sdk/l2;)V
    .registers 4

    const-string v0, "themeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/g9;-><init>(Lio/didomi/sdk/z8;Landroidx/viewbinding/ViewBinding;)V

    iput-object p2, p0, Lio/didomi/sdk/Z8;->c:Lio/didomi/sdk/l2;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lio/didomi/sdk/z8;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 2

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setAnimate(Z)V

    return-void
.end method

.method public static synthetic d(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/Z8;->a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/U8$a;Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V
    .registers 15

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggleCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/didomi/sdk/g9;->a(Lio/didomi/sdk/U8;)V

    iget-object v0, p0, Lio/didomi/sdk/Z8;->c:Lio/didomi/sdk/l2;

    iget-object v0, v0, Lio/didomi/sdk/l2;->b:Landroid/widget/TextView;

    const-string v1, "bind$lambda$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/g9;->b()Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/e4;->n()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/didomi/sdk/Z8;->c:Lio/didomi/sdk/l2;

    iget-object v0, v0, Lio/didomi/sdk/l2;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setAnimate(Z)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->i()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setState(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setHasMiddleState(Z)V

    invoke-virtual {v0, p2}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    new-instance p2, Lio/didomi/sdk/qd;

    invoke-direct {p2, v0}, Lio/didomi/sdk/qd;-><init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->d()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->i()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->g()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->i()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    sget-object v9, Lio/didomi/sdk/b;->c:Lio/didomi/sdk/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x70

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/U8$a;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$a;->g()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/Z8;->c:Lio/didomi/sdk/l2;

    iget-object v0, v0, Lio/didomi/sdk/l2;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-virtual {v0}, Lio/didomi/sdk/view/mobile/DidomiToggle;->getState()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->a(Z)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.qd (io.didomi.sdk.qd)
.class public final synthetic Lio/didomi/sdk/qd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/view/mobile/DidomiToggle;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/qd;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/qd;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-static {v0}, Lio/didomi/sdk/Z8;->d(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method
