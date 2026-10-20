###### Class io.didomi.drawable.O5 (io.didomi.sdk.O5)
.class public final Lio/didomi/sdk/O5;
.super Lio/didomi/sdk/P5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/O5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 \u00162\u00020\u0001:\u0001\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/didomi/sdk/O5;",
        "Lio/didomi/sdk/P5;",
        "Lio/didomi/sdk/B1;",
        "binding",
        "Lio/didomi/sdk/G5$a;",
        "callbacks",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Lio/didomi/sdk/B1;Lio/didomi/sdk/G5$a;Lio/didomi/sdk/z8;)V",
        "Lio/didomi/sdk/a4;",
        "data",
        "",
        "position",
        "",
        "a",
        "(Lio/didomi/sdk/a4;I)V",
        "b",
        "c",
        "Lio/didomi/sdk/B1;",
        "d",
        "Lio/didomi/sdk/G5$a;",
        "e",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final e:Lio/didomi/sdk/O5$a;


# instance fields
.field private final c:Lio/didomi/sdk/B1;

.field private final d:Lio/didomi/sdk/G5$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/O5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/O5$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/O5;->e:Lio/didomi/sdk/O5$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/B1;Lio/didomi/sdk/G5$a;Lio/didomi/sdk/z8;)V
    .registers 5

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lio/didomi/sdk/P5;-><init>(Landroidx/viewbinding/ViewBinding;Lio/didomi/sdk/z8;)V

    iput-object p1, p0, Lio/didomi/sdk/O5;->c:Lio/didomi/sdk/B1;

    iput-object p2, p0, Lio/didomi/sdk/O5;->d:Lio/didomi/sdk/G5$a;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/O5;)Lio/didomi/sdk/G5$a;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/O5;->d:Lio/didomi/sdk/G5$a;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/O5;Lio/didomi/sdk/a4;Landroid/view/View;)V
    .registers 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/O5;->d:Lio/didomi/sdk/G5$a;

    invoke-virtual {p1}, Lio/didomi/sdk/a4;->a()Lio/didomi/sdk/W3$a;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/a4;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lio/didomi/sdk/G5$a;->a(Lio/didomi/sdk/W3$a;Ljava/lang/String;)V

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

.method public static synthetic c(Lio/didomi/sdk/O5;Lio/didomi/sdk/a4;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/O5;->a(Lio/didomi/sdk/O5;Lio/didomi/sdk/a4;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/O5;->a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/a4;I)V
    .registers 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/didomi/sdk/P5;->a(Lio/didomi/sdk/W3;)V

    iget-object v0, p0, Lio/didomi/sdk/O5;->c:Lio/didomi/sdk/B1;

    iget-object v1, v0, Lio/didomi/sdk/B1;->d:Landroid/widget/TextView;

    const-string v2, "bind$lambda$3$lambda$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/P5;->b()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/e4;->c()Lio/didomi/sdk/w8;

    move-result-object v2

    invoke-static {v1, v2}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {p1}, Lio/didomi/sdk/a4;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/B1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "bind$lambda$3$lambda$1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/a4;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_42

    invoke-virtual {p0}, Lio/didomi/sdk/P5;->b()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    if-eqz v2, :cond_47

    const/4 v2, 0x0

    goto :goto_49

    :cond_47
    const/16 v2, 0x8

    :goto_49
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lio/didomi/sdk/a4;->g()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lio/didomi/sdk/bc;

    invoke-direct {v2, p0, p1}, Lio/didomi/sdk/bc;-><init>(Lio/didomi/sdk/O5;Lio/didomi/sdk/a4;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_63

    :cond_5d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_63
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lio/didomi/sdk/a4;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v0, Lio/didomi/sdk/B1;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-virtual {v0, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setHasMiddleState(Z)V

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/O5;->b(Lio/didomi/sdk/a4;I)V

    return-void
.end method

.method public final b(Lio/didomi/sdk/a4;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    sget-object v2, Lio/didomi/sdk/b;->b:Lio/didomi/sdk/b;

    move-object v15, v2

    goto :goto_3b

    :cond_3a
    move-object v15, v3

    :goto_3b
    const/16 v16, 0x3c

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v17}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    iget-object v2, v0, Lio/didomi/sdk/O5;->c:Lio/didomi/sdk/B1;

    iget-object v2, v2, Lio/didomi/sdk/B1;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    invoke-virtual {v2}, Lio/didomi/sdk/view/mobile/DidomiToggle;->getState()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v4

    const/4 v14, 0x0

    if-eq v3, v4, :cond_6a

    invoke-virtual {v2, v14}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setAnimate(Z)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setState(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    new-instance v3, Lio/didomi/sdk/cc;

    invoke-direct {v3, v2}, Lio/didomi/sdk/cc;-><init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6a
    const-string v3, "update$lambda$5"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->d()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf0

    const/4 v13, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v13}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/a4;->d()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-virtual {v1, v14}, Lio/didomi/sdk/a4;->a(Z)V

    :cond_9e
    new-instance v3, Lio/didomi/sdk/O5$b;

    invoke-direct {v3, v0, v1}, Lio/didomi/sdk/O5$b;-><init>(Lio/didomi/sdk/O5;Lio/didomi/sdk/a4;)V

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    return-void
.end method
