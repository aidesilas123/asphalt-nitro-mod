###### Class io.didomi.sdk.a9.d (io.didomi.sdk.a9$d)
.class public final Lio/didomi/sdk/a9$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/Y8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/a9;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u0003\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\rJ\u001f\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "io/didomi/sdk/a9$d",
        "Lio/didomi/sdk/Y8$a;",
        "",
        "a",
        "()V",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "b",
        "(Lio/didomi/sdk/models/InternalVendor;)V",
        "Lio/didomi/sdk/U8$c$b;",
        "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;",
        "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/a9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/a9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v0}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/h9;->v(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 4

    sget-object v0, Lio/didomi/sdk/I8;->e:Lio/didomi/sdk/I8$a;

    iget-object v1, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/I8$a;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 5

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v0}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/h9;->c(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p2, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {p2}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/h9;->c0()V

    iget-object p2, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-static {p2}, Lio/didomi/sdk/a9;->a(Lio/didomi/sdk/a9;)Lio/didomi/sdk/o1;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2e

    iget-object p2, p2, Lio/didomi/sdk/o1;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    goto :goto_2f

    :cond_2e
    move-object p2, v0

    :goto_2f
    instance-of v1, p2, Lio/didomi/sdk/Y8;

    if-eqz v1, :cond_36

    move-object v0, p2

    check-cast v0, Lio/didomi/sdk/Y8;

    :cond_36
    if-eqz v0, :cond_4f

    iget-object p2, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {p2}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/didomi/sdk/h9;->u(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c;

    move-result-object p1

    iget-object p2, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {p2}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/h9;->W()Lio/didomi/sdk/U8$a;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/Y8;->a(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/U8$a;)V

    :cond_4f
    return-void
.end method

.method public a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    if-nez p1, :cond_22

    iget-object p1, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {p1}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->b()Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_22

    :cond_11
    iget-object p1, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {p1}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->a()Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_22

    :cond_20
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :cond_22
    :goto_22
    iget-object v0, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v0}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/h9;->d(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object v0, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v0}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p1, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-static {p1}, Lio/didomi/sdk/a9;->a(Lio/didomi/sdk/a9;)Lio/didomi/sdk/o1;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    iget-object p1, p1, Lio/didomi/sdk/o1;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_47

    :cond_46
    move-object p1, v0

    :goto_47
    instance-of v1, p1, Lio/didomi/sdk/Y8;

    if-eqz v1, :cond_4e

    move-object v0, p1

    check-cast v0, Lio/didomi/sdk/Y8;

    :cond_4e
    if-eqz v0, :cond_5d

    iget-object p1, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {p1}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/h9;->X()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/Y8;->a(Ljava/util/List;)V

    :cond_5d
    return-void
.end method

.method public b(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 4

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v0}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/h9;->D(Lio/didomi/sdk/models/InternalVendor;)V

    iget-object v0, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v0}, Lio/didomi/sdk/a9;->b()Lio/didomi/sdk/h9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/h9;->B(Lio/didomi/sdk/models/InternalVendor;)V

    sget-object p1, Lio/didomi/sdk/R8;->j:Lio/didomi/sdk/R8$a;

    iget-object v0, p0, Lio/didomi/sdk/a9$d;->a:Lio/didomi/sdk/a9;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/didomi/sdk/R8$a;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
