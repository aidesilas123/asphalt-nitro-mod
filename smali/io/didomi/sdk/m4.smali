###### Class io.didomi.drawable.C1831m4 (io.didomi.sdk.m4)
.class public final Lio/didomi/sdk/m4;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/m4$a;,
        Lio/didomi/sdk/m4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/didomi/sdk/U4;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB%\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ-\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00112\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u0003H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u001f\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\"\u0010$J\u001b\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040%\u00a2\u0006\u0004\u0008\u000f\u0010&J/\u0010,\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000c2\u0008\u0008\u0002\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000c2\u0008\u0008\u0002\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008\u000f\u0010-R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010.R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010/R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u001b\u00104\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u0008\u000f\u0010\u0013\u00a8\u00065"
    }
    d2 = {
        "Lio/didomi/sdk/m4;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lio/didomi/sdk/U4;",
        "",
        "Lio/didomi/sdk/w4;",
        "list",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Lio/didomi/sdk/m4$a;",
        "callback",
        "<init>",
        "(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/m4$a;)V",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "",
        "getItemCount",
        "()I",
        "position",
        "",
        "getItemId",
        "(I)J",
        "getItemViewType",
        "(I)I",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/U4;",
        "holder",
        "",
        "payloads",
        "onBindViewHolder",
        "(Lio/didomi/sdk/U4;ILjava/util/List;)V",
        "(Lio/didomi/sdk/U4;I)V",
        "",
        "(Ljava/util/List;)V",
        "",
        "purposeId",
        "bulkActionState",
        "",
        "accessibilityAnnounceState",
        "b",
        "(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V",
        "Ljava/util/List;",
        "Lio/didomi/sdk/z8;",
        "c",
        "Lio/didomi/sdk/m4$a;",
        "d",
        "Lkotlin/Lazy;",
        "indentPurposePosition",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/w4;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/didomi/sdk/z8;

.field private final c:Lio/didomi/sdk/m4$a;

.field private final d:Lkotlin/i;


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/m4$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/w4;",
            ">;",
            "Lio/didomi/sdk/z8;",
            "Lio/didomi/sdk/m4$a;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    iput-object p2, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    iput-object p3, p0, Lio/didomi/sdk/m4;->c:Lio/didomi/sdk/m4$a;

    new-instance p1, Lio/didomi/sdk/m4$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/m4$c;-><init>(Lio/didomi/sdk/m4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/m4;->d:Lkotlin/i;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private final a()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/m4;->d:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic a(Lio/didomi/sdk/m4;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/U4;Lio/didomi/sdk/A4;Lio/didomi/sdk/m4;Landroid/view/View;)V
    .registers 4

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$displayFooter"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    instance-of p0, p1, Lio/didomi/sdk/B4;

    if-eqz p0, :cond_1f

    iget-object p0, p2, Lio/didomi/sdk/m4;->c:Lio/didomi/sdk/m4$a;

    invoke-interface {p0}, Lio/didomi/sdk/m4$a;->b()V

    goto :goto_28

    :cond_1f
    instance-of p0, p1, Lio/didomi/sdk/C4;

    if-eqz p0, :cond_28

    iget-object p0, p2, Lio/didomi/sdk/m4;->c:Lio/didomi/sdk/m4$a;

    invoke-interface {p0}, Lio/didomi/sdk/m4$a;->c()V

    :cond_28
    :goto_28
    return-void
.end method

.method public static synthetic a(Lio/didomi/sdk/m4;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;ZILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/m4;->a(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    return-void
.end method

.method private final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/didomi/sdk/y4;

    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    invoke-static {v1}, Lkotlin/collections/p;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/y4;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/y4;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public static synthetic b(Lio/didomi/sdk/m4;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;ZILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/m4;->b(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/U4;Lio/didomi/sdk/A4;Lio/didomi/sdk/m4;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/m4;->a(Lio/didomi/sdk/U4;Lio/didomi/sdk/A4;Lio/didomi/sdk/m4;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V
    .registers 10

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkActionState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/didomi/sdk/E4;

    if-eqz v3, :cond_1a

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/E4;

    invoke-virtual {v2}, Lio/didomi/sdk/E4;->a()Lio/didomi/sdk/w4$a;

    move-result-object v3

    sget-object v4, Lio/didomi/sdk/w4$a;->c:Lio/didomi/sdk/w4$a;

    if-ne v3, v4, :cond_30

    invoke-virtual {v2}, Lio/didomi/sdk/E4;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    check-cast v1, Lio/didomi/sdk/E4;

    if-eqz v1, :cond_64

    iget-object p1, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p2}, Lio/didomi/sdk/E4;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {v1, p4}, Lio/didomi/sdk/E4;->a(Z)V

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_64
    invoke-direct {p0, p3}, Lio/didomi/sdk/m4;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/didomi/sdk/w4;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lio/didomi/sdk/G4;

    const-string v1, "list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/p;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-static {v1, v0}, Lkotlin/collections/p;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/G4;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_20

    :cond_34
    return-void
.end method

.method public final b(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V
    .registers 10

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkActionState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/didomi/sdk/E4;

    if-eqz v3, :cond_1a

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/E4;

    invoke-virtual {v2}, Lio/didomi/sdk/E4;->a()Lio/didomi/sdk/w4$a;

    move-result-object v3

    sget-object v4, Lio/didomi/sdk/w4$a;->f:Lio/didomi/sdk/w4$a;

    if-ne v3, v4, :cond_30

    invoke-virtual {v2}, Lio/didomi/sdk/E4;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    check-cast v1, Lio/didomi/sdk/E4;

    if-eqz v1, :cond_64

    iget-object p1, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p2}, Lio/didomi/sdk/E4;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {v1, p4}, Lio/didomi/sdk/E4;->a(Z)V

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_64
    invoke-direct {p0, p3}, Lio/didomi/sdk/m4;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/w4;

    invoke-interface {p1}, Lio/didomi/sdk/w4;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/w4;

    invoke-interface {p1}, Lio/didomi/sdk/w4;->a()Lio/didomi/sdk/w4$a;

    move-result-object p1

    sget-object v0, Lio/didomi/sdk/m4$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2c

    new-instance p1, Lkotlin/k;

    invoke-direct {p1}, Lkotlin/k;-><init>()V

    throw p1

    :pswitch_1d
    const/4 p1, 0x5

    goto :goto_2a

    :pswitch_1f
    const/4 p1, 0x6

    goto :goto_2a

    :pswitch_21
    const/4 p1, 0x0

    goto :goto_2a

    :pswitch_23
    const/4 p1, 0x1

    goto :goto_2a

    :pswitch_25
    const/4 p1, 0x3

    goto :goto_2a

    :pswitch_27
    const/4 p1, 0x2

    goto :goto_2a

    :pswitch_29
    const/4 p1, 0x4

    :goto_2a
    return p1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_25
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lio/didomi/sdk/U4;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/m4;->onBindViewHolder(Lio/didomi/sdk/U4;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4

    check-cast p1, Lio/didomi/sdk/U4;

    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/m4;->onBindViewHolder(Lio/didomi/sdk/U4;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lio/didomi/sdk/U4;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lio/didomi/sdk/I4;

    if-eqz v0, :cond_1d

    check-cast p1, Lio/didomi/sdk/I4;

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/D4;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/I4;->a(Lio/didomi/sdk/D4;)V

    goto/16 :goto_b7

    :cond_1d
    instance-of v0, p1, Lio/didomi/sdk/s4;

    if-eqz v0, :cond_35

    check-cast p1, Lio/didomi/sdk/s4;

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayCategoryHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/z4;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/s4;->a(Lio/didomi/sdk/z4;)V

    goto/16 :goto_b7

    :cond_35
    instance-of v0, p1, Lio/didomi/sdk/o4;

    if-eqz v0, :cond_4c

    check-cast p1, Lio/didomi/sdk/o4;

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayBulkAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/y4;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/o4;->a(Lio/didomi/sdk/y4;)V

    goto :goto_b7

    :cond_4c
    instance-of v0, p1, Lio/didomi/sdk/K4;

    if-eqz v0, :cond_68

    check-cast p1, Lio/didomi/sdk/K4;

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/didomi/sdk/E4;

    invoke-direct {p0}, Lio/didomi/sdk/m4;->a()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lio/didomi/sdk/K4;->a(Lio/didomi/sdk/E4;I)V

    goto :goto_b7

    :cond_68
    instance-of v0, p1, Lio/didomi/sdk/n4;

    if-eqz v0, :cond_7f

    check-cast p1, Lio/didomi/sdk/n4;

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayAdditionalDataProcessing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/x4;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/n4;->a(Lio/didomi/sdk/x4;)V

    goto :goto_b7

    :cond_7f
    instance-of v0, p1, Lio/didomi/sdk/M4;

    if-eqz v0, :cond_96

    check-cast p1, Lio/didomi/sdk/M4;

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplaySdkStorageDisclosure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/F4;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/M4;->a(Lio/didomi/sdk/F4;)V

    goto :goto_b7

    :cond_96
    instance-of v0, p1, Lio/didomi/sdk/H4;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lio/didomi/sdk/m4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayFooter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/A4;

    move-object v0, p1

    check-cast v0, Lio/didomi/sdk/H4;

    invoke-virtual {v0, p2}, Lio/didomi/sdk/H4;->a(Lio/didomi/sdk/A4;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/didomi/sdk/cf;

    invoke-direct {v1, p1, p2, p0}, Lio/didomi/sdk/cf;-><init>(Lio/didomi/sdk/U4;Lio/didomi/sdk/A4;Lio/didomi/sdk/m4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public onBindViewHolder(Lio/didomi/sdk/U4;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/U4;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    :cond_14
    instance-of v0, p1, Lio/didomi/sdk/K4;

    if-eqz v0, :cond_29

    check-cast p1, Lio/didomi/sdk/K4;

    invoke-static {p3}, Lkotlin/collections/p;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayItem"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/E4;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/K4;->a(Lio/didomi/sdk/E4;)V

    return-void

    :cond_29
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/m4;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/didomi/sdk/U4;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/didomi/sdk/U4;
    .registers 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "inflate(inflater, parent, false)"

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_a0

    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown viewType ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2f
    new-instance p2, Lio/didomi/sdk/H4;

    invoke-static {v0, p1, v2}, Lio/didomi/sdk/t1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/t1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    invoke-direct {p2, p1, v0}, Lio/didomi/sdk/H4;-><init>(Lio/didomi/sdk/t1;Lio/didomi/sdk/z8;)V

    goto :goto_9f

    :pswitch_3e
    new-instance p2, Lio/didomi/sdk/M4;

    invoke-static {v0, p1, v2}, Lio/didomi/sdk/w1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/w1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->c:Lio/didomi/sdk/m4$a;

    iget-object v1, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    invoke-direct {p2, p1, v0, v1}, Lio/didomi/sdk/M4;-><init>(Lio/didomi/sdk/w1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V

    goto :goto_9f

    :pswitch_4f
    new-instance p2, Lio/didomi/sdk/n4;

    invoke-static {v0, p1, v2}, Lio/didomi/sdk/q1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/q1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->c:Lio/didomi/sdk/m4$a;

    iget-object v1, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    invoke-direct {p2, p1, v0, v1}, Lio/didomi/sdk/n4;-><init>(Lio/didomi/sdk/q1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V

    goto :goto_9f

    :pswitch_60
    new-instance p2, Lio/didomi/sdk/K4;

    invoke-static {v0, p1, v2}, Lio/didomi/sdk/v1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/v1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->c:Lio/didomi/sdk/m4$a;

    iget-object v1, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    invoke-direct {p2, p1, v0, v1}, Lio/didomi/sdk/K4;-><init>(Lio/didomi/sdk/v1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V

    goto :goto_9f

    :pswitch_71
    new-instance p2, Lio/didomi/sdk/o4;

    invoke-static {v0, p1, v2}, Lio/didomi/sdk/r1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/r1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->c:Lio/didomi/sdk/m4$a;

    iget-object v1, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    invoke-direct {p2, p1, v0, v1}, Lio/didomi/sdk/o4;-><init>(Lio/didomi/sdk/r1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V

    goto :goto_9f

    :pswitch_82
    new-instance p2, Lio/didomi/sdk/s4;

    invoke-static {v0, p1, v2}, Lio/didomi/sdk/s1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/s1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    invoke-direct {p2, p1, v0}, Lio/didomi/sdk/s4;-><init>(Lio/didomi/sdk/s1;Lio/didomi/sdk/z8;)V

    goto :goto_9f

    :pswitch_91
    new-instance p2, Lio/didomi/sdk/I4;

    invoke-static {v0, p1, v2}, Lio/didomi/sdk/u1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/u1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/m4;->b:Lio/didomi/sdk/z8;

    invoke-direct {p2, p1, v0}, Lio/didomi/sdk/I4;-><init>(Lio/didomi/sdk/u1;Lio/didomi/sdk/z8;)V

    :goto_9f
    return-object p2

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_91
        :pswitch_82
        :pswitch_71
        :pswitch_60
        :pswitch_4f
        :pswitch_3e
        :pswitch_2f
    .end packed-switch
.end method

###### Class io.didomi.drawable.C1831m4.a (io.didomi.sdk.m4$a)
.class public interface abstract Lio/didomi/sdk/m4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/didomi/sdk/m4$a;",
        "",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "Lio/didomi/sdk/w4$a;",
        "type",
        "",
        "id",
        "(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "Lio/didomi/sdk/o0;",
        "dataProcessing",
        "(Lio/didomi/sdk/o0;)V",
        "(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V",
        "b",
        "()V",
        "c",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lio/didomi/sdk/o0;)V
.end method

.method public abstract a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
.end method

.method public abstract a(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V
.end method

.method public abstract a(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

###### Class io.didomi.drawable.C1831m4.b (io.didomi.sdk.m4$b)
.class public final synthetic Lio/didomi/sdk/m4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/sdk/w4$a;->values()[Lio/didomi/sdk/w4$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/w4$a;->a:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/w4$a;->b:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/didomi/sdk/w4$a;->c:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/didomi/sdk/w4$a;->d:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/didomi/sdk/w4$a;->e:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lio/didomi/sdk/w4$a;->f:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lio/didomi/sdk/w4$a;->g:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lio/didomi/sdk/w4$a;->h:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lio/didomi/sdk/w4$a;->i:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    sput-object v0, Lio/didomi/sdk/m4$b;->a:[I

    return-void
.end method

###### Class io.didomi.drawable.C1831m4.c (io.didomi.sdk.m4$c)
.class final Lio/didomi/sdk/m4$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/m4;-><init>(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/m4$a;)V
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
.field final synthetic a:Lio/didomi/sdk/m4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/m4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/m4$c;->a:Lio/didomi/sdk/m4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/m4$c;->a:Lio/didomi/sdk/m4;

    invoke-static {v0}, Lio/didomi/sdk/m4;->a(Lio/didomi/sdk/m4;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/w4;

    instance-of v2, v2, Lio/didomi/sdk/E4;

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    const/4 v1, -0x1

    :goto_20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/m4$c;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.cf (io.didomi.sdk.cf)
.class public final synthetic Lio/didomi/sdk/cf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/U4;

.field public final synthetic b:Lio/didomi/sdk/A4;

.field public final synthetic c:Lio/didomi/sdk/m4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/U4;Lio/didomi/sdk/A4;Lio/didomi/sdk/m4;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/cf;->a:Lio/didomi/sdk/U4;

    iput-object p2, p0, Lio/didomi/sdk/cf;->b:Lio/didomi/sdk/A4;

    iput-object p3, p0, Lio/didomi/sdk/cf;->c:Lio/didomi/sdk/m4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/cf;->a:Lio/didomi/sdk/U4;

    iget-object v1, p0, Lio/didomi/sdk/cf;->b:Lio/didomi/sdk/A4;

    iget-object v2, p0, Lio/didomi/sdk/cf;->c:Lio/didomi/sdk/m4;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/m4;->c(Lio/didomi/sdk/U4;Lio/didomi/sdk/A4;Lio/didomi/sdk/m4;Landroid/view/View;)V

    return-void
.end method
