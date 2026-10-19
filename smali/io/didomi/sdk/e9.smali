###### Class io.didomi.drawable.e9 (io.didomi.sdk.e9)
.class public final Lio/didomi/sdk/e9;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\'\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001b\u0010 \u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u001e\u001a\u0004\u0008\u0019\u0010\u001fR\u001b\u0010$\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001e\u001a\u0004\u0008\"\u0010#R\u001b\u0010(\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001e\u001a\u0004\u0008\u0015\u0010\'R\u0014\u0010+\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u001b\u0010/\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u001e\u001a\u0004\u0008&\u0010.R\u001b\u00103\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\u001e\u001a\u0004\u0008\u001b\u00102R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010\u001e\u001a\u0004\u0008-\u00102R\u001b\u00107\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\u001e\u001a\u0004\u00081\u00102R\u001b\u00109\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u0010\u001e\u001a\u0004\u0008)\u00102\u00a8\u0006:"
    }
    d2 = {
        "Lio/didomi/sdk/e9;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "shouldHandleAllVendorsState",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V",
        "Landroid/graphics/Rect;",
        "outRect",
        "Landroid/view/View;",
        "view",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "getItemOffsets",
        "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/graphics/Canvas;",
        "c",
        "onDraw",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "onDrawOver",
        "a",
        "Z",
        "b",
        "Lio/didomi/sdk/z8;",
        "Landroid/view/accessibility/AccessibilityManager;",
        "Lkotlin/Lazy;",
        "()Landroid/view/accessibility/AccessibilityManager;",
        "accessibilityManager",
        "",
        "d",
        "()I",
        "paddingForLargeScreens",
        "Lio/didomi/sdk/Z8;",
        "e",
        "()Lio/didomi/sdk/Z8;",
        "bulkActionViewHolder",
        "f",
        "I",
        "matchingVendorsViewHolderId",
        "Landroid/graphics/Paint;",
        "g",
        "()Landroid/graphics/Paint;",
        "paint",
        "",
        "h",
        "()F",
        "bulkActionHeight",
        "i",
        "separatorMarginBottom",
        "j",
        "separatorMarginHorizontal",
        "k",
        "separatorHeight",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lio/didomi/sdk/z8;

.field private final c:Lkotlin/i;

.field private final d:Lkotlin/i;

.field private final e:Lkotlin/i;

.field private final f:I

.field private final g:Lkotlin/i;

.field private final h:Lkotlin/i;

.field private final i:Lkotlin/i;

.field private final j:Lkotlin/i;

.field private final k:Lkotlin/i;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
    .registers 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-boolean p2, p0, Lio/didomi/sdk/e9;->a:Z

    iput-object p3, p0, Lio/didomi/sdk/e9;->b:Lio/didomi/sdk/z8;

    new-instance p3, Lio/didomi/sdk/e9$a;

    invoke-direct {p3, p1}, Lio/didomi/sdk/e9$a;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p3}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p3

    iput-object p3, p0, Lio/didomi/sdk/e9;->c:Lkotlin/i;

    new-instance p3, Lio/didomi/sdk/e9$d;

    invoke-direct {p3, p1}, Lio/didomi/sdk/e9$d;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p3}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p3

    iput-object p3, p0, Lio/didomi/sdk/e9;->d:Lkotlin/i;

    new-instance p3, Lio/didomi/sdk/e9$c;

    invoke-direct {p3, p0, p1}, Lio/didomi/sdk/e9$c;-><init>(Lio/didomi/sdk/e9;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p3}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p3

    iput-object p3, p0, Lio/didomi/sdk/e9;->e:Lkotlin/i;

    iput p2, p0, Lio/didomi/sdk/e9;->f:I

    new-instance p2, Lio/didomi/sdk/e9$e;

    invoke-direct {p2, p1, p0}, Lio/didomi/sdk/e9$e;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lio/didomi/sdk/e9;)V

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/e9;->g:Lkotlin/i;

    new-instance p2, Lio/didomi/sdk/e9$b;

    invoke-direct {p2, p1}, Lio/didomi/sdk/e9$b;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/e9;->h:Lkotlin/i;

    new-instance p2, Lio/didomi/sdk/e9$g;

    invoke-direct {p2, p1}, Lio/didomi/sdk/e9$g;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/e9;->i:Lkotlin/i;

    new-instance p2, Lio/didomi/sdk/e9$h;

    invoke-direct {p2, p1}, Lio/didomi/sdk/e9$h;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/e9;->j:Lkotlin/i;

    new-instance p2, Lio/didomi/sdk/e9$f;

    invoke-direct {p2, p1}, Lio/didomi/sdk/e9$f;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e9;->k:Lkotlin/i;

    return-void
.end method

.method private final a()Landroid/view/accessibility/AccessibilityManager;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->c:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public static final synthetic a(Lio/didomi/sdk/e9;)Lio/didomi/sdk/z8;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/e9;->b:Lio/didomi/sdk/z8;

    return-object p0
.end method

.method private final b()F
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->h:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final c()Lio/didomi/sdk/Z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->e:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/Z8;

    return-object v0
.end method

.method private final d()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->d:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final e()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->g:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final f()F
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->k:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final g()F
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->i:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final h()F
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e9;->j:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    iget p3, p0, Lio/didomi/sdk/e9;->f:I

    if-ne p2, p3, :cond_31

    invoke-direct {p0}, Lio/didomi/sdk/e9;->f()F

    move-result p2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->g()F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_31
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 12

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_6b

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_6b

    :goto_1e
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_25

    return-void

    :cond_25
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    iget v3, p0, Lio/didomi/sdk/e9;->f:I

    if-ne v2, v3, :cond_66

    invoke-direct {p0}, Lio/didomi/sdk/e9;->h()F

    move-result p2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->d()I

    move-result p3

    int-to-float p3, p3

    add-float v3, p2, p3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float v4, p2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->h()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->d()I

    move-result p3

    int-to-float p3, p3

    add-float v5, p2, p3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->f()F

    move-result p3

    add-float v6, p2, p3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->e()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_66
    if-eq v0, p3, :cond_6b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_6b
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 11

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-boolean p3, p0, Lio/didomi/sdk/e9;->a:Z

    if-eqz p3, :cond_d3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->a()Landroid/view/accessibility/AccessibilityManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_22

    goto/16 :goto_d3

    :cond_22
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    instance-of v1, v1, Lio/didomi/sdk/c9;

    if-eqz v1, :cond_30

    return-void

    :cond_30
    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/f;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    instance-of v3, v2, Lio/didomi/sdk/f9;

    if-eqz v3, :cond_4f

    check-cast v2, Lio/didomi/sdk/f9;

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lio/didomi/sdk/f9;->d()V

    goto :goto_38

    :cond_56
    invoke-direct {p0}, Lio/didomi/sdk/e9;->c()Lio/didomi/sdk/Z8;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_64

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_64
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lio/didomi/sdk/e9;->d()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->d()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->b()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v1, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-direct {p0}, Lio/didomi/sdk/e9;->d()I

    move-result v1

    invoke-virtual {p2, v1, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lio/didomi/sdk/e9;->h()F

    move-result p2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->d()I

    move-result p3

    int-to-float p3, p3

    add-float v2, p2, p3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->b()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->h()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->d()I

    move-result p3

    int-to-float p3, p3

    add-float v4, p2, p3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->b()F

    move-result p2

    invoke-direct {p0}, Lio/didomi/sdk/e9;->f()F

    move-result p3

    add-float v5, p2, p3

    invoke-direct {p0}, Lio/didomi/sdk/e9;->e()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_d3
    :goto_d3
    return-void
.end method

###### Class io.didomi.drawable.e9.AccessibilityManager (io.didomi.sdk.e9$a)
.class final Lio/didomi/sdk/e9$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Landroid/view/accessibility/AccessibilityManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/view/accessibility/AccessibilityManager;",
        "a",
        "()Landroid/view/accessibility/AccessibilityManager;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e9$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/accessibility/AccessibilityManager;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/e9$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "recyclerView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/a0;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$a;->a()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.e9.b (io.didomi.sdk.e9$b)
.class final Lio/didomi/sdk/e9$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Float;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e9$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/e9$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$dimen;->didomi_vendors_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$b;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.e9.c (io.didomi.sdk.e9$c)
.class final Lio/didomi/sdk/e9$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/Z8;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/Z8;",
        "a",
        "()Lio/didomi/sdk/Z8;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/e9;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lio/didomi/sdk/e9;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/e9$c;->a:Lio/didomi/sdk/e9;

    iput-object p2, p0, Lio/didomi/sdk/e9$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/Z8;
    .registers 6

    new-instance v0, Lio/didomi/sdk/Z8;

    iget-object v1, p0, Lio/didomi/sdk/e9$c;->a:Lio/didomi/sdk/e9;

    invoke-static {v1}, Lio/didomi/sdk/e9;->a(Lio/didomi/sdk/e9;)Lio/didomi/sdk/z8;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/e9$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lio/didomi/sdk/e9$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lio/didomi/sdk/l2;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/l2;

    move-result-object v2

    const-string v3, "inflate(LayoutInflater.f\u2026xt), recyclerView, false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/Z8;-><init>(Lio/didomi/sdk/z8;Lio/didomi/sdk/l2;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$c;->a()Lio/didomi/sdk/Z8;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.e9.d (io.didomi.sdk.e9$d)
.class final Lio/didomi/sdk/e9$d;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Integer;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e9$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/e9$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$dimen;->didomi_content_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lio/didomi/sdk/e9$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v0, :cond_1e

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$d;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.e9.e (io.didomi.sdk.e9$e)
.class final Lio/didomi/sdk/e9$e;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/graphics/Paint;",
        "a",
        "()Landroid/graphics/Paint;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lio/didomi/sdk/e9;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lio/didomi/sdk/e9;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/e9$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lio/didomi/sdk/e9$e;->b:Lio/didomi/sdk/e9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lio/didomi/sdk/e9$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lio/didomi/sdk/e9$e;->b:Lio/didomi/sdk/e9;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2}, Lio/didomi/sdk/e9;->a(Lio/didomi/sdk/e9;)Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->t()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget v2, Lio/didomi/sdk/R$color;->didomi_dark_divider:I

    goto :goto_1c

    :cond_1a
    sget v2, Lio/didomi/sdk/R$color;->didomi_light_divider:I

    :goto_1c
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$e;->a()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.e9.f (io.didomi.sdk.e9$f)
.class final Lio/didomi/sdk/e9$f;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Float;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e9$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/e9$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$dimen;->didomi_vendors_separator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$f;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.e9.g (io.didomi.sdk.e9$g)
.class final Lio/didomi/sdk/e9$g;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Float;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e9$g;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/e9$g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$dimen;->didomi_vendors_separator_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$g;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.e9.h (io.didomi.sdk.e9$h)
.class final Lio/didomi/sdk/e9$h;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Float;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e9$h;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/e9$h;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$dimen;->didomi_vendors_separator_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$h;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
