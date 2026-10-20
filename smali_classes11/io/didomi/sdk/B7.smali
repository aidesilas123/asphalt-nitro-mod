###### Class io.didomi.drawable.C1724b7 (io.didomi.sdk.b7)
.class public final Lio/didomi/sdk/b7;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/b7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/didomi/sdk/i7;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lio/didomi/sdk/b7;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lio/didomi/sdk/i7;",
        "Lio/didomi/sdk/b7$a;",
        "callback",
        "",
        "Lio/didomi/sdk/x6;",
        "list",
        "<init>",
        "(Lio/didomi/sdk/b7$a;Ljava/util/List;)V",
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
        "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/i7;",
        "holder",
        "",
        "onBindViewHolder",
        "(Lio/didomi/sdk/i7;I)V",
        "a",
        "Lio/didomi/sdk/b7$a;",
        "b",
        "Ljava/util/List;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/b7$a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/x6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/b7$a;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/b7$a;",
            "Ljava/util/List<",
            "+",
            "Lio/didomi/sdk/x6;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/b7;->a:Lio/didomi/sdk/b7$a;

    iput-object p2, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/x6;

    invoke-virtual {p1}, Lio/didomi/sdk/x6;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/x6;

    invoke-virtual {p1}, Lio/didomi/sdk/x6;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lio/didomi/sdk/i7;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/b7;->onBindViewHolder(Lio/didomi/sdk/i7;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/didomi/sdk/i7;I)V
    .registers 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lio/didomi/sdk/c7;

    if-eqz v0, :cond_1c

    check-cast p1, Lio/didomi/sdk/c7;

    iget-object v0, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.AdditionalDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/x6$a;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/c7;->a(Lio/didomi/sdk/x6$a;)V

    goto :goto_62

    :cond_1c
    instance-of v0, p1, Lio/didomi/sdk/g7;

    if-eqz v0, :cond_33

    check-cast p1, Lio/didomi/sdk/g7;

    iget-object v0, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.Title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/x6$e;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/g7;->a(Lio/didomi/sdk/x6$e;)V

    goto :goto_62

    :cond_33
    instance-of v0, p1, Lio/didomi/sdk/f7;

    if-eqz v0, :cond_4a

    check-cast p1, Lio/didomi/sdk/f7;

    iget-object v0, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.Subtitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/didomi/sdk/x6$d;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/f7;->a(Lio/didomi/sdk/x6$d;)V

    goto :goto_62

    :cond_4a
    instance-of v0, p1, Lio/didomi/sdk/h7;

    if-eqz v0, :cond_62

    check-cast p1, Lio/didomi/sdk/h7;

    iget-object v0, p0, Lio/didomi/sdk/b7;->a:Lio/didomi/sdk/b7$a;

    iget-object v1, p0, Lio/didomi/sdk/b7;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.VendorsCount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/didomi/sdk/x6$f;

    invoke-virtual {p1, v0, p2, v1}, Lio/didomi/sdk/h7;->a(Lio/didomi/sdk/b7$a;ILio/didomi/sdk/x6$f;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/b7;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/didomi/sdk/i7;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/didomi/sdk/i7;
    .registers 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq p2, v2, :cond_9b

    if-eqz p2, :cond_86

    const/4 v2, 0x1

    if-eq p2, v2, :cond_71

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5c

    const/4 v2, 0x3

    if-eq p2, v2, :cond_47

    const/4 v2, 0x4

    if-ne p2, v2, :cond_30

    new-instance p2, Lio/didomi/sdk/h7;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lio/didomi/sdk/H1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/H1;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lio/didomi/sdk/h7;-><init>(Lio/didomi/sdk/H1;)V

    goto/16 :goto_af

    :cond_30
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown viewType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    new-instance p2, Lio/didomi/sdk/c7;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lio/didomi/sdk/D1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/D1;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lio/didomi/sdk/c7;-><init>(Lio/didomi/sdk/D1;)V

    goto :goto_af

    :cond_5c
    new-instance p2, Lio/didomi/sdk/f7;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lio/didomi/sdk/F1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/F1;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lio/didomi/sdk/f7;-><init>(Lio/didomi/sdk/F1;)V

    goto :goto_af

    :cond_71
    new-instance p2, Lio/didomi/sdk/g7;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lio/didomi/sdk/G1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/G1;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lio/didomi/sdk/g7;-><init>(Lio/didomi/sdk/G1;)V

    goto :goto_af

    :cond_86
    new-instance p2, Lio/didomi/sdk/e7;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lio/didomi/sdk/E1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/E1;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lio/didomi/sdk/e7;-><init>(Lio/didomi/sdk/E1;)V

    goto :goto_af

    :cond_9b
    new-instance p2, Lio/didomi/sdk/d7;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lio/didomi/sdk/C1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/C1;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lio/didomi/sdk/d7;-><init>(Lio/didomi/sdk/C1;)V

    :goto_af
    return-object p2
.end method
