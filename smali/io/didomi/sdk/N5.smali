###### Class io.didomi.drawable.N5 (io.didomi.sdk.N5)
.class public final Lio/didomi/sdk/N5;
.super Lio/didomi/sdk/P5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/N5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/N5;",
        "Lio/didomi/sdk/P5;",
        "Lio/didomi/sdk/A1;",
        "binding",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Lio/didomi/sdk/A1;Lio/didomi/sdk/z8;)V",
        "Lio/didomi/sdk/Z3;",
        "data",
        "",
        "a",
        "(Lio/didomi/sdk/Z3;)V",
        "c",
        "Lio/didomi/sdk/A1;",
        "d",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lio/didomi/sdk/N5$a;


# instance fields
.field private final c:Lio/didomi/sdk/A1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/N5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/N5$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/N5;->d:Lio/didomi/sdk/N5$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/A1;Lio/didomi/sdk/z8;)V
    .registers 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/P5;-><init>(Landroidx/viewbinding/ViewBinding;Lio/didomi/sdk/z8;)V

    iput-object p1, p0, Lio/didomi/sdk/N5;->c:Lio/didomi/sdk/A1;

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/Z3;)V
    .registers 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/didomi/sdk/P5;->a(Lio/didomi/sdk/W3;)V

    iget-object v0, p0, Lio/didomi/sdk/N5;->c:Lio/didomi/sdk/A1;

    iget-object v0, v0, Lio/didomi/sdk/A1;->c:Landroid/widget/TextView;

    const-string v1, "bind$lambda$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/didomi/sdk/L0;->c:Lio/didomi/sdk/L0;

    invoke-virtual {p0}, Lio/didomi/sdk/P5;->b()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lio/didomi/sdk/Z3;->c()Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/P5;->b()Lio/didomi/sdk/z8;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/e4;->f()F

    move-result v3

    invoke-static {v2, v3}, Lio/didomi/sdk/T5;->a(Landroid/text/Spanned;F)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/didomi/sdk/N5;->c:Lio/didomi/sdk/A1;

    iget-object v0, v0, Lio/didomi/sdk/A1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/Z3;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind$lambda$2"

    if-eqz v2, :cond_75

    invoke-static {v2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_75

    :cond_4b
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/P5;->b()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lio/didomi/sdk/Z3;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7d

    :cond_75
    :goto_75
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_7d
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.N5.Companion (io.didomi.sdk.N5$a)
.class public final Lio/didomi/sdk/N5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/N5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/N5$a;",
        "",
        "<init>",
        "()V",
        "",
        "ID",
        "I",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/N5$a;-><init>()V

    return-void
.end method
