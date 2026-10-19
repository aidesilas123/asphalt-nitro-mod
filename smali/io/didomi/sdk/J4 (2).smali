###### Class io.didomi.drawable.J4 (io.didomi.sdk.J4)
.class public final Lio/didomi/sdk/J4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/J4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\rB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\'\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0019R\u0014\u0010\u0008\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lio/didomi/sdk/J4;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroid/content/Context;",
        "context",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "",
        "dividerForCategoryHeader",
        "topDividerForSdkStorageDisclosure",
        "<init>",
        "(Landroid/content/Context;Lio/didomi/sdk/z8;ZZ)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "a",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z",
        "b",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "onDrawOver",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Z",
        "Landroid/graphics/drawable/ColorDrawable;",
        "c",
        "Landroid/graphics/drawable/ColorDrawable;",
        "divider",
        "",
        "d",
        "I",
        "paddingHorizontal",
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
.field public static final e:Lio/didomi/sdk/J4$a;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Landroid/graphics/drawable/ColorDrawable;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/J4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/J4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/J4;->e:Lio/didomi/sdk/J4$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/didomi/sdk/z8;ZZ)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-boolean p3, p0, Lio/didomi/sdk/J4;->a:Z

    iput-boolean p4, p0, Lio/didomi/sdk/J4;->b:Z

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->t()Z

    move-result p2

    if-eqz p2, :cond_1c

    sget p2, Lio/didomi/sdk/R$color;->didomi_dark_divider:I

    goto :goto_1e

    :cond_1c
    sget p2, Lio/didomi/sdk/R$color;->didomi_light_divider:I

    :goto_1e
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p3, p0, Lio/didomi/sdk/J4;->c:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/didomi/sdk/R$dimen;->didomi_list_item_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lio/didomi/sdk/J4;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/didomi/sdk/z8;ZZILkotlin/jvm/internal/n;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    const/4 p3, 0x0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    const/4 p4, 0x0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lio/didomi/sdk/J4;-><init>(Landroid/content/Context;Lio/didomi/sdk/z8;ZZ)V

    return-void
.end method

.method private final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    instance-of v0, p1, Lio/didomi/sdk/K4;

    if-nez v0, :cond_27

    instance-of v0, p1, Lio/didomi/sdk/o4;

    if-nez v0, :cond_27

    instance-of v0, p1, Lio/didomi/sdk/s4;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lio/didomi/sdk/J4;->a:Z

    if-nez v0, :cond_27

    :cond_10
    instance-of v0, p1, Lio/didomi/sdk/O5;

    if-nez v0, :cond_27

    instance-of v0, p1, Lio/didomi/sdk/N5;

    if-nez v0, :cond_27

    instance-of v0, p1, Lio/didomi/sdk/K5;

    if-nez v0, :cond_27

    instance-of v0, p1, Lio/didomi/sdk/J5;

    if-nez v0, :cond_27

    instance-of p1, p1, Lio/didomi/sdk/M4;

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method private final b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    instance-of v0, p1, Lio/didomi/sdk/K5;

    if-nez v0, :cond_f

    instance-of p1, p1, Lio/didomi/sdk/M4;

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lio/didomi/sdk/J4;->b:Z

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p3

    iget v0, p0, Lio/didomi/sdk/J4;->d:I

    add-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lio/didomi/sdk/J4;->d:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_78

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "parent.getChildAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    const-string v5, "viewHolder"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lio/didomi/sdk/J4;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, 0x1

    iget-object v7, p0, Lio/didomi/sdk/J4;->c:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, p3, v6, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lio/didomi/sdk/J4;->c:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5f
    invoke-direct {p0, v4}, Lio/didomi/sdk/J4;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lio/didomi/sdk/J4;->c:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lio/didomi/sdk/J4;->c:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_78
    return-void
.end method

###### Class io.didomi.drawable.J4.Companion (io.didomi.sdk.J4$a)
.class public final Lio/didomi/sdk/J4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/J4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/J4$a;",
        "",
        "<init>",
        "()V",
        "",
        "HEIGHT",
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

    invoke-direct {p0}, Lio/didomi/sdk/J4$a;-><init>()V

    return-void
.end method
