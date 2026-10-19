###### Class io.didomi.drawable.V4 (io.didomi.sdk.V4)
.class public final Lio/didomi/sdk/V4;
.super Lio/didomi/sdk/I0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/V4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004*\u0001Q\u0018\u0000 \u000e2\u00020\u0001:\u0001\u0007B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ+\u0010!\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J!\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020 2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0003J\u0017\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0003J\u000f\u0010,\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0003R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u00109\u001a\u0002048\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\t\u00105\u001a\u0004\u0008\u0007\u00106\"\u0004\u00087\u00108R\"\u0010@\u001a\u00020:8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008/\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010ER\u0014\u0010I\u001a\u00020G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010HR\u001b\u0010M\u001a\u00020J8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010K\u001a\u0004\u0008\t\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010R\u00a8\u0006T"
    }
    d2 = {
        "Lio/didomi/sdk/V4;",
        "Lio/didomi/sdk/I0;",
        "<init>",
        "()V",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "purpose",
        "",
        "a",
        "(Lio/didomi/sdk/models/InternalPurpose;)V",
        "b",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "category",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "f",
        "j",
        "h",
        "i",
        "e",
        "g",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onCancel",
        "(Landroid/content/DialogInterface;)V",
        "onPause",
        "onDestroyView",
        "Lio/didomi/sdk/a5;",
        "Lio/didomi/sdk/a5;",
        "c",
        "()Lio/didomi/sdk/a5;",
        "setModel",
        "(Lio/didomi/sdk/a5;)V",
        "model",
        "Lio/didomi/sdk/z8;",
        "Lio/didomi/sdk/z8;",
        "()Lio/didomi/sdk/z8;",
        "setThemeProvider",
        "(Lio/didomi/sdk/z8;)V",
        "themeProvider",
        "Lio/didomi/sdk/I3;",
        "Lio/didomi/sdk/I3;",
        "d",
        "()Lio/didomi/sdk/I3;",
        "setNavigationManager",
        "(Lio/didomi/sdk/I3;)V",
        "navigationManager",
        "Lio/didomi/sdk/R0;",
        "Lio/didomi/sdk/R0;",
        "binding",
        "Lio/didomi/sdk/w2;",
        "Lio/didomi/sdk/w2;",
        "bottomBarBinding",
        "Lio/didomi/sdk/d4;",
        "Lio/didomi/sdk/d4;",
        "dismissHelper",
        "",
        "Lkotlin/Lazy;",
        "()Z",
        "allowDismiss",
        "Lio/didomi/sdk/m4$a;",
        "Lio/didomi/sdk/m4$a;",
        "purposeCallback",
        "io/didomi/sdk/V4$g",
        "Lio/didomi/sdk/V4$g;",
        "scrollListener",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final j:Lio/didomi/sdk/V4$a;


# instance fields
.field public a:Lio/didomi/sdk/a5;

.field public b:Lio/didomi/sdk/z8;

.field public c:Lio/didomi/sdk/I3;

.field private d:Lio/didomi/sdk/R0;

.field private e:Lio/didomi/sdk/w2;

.field private final f:Lio/didomi/sdk/d4;

.field private final g:Lkotlin/i;

.field private final h:Lio/didomi/sdk/m4$a;

.field private final i:Lio/didomi/sdk/V4$g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/V4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/V4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/V4;->j:Lio/didomi/sdk/V4$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/I0;-><init>()V

    new-instance v0, Lio/didomi/sdk/d4;

    invoke-direct {v0}, Lio/didomi/sdk/d4;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/V4;->f:Lio/didomi/sdk/d4;

    new-instance v0, Lio/didomi/sdk/V4$b;

    invoke-direct {v0, p0}, Lio/didomi/sdk/V4$b;-><init>(Lio/didomi/sdk/V4;)V

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/V4;->g:Lkotlin/i;

    new-instance v0, Lio/didomi/sdk/V4$f;

    invoke-direct {v0, p0}, Lio/didomi/sdk/V4$f;-><init>(Lio/didomi/sdk/V4;)V

    iput-object v0, p0, Lio/didomi/sdk/V4;->h:Lio/didomi/sdk/m4$a;

    new-instance v0, Lio/didomi/sdk/V4$g;

    invoke-direct {v0, p0}, Lio/didomi/sdk/V4$g;-><init>(Lio/didomi/sdk/V4;)V

    iput-object v0, p0, Lio/didomi/sdk/V4;->i:Lio/didomi/sdk/V4$g;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/V4;)Lio/didomi/sdk/R0;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->h1()V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/V4;Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/V4;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    return-void
.end method

.method private final a(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 11

    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/m4;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/m4;

    :cond_16
    move-object v2, v1

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->l(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/m4;->b(Lio/didomi/sdk/m4;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;ZILjava/lang/Object;)V

    :cond_34
    invoke-direct {p0}, Lio/didomi/sdk/V4;->f()V

    return-void
.end method

.method private final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 11

    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/m4;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/m4;

    :cond_16
    move-object v2, v1

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/m4;->a(Lio/didomi/sdk/m4;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;ZILjava/lang/Object;)V

    :cond_34
    invoke-direct {p0}, Lio/didomi/sdk/V4;->f()V

    return-void
.end method

.method private static final a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/V4;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/V4;->f()V

    return-void
.end method

.method private static final b(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->c1()V

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/V4;Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/V4;->b(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method private final b(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 11

    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    instance-of v2, v0, Lio/didomi/sdk/m4;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/m4;

    :cond_16
    move-object v2, v1

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->l(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/m4;->b(Lio/didomi/sdk/m4;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;ZILjava/lang/Object;)V

    :cond_34
    invoke-direct {p0}, Lio/didomi/sdk/V4;->f()V

    return-void
.end method

.method private static final b(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final b()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V4;->g:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic c(Lio/didomi/sdk/V4;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/V4;->g()V

    return-void
.end method

.method private static final c(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->Y0()V

    return-void
.end method

.method private static final c(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final d(Lio/didomi/sdk/V4;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/V4;->g()V

    return-void
.end method

.method private static final d(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->b1()V

    return-void
.end method

.method private final e()V
    .registers 9

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->B0()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->L()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_31

    :cond_15
    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->w1()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    if-eqz v0, :cond_41

    iget-object v1, v0, Lio/didomi/sdk/R0;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_41

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;JILkotlin/jvm/b/a;ILjava/lang/Object;)V

    goto :goto_41

    :cond_31
    :goto_31
    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lio/didomi/sdk/R0;->h:Landroid/widget/TextView;

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-nez v0, :cond_3c

    goto :goto_41

    :cond_3c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_41
    :goto_41
    return-void
.end method

.method private final f()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/V4;->e()V

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->Z()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lio/didomi/sdk/V4;->i()V

    goto :goto_30

    :cond_11
    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->w1()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lio/didomi/sdk/V4;->j()V

    goto :goto_30

    :cond_1f
    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->X0()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lio/didomi/sdk/V4;->h()V

    goto :goto_30

    :cond_2d
    invoke-direct {p0}, Lio/didomi/sdk/V4;->i()V

    :goto_30
    return-void
.end method

.method private final g()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_18

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_19

    :cond_18
    move-object v2, v4

    :goto_19
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :cond_24
    move-object v2, v4

    :goto_25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_35
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/didomi/sdk/a5;->b(Z)V

    invoke-direct {p0}, Lio/didomi/sdk/V4;->f()V

    :cond_3f
    return-void
.end method

.method private final h()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4;->e:Lio/didomi/sdk/w2;

    if-eqz v0, :cond_18

    iget-object v1, v0, Lio/didomi/sdk/w2;->b:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "buttonPurposeBottomBarAgree"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/didomi/sdk/k9;->b(Landroid/view/View;)V

    iget-object v0, v0, Lio/didomi/sdk/w2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "buttonPurposeBottomBarDisagree"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/k9;->b(Landroid/view/View;)V

    :cond_18
    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    if-eqz v0, :cond_37

    iget-object v1, v0, Lio/didomi/sdk/R0;->d:Lio/didomi/sdk/w2;

    invoke-virtual {v1}, Lio/didomi/sdk/w2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const-string v2, "layoutPurposesAgreeDisagree.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lio/didomi/sdk/R0;->g:Lio/didomi/sdk/purpose/mobile/PurposeSaveView;

    const-string v1, "savePurposes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_37
    return-void
.end method

.method private final i()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    if-eqz v0, :cond_30

    iget-object v1, v0, Lio/didomi/sdk/R0;->d:Lio/didomi/sdk/w2;

    invoke-virtual {v1}, Lio/didomi/sdk/w2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const-string v2, "layoutPurposesAgreeDisagree.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lio/didomi/sdk/R0;->g:Lio/didomi/sdk/purpose/mobile/PurposeSaveView;

    const-string v1, "updateButtonsToSave$lambda$30$lambda$29"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/a5;->Q0()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->b()V

    goto :goto_30

    :cond_2d
    invoke-virtual {v0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->a()V

    :cond_30
    :goto_30
    return-void
.end method

.method private final j()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4;->e:Lio/didomi/sdk/w2;

    if-eqz v0, :cond_18

    iget-object v1, v0, Lio/didomi/sdk/w2;->b:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "buttonPurposeBottomBarAgree"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/didomi/sdk/k9;->a(Landroid/view/View;)V

    iget-object v0, v0, Lio/didomi/sdk/w2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "buttonPurposeBottomBarDisagree"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/k9;->a(Landroid/view/View;)V

    :cond_18
    iget-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    if-eqz v0, :cond_37

    iget-object v1, v0, Lio/didomi/sdk/R0;->d:Lio/didomi/sdk/w2;

    invoke-virtual {v1}, Lio/didomi/sdk/w2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const-string v2, "layoutPurposesAgreeDisagree.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lio/didomi/sdk/R0;->g:Lio/didomi/sdk/purpose/mobile/PurposeSaveView;

    const-string v1, "savePurposes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_37
    return-void
.end method

.method public static synthetic k(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/V4;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/V4;->b(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/V4;->c(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/V4;->c(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/V4;->d(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lio/didomi/sdk/V4;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/V4;->d(Lio/didomi/sdk/V4;)V

    return-void
.end method

.method public static synthetic q(Lio/didomi/sdk/V4;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/V4;->b(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lio/didomi/sdk/z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V4;->b:Lio/didomi/sdk/z8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "themeProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/a5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V4;->a:Lio/didomi/sdk/a5;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lio/didomi/sdk/I3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V4;->c:Lio/didomi/sdk/I3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "navigationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/F0;->a(Landroidx/fragment/app/DialogFragment;)Lio/didomi/sdk/J0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/V4;)V

    :cond_e
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->i1()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->A0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const-string v0, "super.onCreateDialog(sav\u2026shouldBeCancelable)\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/R0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/R0;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    invoke-virtual {p1}, Lio/didomi/sdk/R0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/w2;->a(Landroid/view/View;)Lio/didomi/sdk/w2;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/V4;->e:Lio/didomi/sdk/w2;

    const-string p2, "inflate(inflater, contai\u2026ng.bind(it)\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->w0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->y0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->t0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->f0()Lio/didomi/sdk/C3;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/C3;->a(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/sdk/V4;->e:Lio/didomi/sdk/w2;

    iget-object v1, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    if-eqz v1, :cond_4b

    iget-object v1, v1, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4b

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lio/didomi/sdk/V4;->i:Lio/didomi/sdk/V4$g;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_4b
    iput-object v0, p0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V4;->f:Lio/didomi/sdk/d4;

    invoke-virtual {v0}, Lio/didomi/sdk/d4;->a()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lio/didomi/sdk/V4;->f:Lio/didomi/sdk/d4;

    invoke-virtual {p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/a5;->G0()Lio/didomi/sdk/D8;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/didomi/sdk/d4;->a(Landroidx/fragment/app/DialogFragment;Lio/didomi/sdk/D8;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lio/didomi/sdk/I0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/a5;->x1()V

    invoke-virtual {v2}, Lio/didomi/sdk/a5;->g1()V

    invoke-virtual {v2}, Lio/didomi/sdk/a5;->V0()V

    invoke-virtual {v2}, Lio/didomi/sdk/a5;->P0()Ljava/util/List;

    iget-object v2, v0, Lio/didomi/sdk/V4;->d:Lio/didomi/sdk/R0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1f8

    iget-object v15, v2, Lio/didomi/sdk/R0;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/V4;->b()Z

    move-result v6

    const-string v7, "onViewCreated$lambda$15$lambda$5"

    if-eqz v6, :cond_66

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/a5;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/a5;->s()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    move-object v6, v15

    move-object v3, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v6 .. v16}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/z8;->j()I

    move-result v6

    invoke-static {v3, v6}, Lio/didomi/sdk/l3;->a(Landroid/widget/ImageView;I)V

    new-instance v6, Lio/didomi/sdk/dd;

    invoke-direct {v6, v0}, Lio/didomi/sdk/dd;-><init>(Lio/didomi/sdk/V4;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6f

    :cond_66
    move-object v3, v15

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_6f
    iget-object v3, v2, Lio/didomi/sdk/R0;->c:Lio/didomi/sdk/view/mobile/HeaderView;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/a5;->f0()Lio/didomi/sdk/C3;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v7

    const-string v8, "viewLifecycleOwner"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v8

    invoke-virtual {v8}, Lio/didomi/sdk/a5;->E0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v9

    invoke-virtual {v9}, Lio/didomi/sdk/a5;->u()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/V4;->b()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-virtual {v3}, Lio/didomi/sdk/view/mobile/HeaderView;->a()V

    :cond_9e
    iget-object v3, v2, Lio/didomi/sdk/R0;->i:Landroid/view/View;

    const-string v6, "binding.viewPurposesBottomDivider"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-static {v3, v6}, Lio/didomi/sdk/k9;->a(Landroid/view/View;Lio/didomi/sdk/z8;)V

    iget-object v3, v2, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/a5;->e()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lio/didomi/sdk/m4;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v8

    iget-object v9, v0, Lio/didomi/sdk/V4;->h:Lio/didomi/sdk/m4$a;

    invoke-direct {v7, v6, v8, v9}, Lio/didomi/sdk/m4;-><init>(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/m4$a;)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v7, Lio/didomi/sdk/J4;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v8, "context"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v8

    invoke-virtual {v8}, Lio/didomi/sdk/a5;->v1()Z

    move-result v13

    const/4 v12, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v15}, Lio/didomi/sdk/J4;-><init>(Landroid/content/Context;Lio/didomi/sdk/z8;ZZILkotlin/jvm/internal/n;)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v7, v0, Lio/didomi/sdk/V4;->i:Lio/didomi/sdk/V4$g;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/didomi/sdk/R$dimen;->didomi_content_max_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v8, v7, :cond_11c

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lio/didomi/sdk/R$dimen;->didomi_purpose_list_padding_bottom:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3, v8, v5, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_11c
    const-string v7, "onViewCreated$lambda$15$lambda$7"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v7, Lio/didomi/sdk/E4;

    invoke-static {v6, v7}, Lio/didomi/sdk/y3;->a(Ljava/util/List;Ljava/lang/Class;)I

    move-result v6

    invoke-static {v3, v6}, Lio/didomi/sdk/i5;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v6, v2, Lio/didomi/sdk/R0;->c:Lio/didomi/sdk/view/mobile/HeaderView;

    const-string v7, "binding.headerPurposes"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lio/didomi/sdk/i5;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    iget-object v3, v2, Lio/didomi/sdk/R0;->g:Lio/didomi/sdk/purpose/mobile/PurposeSaveView;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/a5;->p0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->setDescriptionText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getSaveButton$android_release()Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_17e

    invoke-virtual {v3}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getThemeProvider()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/e4;->j()Lio/didomi/sdk/w8;

    move-result-object v6

    invoke-static {v7, v6}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    new-instance v6, Lio/didomi/sdk/id;

    invoke-direct {v6, v0}, Lio/didomi/sdk/id;-><init>(Lio/didomi/sdk/V4;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/a5;->o0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/a5;->x()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    :cond_17e
    invoke-virtual {v3}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getLogoImage$android_release()Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_185

    goto :goto_195

    :cond_185
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/didomi/sdk/a5;->c(Z)Z

    move-result v6

    if-eqz v6, :cond_191

    const/4 v6, 0x4

    goto :goto_192

    :cond_191
    const/4 v6, 0x0

    :goto_192
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_195
    iget-object v2, v2, Lio/didomi/sdk/R0;->h:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/z8;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/a5;->r0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/a5;->w0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v6, Lio/didomi/sdk/V4$c;

    invoke-direct {v6, v0}, Lio/didomi/sdk/V4$c;-><init>(Lio/didomi/sdk/V4;)V

    new-instance v7, Lio/didomi/sdk/cd;

    invoke-direct {v7, v6}, Lio/didomi/sdk/cd;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v2, v3, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/a5;->y0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v6, Lio/didomi/sdk/V4$d;

    invoke-direct {v6, v0}, Lio/didomi/sdk/V4$d;-><init>(Lio/didomi/sdk/V4;)V

    new-instance v7, Lio/didomi/sdk/jd;

    invoke-direct {v7, v6}, Lio/didomi/sdk/jd;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v2, v3, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/a5;->t0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v6, Lio/didomi/sdk/V4$e;

    invoke-direct {v6, v0}, Lio/didomi/sdk/V4$e;-><init>(Lio/didomi/sdk/V4;)V

    new-instance v7, Lio/didomi/sdk/ed;

    invoke-direct {v7, v6}, Lio/didomi/sdk/ed;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v2, v3, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1f8
    iget-object v2, v0, Lio/didomi/sdk/V4;->e:Lio/didomi/sdk/w2;

    if-eqz v2, :cond_2a4

    iget-object v3, v2, Lio/didomi/sdk/w2;->e:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/didomi/sdk/a5;->c(Z)Z

    move-result v4

    if-eqz v4, :cond_20a

    const/4 v4, 0x4

    goto :goto_21b

    :cond_20a
    const-string v4, "onViewCreated$lambda$21$lambda$16"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/z8;->g()I

    move-result v4

    invoke-static {v3, v4}, Lio/didomi/sdk/l3;->a(Landroid/widget/ImageView;I)V

    const/4 v4, 0x0

    :goto_21b
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, v2, Lio/didomi/sdk/w2;->b:Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "onViewCreated$lambda$21$lambda$18"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/e4;->j()Lio/didomi/sdk/w8;

    move-result-object v3

    invoke-static {v6, v3}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    new-instance v3, Lio/didomi/sdk/fd;

    invoke-direct {v3, v0}, Lio/didomi/sdk/fd;-><init>(Lio/didomi/sdk/V4;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/a5;->D()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/a5;->q()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    iget-object v2, v2, Lio/didomi/sdk/w2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "onViewCreated$lambda$21$lambda$20"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->a()Lio/didomi/sdk/z8;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/e4;->k()Lio/didomi/sdk/w8;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    new-instance v3, Lio/didomi/sdk/gd;

    invoke-direct {v3, v0}, Lio/didomi/sdk/gd;-><init>(Lio/didomi/sdk/V4;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/a5;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/a5;->R()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v27}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    :cond_2a4
    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/V4;->b()Z

    move-result v2

    if-nez v2, :cond_2ad

    invoke-virtual {v0, v5}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    :cond_2ad
    new-instance v2, Lio/didomi/sdk/hd;

    invoke-direct {v2, v0}, Lio/didomi/sdk/hd;-><init>(Lio/didomi/sdk/V4;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    if-nez p2, :cond_301

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "OPEN_SUBSCREEN"

    if-lt v1, v2, :cond_2ce

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2d9

    const-class v2, Lio/didomi/sdk/Y5;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/Y5;

    goto :goto_2da

    :cond_2ce
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2d9

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2da

    :cond_2d9
    const/4 v1, 0x0

    :goto_2da
    sget-object v2, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    const-string v3, "parentFragmentManager"

    if-ne v1, v2, :cond_2ef

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/I3;->c(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_301

    :cond_2ef
    sget-object v2, Lio/didomi/sdk/Y5;->b:Lio/didomi/sdk/Y5;

    if-ne v1, v2, :cond_301

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/I3;->b(Landroidx/fragment/app/FragmentManager;)V

    :cond_301
    :goto_301
    return-void
.end method

###### Class io.didomi.sdk.V4.a (io.didomi.sdk.V4$a)
.class public final Lio/didomi/sdk/V4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/V4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/didomi/sdk/V4$a;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "Lio/didomi/sdk/Y5;",
        "subScreenType",
        "",
        "a",
        "(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/Y5;)V",
        "",
        "OPEN_SUBSCREEN",
        "Ljava/lang/String;",
        "TAG",
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

    invoke-direct {p0}, Lio/didomi/sdk/V4$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/Y5;)V
    .registers 7

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subScreenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PurposesFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_28

    new-instance v1, Lio/didomi/sdk/V4;

    invoke-direct {v1}, Lio/didomi/sdk/V4;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "OPEN_SUBSCREEN"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2f

    :cond_28
    const/4 p1, 0x2

    const-string p2, "Fragment with tag \'PurposesFragment\' is already present"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_2f
    return-void
.end method

###### Class io.didomi.sdk.V4.b (io.didomi.sdk.V4$b)
.class final Lio/didomi/sdk/V4$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V4$b;->a:Lio/didomi/sdk/V4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V4$b;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->q1()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/V4$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.V4.c (io.didomi.sdk.V4$c)
.class final Lio/didomi/sdk/V4$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "it",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V4$c;->a:Lio/didomi/sdk/V4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    iget-object p1, p0, Lio/didomi/sdk/V4$c;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/InternalPurpose;

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/V4$c;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/V4$c;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.sdk.V4.d (io.didomi.sdk.V4$d)
.class final Lio/didomi/sdk/V4$d;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "it",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V4$d;->a:Lio/didomi/sdk/V4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    iget-object p1, p0, Lio/didomi/sdk/V4$d;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/InternalPurpose;

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/V4$d;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->w(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lio/didomi/sdk/V4$d;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->b(Lio/didomi/sdk/V4;Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_24
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/V4$d;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.sdk.V4.e (io.didomi.sdk.V4$e)
.class final Lio/didomi/sdk/V4$e;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "it",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V4$e;->a:Lio/didomi/sdk/V4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    iget-object p1, p0, Lio/didomi/sdk/V4$e;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->s0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/V4$e;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/V4$e;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class io.didomi.sdk.V4.f (io.didomi.sdk.V4$f)
.class public final Lio/didomi/sdk/V4$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/m4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/V4$f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "io/didomi/sdk/V4$f",
        "Lio/didomi/sdk/m4$a;",
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


# instance fields
.field final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/I3;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/o0;)V
    .registers 5

    const-string v0, "dataProcessing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/c;->f:Lio/didomi/sdk/c$a;

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "requireActivity().supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lio/didomi/sdk/c$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/o0;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;)Lio/didomi/sdk/R0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    iget-object p1, p1, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_21

    :cond_20
    move-object p1, v0

    :goto_21
    instance-of v1, p1, Lio/didomi/sdk/m4;

    if-eqz v1, :cond_28

    move-object v0, p1

    check-cast v0, Lio/didomi/sdk/m4;

    :cond_28
    if-eqz v0, :cond_38

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lio/didomi/sdk/a5;->d(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/m4;->a(Ljava/util/List;)V

    :cond_38
    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->b(Lio/didomi/sdk/V4;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/V4$f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "parentFragmentManager"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_52

    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    if-nez p1, :cond_27

    return-void

    :cond_27
    sget-object p2, Lio/didomi/sdk/u4;->e:Lio/didomi/sdk/u4$a;

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lio/didomi/sdk/u4$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_6d

    :cond_36
    new-instance p2, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_52
    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/a5;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-nez p1, :cond_5f

    return-void

    :cond_5f
    sget-object p2, Lio/didomi/sdk/q4;->g:Lio/didomi/sdk/q4$a;

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lio/didomi/sdk/q4$a;->a(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    :goto_6d
    return-void
.end method

.method public a(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 9

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    iget-object v3, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v3}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/didomi/sdk/a5;->u(Lio/didomi/sdk/models/InternalPurpose;)V

    sget-object v4, Lio/didomi/sdk/w4$a;->f:Lio/didomi/sdk/w4$a;

    if-ne p1, v4, :cond_56

    invoke-virtual {v3}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v4

    invoke-virtual {v4, v0, p3}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-static {v3}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;)Lio/didomi/sdk/R0;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, v0, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_41

    :cond_40
    move-object v0, v2

    :goto_41
    instance-of v4, v0, Lio/didomi/sdk/m4;

    if-eqz v4, :cond_48

    check-cast v0, Lio/didomi/sdk/m4;

    goto :goto_49

    :cond_48
    move-object v0, v2

    :goto_49
    if-eqz v0, :cond_56

    invoke-virtual {v3}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual {v0, p2, p3, v3, v1}, Lio/didomi/sdk/m4;->b(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_56
    sget-object v0, Lio/didomi/sdk/w4$a;->c:Lio/didomi/sdk/w4$a;

    if-ne p1, v0, :cond_9b

    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/a5;->a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object p1

    if-eqz p1, :cond_9b

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    invoke-static {v0}, Lio/didomi/sdk/V4;->a(Lio/didomi/sdk/V4;)Lio/didomi/sdk/R0;

    move-result-object p3

    if-eqz p3, :cond_86

    iget-object p3, p3, Lio/didomi/sdk/R0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_86

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    goto :goto_87

    :cond_86
    move-object p3, v2

    :goto_87
    instance-of v3, p3, Lio/didomi/sdk/m4;

    if-eqz v3, :cond_8e

    move-object v2, p3

    check-cast v2, Lio/didomi/sdk/m4;

    :cond_8e
    if-eqz v2, :cond_9b

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p3

    invoke-virtual {p3}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p3

    invoke-virtual {v2, p2, p1, p3, v1}, Lio/didomi/sdk/m4;->a(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    :cond_9b
    iget-object p1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->b(Lio/didomi/sdk/V4;)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;

    invoke-direct {v1}, Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/I3;->b(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;

    invoke-direct {v1}, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    iget-object v0, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v0}, Lio/didomi/sdk/V4;->d()Lio/didomi/sdk/I3;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V4$f;->a:Lio/didomi/sdk/V4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/I3;->c(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

###### Class io.didomi.sdk.V4.f.a (io.didomi.sdk.V4$f$a)
.class public final synthetic Lio/didomi/sdk/V4$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/V4$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
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
    sget-object v1, Lio/didomi/sdk/w4$a;->c:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/w4$a;->f:Lio/didomi/sdk/w4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/didomi/sdk/V4$f$a;->a:[I

    return-void
.end method

###### Class io.didomi.sdk.V4.g (io.didomi.sdk.V4$g)
.class public final Lio/didomi/sdk/V4$g;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/V4$g",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "newState",
        "",
        "onScrollStateChanged",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V4$g;->a:Lio/didomi/sdk/V4;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/V4$g;->a:Lio/didomi/sdk/V4;

    invoke-virtual {p1}, Lio/didomi/sdk/V4;->c()Lio/didomi/sdk/a5;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->w1()Z

    move-result p1

    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    iget-object p1, p0, Lio/didomi/sdk/V4$g;->a:Lio/didomi/sdk/V4;

    invoke-static {p1}, Lio/didomi/sdk/V4;->c(Lio/didomi/sdk/V4;)V

    :cond_18
    return-void
.end method

###### Class io.didomi.drawable.cd (io.didomi.sdk.cd)
.class public final synthetic Lio/didomi/sdk/cd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/cd;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/cd;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->k(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.didomi.drawable.dd (io.didomi.sdk.dd)
.class public final synthetic Lio/didomi/sdk/dd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/dd;->a:Lio/didomi/sdk/V4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/dd;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->l(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.ed (io.didomi.sdk.ed)
.class public final synthetic Lio/didomi/sdk/ed;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ed;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ed;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->m(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.didomi.drawable.fd (io.didomi.sdk.fd)
.class public final synthetic Lio/didomi/sdk/fd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/fd;->a:Lio/didomi/sdk/V4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/fd;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->n(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.gd (io.didomi.sdk.gd)
.class public final synthetic Lio/didomi/sdk/gd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/gd;->a:Lio/didomi/sdk/V4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/gd;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->o(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.hd (io.didomi.sdk.hd)
.class public final synthetic Lio/didomi/sdk/hd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/hd;->a:Lio/didomi/sdk/V4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/hd;->a:Lio/didomi/sdk/V4;

    invoke-static {v0}, Lio/didomi/sdk/V4;->p(Lio/didomi/sdk/V4;)V

    return-void
.end method

###### Class io.didomi.drawable.id (io.didomi.sdk.id)
.class public final synthetic Lio/didomi/sdk/id;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/id;->a:Lio/didomi/sdk/V4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/id;->a:Lio/didomi/sdk/V4;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->q(Lio/didomi/sdk/V4;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.jd (io.didomi.sdk.jd)
.class public final synthetic Lio/didomi/sdk/jd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/jd;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/jd;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/V4;->r(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method
