###### Class io.didomi.drawable.f9 (io.didomi.sdk.f9)
.class public final Lio/didomi/sdk/f9;
.super Lio/didomi/sdk/g9;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0010\u0010\u0014J\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\r\u0010\u001a\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lio/didomi/sdk/f9;",
        "Lio/didomi/sdk/g9;",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Lio/didomi/sdk/n2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/z8;Lio/didomi/sdk/n2;)V",
        "Lio/didomi/sdk/U8$c;",
        "vendor",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$a;",
        "toggleCallback",
        "Lkotlin/Function0;",
        "Lio/didomi/sdk/U8$c$b;",
        "detailedInfoCallback",
        "",
        "a",
        "(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/view/mobile/DidomiToggle$a;Lkotlin/jvm/functions/Function0;)V",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "data",
        "Lio/didomi/sdk/Y8$a;",
        "callback",
        "(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/Y8$a;)V",
        "b",
        "d",
        "()V",
        "c",
        "Lio/didomi/sdk/n2;",
        "",
        "()Z",
        "isBelowBulkAction",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final c:Lio/didomi/sdk/n2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/z8;Lio/didomi/sdk/n2;)V
    .registers 4

    const-string v0, "themeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/g9;-><init>(Lio/didomi/sdk/z8;Landroidx/viewbinding/ViewBinding;)V

    iput-object p2, p0, Lio/didomi/sdk/f9;->c:Lio/didomi/sdk/n2;

    return-void
.end method

.method private static final a(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V
    .registers 3

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$c;->j()Lio/didomi/sdk/models/InternalVendor;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/didomi/sdk/Y8$a;->b(Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/f9;Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$callback"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/f9;->c()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, p2}, Lio/didomi/sdk/Y8$a$a;->a(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/view/mobile/DidomiToggle$b;ILjava/lang/Object;)V

    goto :goto_28

    :cond_1b
    invoke-virtual {p2}, Lio/didomi/sdk/U8$c;->g()Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-virtual {p2}, Lio/didomi/sdk/U8$c;->j()Lio/didomi/sdk/models/InternalVendor;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/didomi/sdk/Y8$a;->b(Lio/didomi/sdk/models/InternalVendor;)V

    :cond_28
    :goto_28
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

.method private final c()Z
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double v2, v2, v4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public static synthetic e(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/f9;->a(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/f9;->a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method

.method public static synthetic g(Lio/didomi/sdk/f9;Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/f9;->a(Lio/didomi/sdk/f9;Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/Y8$a;)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$c;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/didomi/sdk/xd;

    invoke-direct {v1, p2, p1}, Lio/didomi/sdk/xd;-><init>(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2d

    :cond_21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :goto_2d
    return-void
.end method

.method public final a(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/view/mobile/DidomiToggle$a;Lkotlin/jvm/b/a;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/U8$c;",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$a;",
            "Lkotlin/jvm/b/a<",
            "Lio/didomi/sdk/U8$c$b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "vendor"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "toggleCallback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "detailedInfoCallback"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Lio/didomi/sdk/g9;->a(Lio/didomi/sdk/U8;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->h()Lio/didomi/sdk/U8$c$b;

    move-result-object v3

    if-nez v3, :cond_29

    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/U8$c$b;

    invoke-virtual {v1, v3}, Lio/didomi/sdk/U8$c;->a(Lio/didomi/sdk/U8$c$b;)V

    :cond_29
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->g()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_41

    iget-object v4, v0, Lio/didomi/sdk/f9;->c:Lio/didomi/sdk/n2;

    iget-object v4, v4, Lio/didomi/sdk/n2;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/g9;->b()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/z8;->j()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_4d

    :cond_41
    iget-object v4, v0, Lio/didomi/sdk/f9;->c:Lio/didomi/sdk/n2;

    iget-object v4, v4, Lio/didomi/sdk/n2;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v6, "binding.imageVendorItem"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_4d
    iget-object v4, v0, Lio/didomi/sdk/f9;->c:Lio/didomi/sdk/n2;

    iget-object v4, v4, Lio/didomi/sdk/n2;->c:Landroid/widget/TextView;

    const-string v6, "bind$lambda$1"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/g9;->b()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/e4;->c()Lio/didomi/sdk/w8;

    move-result-object v6

    invoke-static {v4, v6}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {v3}, Lio/didomi/sdk/U8$c$b;->d()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lio/didomi/sdk/f9;->c:Lio/didomi/sdk/n2;

    iget-object v4, v4, Lio/didomi/sdk/n2;->d:Lio/didomi/sdk/view/mobile/DidomiToggle;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setAnimate(Z)V

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    invoke-virtual {v3}, Lio/didomi/sdk/U8$c$b;->c()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v6

    const-string v7, "bind$lambda$3"

    if-nez v6, :cond_89

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v18, v14

    goto :goto_f7

    :cond_89
    invoke-virtual {v3}, Lio/didomi/sdk/U8$c$b;->b()Z

    move-result v5

    invoke-virtual {v4, v5}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setHasMiddleState(Z)V

    invoke-virtual {v3}, Lio/didomi/sdk/U8$c$b;->c()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type io.didomi.sdk.view.mobile.DidomiToggle.State"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setState(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/didomi/sdk/U8$c$b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->e()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lio/didomi/sdk/view/mobile/DidomiToggle;->getState()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lio/didomi/sdk/view/mobile/DidomiToggle;->getState()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/16 v16, 0xb8

    const/16 v17, 0x0

    move-object v6, v4

    move-object/from16 v18, v14

    move-object v14, v5

    const/4 v5, 0x0

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v6 .. v16}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v2}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    new-instance v2, Lio/didomi/sdk/yd;

    invoke-direct {v2, v4}, Lio/didomi/sdk/yd;-><init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_f7
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Lio/didomi/sdk/U8$c$b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->i()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/U8$c;->g()Z

    move-result v1

    if-eqz v1, :cond_10f

    sget-object v14, Lio/didomi/sdk/b;->b:Lio/didomi/sdk/b;

    move-object v13, v14

    goto :goto_111

    :cond_10f
    move-object/from16 v13, v18

    :goto_111
    const-string v1, "itemView"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x34

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 5

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/U8$c;->h()Lio/didomi/sdk/U8$c$b;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lio/didomi/sdk/U8$c$b;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p1}, Lio/didomi/sdk/U8$c;->f()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/Y8$a;)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/didomi/sdk/zd;

    invoke-direct {v1, p0, p2, p1}, Lio/didomi/sdk/zd;-><init>(Lio/didomi/sdk/f9;Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/f9;->c:Lio/didomi/sdk/n2;

    iget-object v0, v0, Lio/didomi/sdk/n2;->d:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-direct {p0}, Lio/didomi/sdk/f9;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

###### Class io.didomi.drawable.xd (io.didomi.sdk.xd)
.class public final synthetic Lio/didomi/sdk/xd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Y8$a;

.field public final synthetic b:Lio/didomi/sdk/U8$c;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/xd;->a:Lio/didomi/sdk/Y8$a;

    iput-object p2, p0, Lio/didomi/sdk/xd;->b:Lio/didomi/sdk/U8$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/xd;->a:Lio/didomi/sdk/Y8$a;

    iget-object v1, p0, Lio/didomi/sdk/xd;->b:Lio/didomi/sdk/U8$c;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/f9;->e(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.yd (io.didomi.sdk.yd)
.class public final synthetic Lio/didomi/sdk/yd;
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

    iput-object p1, p0, Lio/didomi/sdk/yd;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/yd;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-static {v0}, Lio/didomi/sdk/f9;->f(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method

###### Class io.didomi.drawable.zd (io.didomi.sdk.zd)
.class public final synthetic Lio/didomi/sdk/zd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/f9;

.field public final synthetic b:Lio/didomi/sdk/Y8$a;

.field public final synthetic c:Lio/didomi/sdk/U8$c;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/f9;Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/zd;->a:Lio/didomi/sdk/f9;

    iput-object p2, p0, Lio/didomi/sdk/zd;->b:Lio/didomi/sdk/Y8$a;

    iput-object p3, p0, Lio/didomi/sdk/zd;->c:Lio/didomi/sdk/U8$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/zd;->a:Lio/didomi/sdk/f9;

    iget-object v1, p0, Lio/didomi/sdk/zd;->b:Lio/didomi/sdk/Y8$a;

    iget-object v2, p0, Lio/didomi/sdk/zd;->c:Lio/didomi/sdk/U8$c;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/f9;->g(Lio/didomi/sdk/f9;Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V

    return-void
.end method
