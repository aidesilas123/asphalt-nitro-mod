###### Class io.didomi.drawable.c9 (io.didomi.sdk.c9)
.class public final Lio/didomi/sdk/c9;
.super Lio/didomi/sdk/g9;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\r\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/didomi/sdk/c9;",
        "Lio/didomi/sdk/g9;",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Lio/didomi/sdk/m2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/z8;Lio/didomi/sdk/m2;)V",
        "Lio/didomi/sdk/U8$b;",
        "header",
        "Lkotlin/Function0;",
        "",
        "userInfoCallback",
        "a",
        "(Lio/didomi/sdk/U8$b;Lkotlin/jvm/functions/Function0;)V",
        "c",
        "Lio/didomi/sdk/m2;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final c:Lio/didomi/sdk/m2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/z8;Lio/didomi/sdk/m2;)V
    .registers 4

    const-string v0, "themeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/g9;-><init>(Lio/didomi/sdk/z8;Landroidx/viewbinding/ViewBinding;)V

    iput-object p2, p0, Lio/didomi/sdk/c9;->c:Lio/didomi/sdk/m2;

    return-void
.end method

.method private static final a(Lkotlin/jvm/b/a;Landroid/view/View;)V
    .registers 2

    const-string p1, "$userInfoCallback"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/b/a;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/c9;->a(Lkotlin/jvm/b/a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/U8$b;Lkotlin/jvm/b/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/U8$b;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/didomi/sdk/g9;->a(Lio/didomi/sdk/U8;)V

    iget-object v0, p0, Lio/didomi/sdk/c9;->c:Lio/didomi/sdk/m2;

    iget-object v0, v0, Lio/didomi/sdk/m2;->d:Landroid/widget/TextView;

    const-string v1, "bind$lambda$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/j9;->b(Landroid/view/View;)V

    sget-object v1, Lio/didomi/sdk/L0;->d:Lio/didomi/sdk/L0;

    invoke-virtual {p0}, Lio/didomi/sdk/g9;->b()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3b

    invoke-static {v1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v1, 0x0

    goto :goto_3d

    :cond_3b
    :goto_3b
    const/16 v1, 0x8

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/didomi/sdk/c9;->c:Lio/didomi/sdk/m2;

    iget-object v0, v0, Lio/didomi/sdk/m2;->c:Landroid/widget/TextView;

    const-string v1, "bind$lambda$1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/didomi/sdk/L0;->c:Lio/didomi/sdk/L0;

    invoke-virtual {p0}, Lio/didomi/sdk/g9;->b()Lio/didomi/sdk/z8;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$b;->d()Landroid/text/Spanned;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-virtual {p0}, Lio/didomi/sdk/g9;->b()Lio/didomi/sdk/z8;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/e4;->f()F

    move-result v4

    invoke-static {v1, v4}, Lio/didomi/sdk/T5;->a(Landroid/text/Spanned;F)Landroid/text/Spannable;

    move-result-object v1

    goto :goto_6a

    :cond_69
    const/4 v1, 0x0

    :goto_6a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-static {v1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    :cond_79
    const/16 v2, 0x8

    :cond_7b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/didomi/sdk/c9;->c:Lio/didomi/sdk/m2;

    iget-object v0, v0, Lio/didomi/sdk/m2;->b:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "bind$lambda$3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$b;->f()Lio/didomi/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    invoke-virtual {p0}, Lio/didomi/sdk/g9;->b()Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/e4;->i()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/q;->b(Landroid/widget/Button;Lio/didomi/sdk/w8;)V

    new-instance v1, Lio/didomi/sdk/wd;

    invoke-direct {v1, p2}, Lio/didomi/sdk/wd;-><init>(Lkotlin/jvm/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;)V

    return-void
.end method
