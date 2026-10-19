###### Class io.didomi.drawable.C1851o4 (io.didomi.sdk.o4)
.class public final Lio/didomi/sdk/o4;
.super Lio/didomi/sdk/U4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/o4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 \u00142\u00020\u0001:\u0001\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/didomi/sdk/o4;",
        "Lio/didomi/sdk/U4;",
        "Lio/didomi/sdk/r1;",
        "binding",
        "Lio/didomi/sdk/m4$a;",
        "callbacks",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Lio/didomi/sdk/r1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V",
        "Lio/didomi/sdk/y4;",
        "data",
        "",
        "a",
        "(Lio/didomi/sdk/y4;)V",
        "b",
        "c",
        "Lio/didomi/sdk/r1;",
        "d",
        "Lio/didomi/sdk/m4$a;",
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
.field public static final e:Lio/didomi/sdk/o4$a;


# instance fields
.field private final c:Lio/didomi/sdk/r1;

.field private final d:Lio/didomi/sdk/m4$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/o4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/o4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/o4;->e:Lio/didomi/sdk/o4$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/r1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V
    .registers 5

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lio/didomi/sdk/U4;-><init>(Landroidx/viewbinding/ViewBinding;Lio/didomi/sdk/z8;)V

    iput-object p1, p0, Lio/didomi/sdk/o4;->c:Lio/didomi/sdk/r1;

    iput-object p2, p0, Lio/didomi/sdk/o4;->d:Lio/didomi/sdk/m4$a;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/o4;)Lio/didomi/sdk/m4$a;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/o4;->d:Lio/didomi/sdk/m4$a;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/r1;Landroid/view/View;)V
    .registers 2

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/r1;->b:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-virtual {p0}, Lio/didomi/sdk/view/mobile/DidomiToggle;->a()V

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

.method public static synthetic c(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/o4;->a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method

.method public static synthetic d(Lio/didomi/sdk/r1;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/o4;->a(Lio/didomi/sdk/r1;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/y4;)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/didomi/sdk/U4;->a(Lio/didomi/sdk/w4;)V

    iget-object v0, p0, Lio/didomi/sdk/o4;->c:Lio/didomi/sdk/r1;

    iget-object v1, v0, Lio/didomi/sdk/r1;->c:Landroid/widget/TextView;

    const-string v2, "bind$lambda$2$lambda$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/e4;->o()Lio/didomi/sdk/w8;

    move-result-object v2

    invoke-static {v1, v2}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {p1}, Lio/didomi/sdk/y4;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lio/didomi/sdk/y4;->i()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object p1, v0, Lio/didomi/sdk/r1;->b:Lio/didomi/sdk/view/mobile/DidomiToggle;

    const-string v0, "switchHolderPurposeBulk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/didomi/sdk/j9;->c(Landroid/view/View;)V

    goto :goto_5d

    :cond_4a
    iget-object v1, v0, Lio/didomi/sdk/r1;->b:Lio/didomi/sdk/view/mobile/DidomiToggle;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lio/didomi/sdk/ff;

    invoke-direct {v2, v0}, Lio/didomi/sdk/ff;-><init>(Lio/didomi/sdk/r1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/o4;->b(Lio/didomi/sdk/y4;)V

    :goto_5d
    return-void
.end method

.method public final b(Lio/didomi/sdk/y4;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->i()Z

    move-result v2

    if-eqz v2, :cond_10

    return-void

    :cond_10
    iget-object v2, v0, Lio/didomi/sdk/o4;->c:Lio/didomi/sdk/r1;

    iget-object v2, v2, Lio/didomi/sdk/r1;->b:Lio/didomi/sdk/view/mobile/DidomiToggle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    invoke-virtual {v2}, Lio/didomi/sdk/view/mobile/DidomiToggle;->getState()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_35

    invoke-virtual {v2, v5}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setAnimate(Z)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setState(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    new-instance v3, Lio/didomi/sdk/ef;

    invoke-direct {v3, v2}, Lio/didomi/sdk/ef;-><init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_35
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lio/didomi/sdk/o4$b;

    invoke-direct {v3, v0}, Lio/didomi/sdk/o4$b;-><init>(Lio/didomi/sdk/o4;)V

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->d()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->e()Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lio/didomi/sdk/b;->c:Lio/didomi/sdk/b;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x60

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/y4;->d()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {v1, v5}, Lio/didomi/sdk/y4;->a(Z)V

    :cond_85
    return-void
.end method

###### Class io.didomi.drawable.C1851o4.Companion (io.didomi.sdk.o4$a)
.class public final Lio/didomi/sdk/o4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/o4;
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
        "Lio/didomi/sdk/o4$a;",
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

    invoke-direct {p0}, Lio/didomi/sdk/o4$a;-><init>()V

    return-void
.end method

###### Class io.didomi.drawable.C1851o4.b (io.didomi.sdk.o4$b)
.class public final Lio/didomi/sdk/o4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/mobile/DidomiToggle$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/o4;->b(Lio/didomi/sdk/y4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/o4$b",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$a;",
        "Lio/didomi/sdk/view/mobile/DidomiToggle;",
        "toggle",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/o4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/o4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/o4$b;->a:Lio/didomi/sdk/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "toggle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/o4$b;->a:Lio/didomi/sdk/o4;

    invoke-static {p1}, Lio/didomi/sdk/o4;->a(Lio/didomi/sdk/o4;)Lio/didomi/sdk/m4$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/didomi/sdk/m4$a;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

###### Class io.didomi.drawable.ef (io.didomi.sdk.ef)
.class public final synthetic Lio/didomi/sdk/ef;
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

    iput-object p1, p0, Lio/didomi/sdk/ef;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/ef;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-static {v0}, Lio/didomi/sdk/o4;->c(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method

###### Class io.didomi.drawable.ff (io.didomi.sdk.ff)
.class public final synthetic Lio/didomi/sdk/ff;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/r1;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/r1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ff;->a:Lio/didomi/sdk/r1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ff;->a:Lio/didomi/sdk/r1;

    invoke-static {v0, p1}, Lio/didomi/sdk/o4;->d(Lio/didomi/sdk/r1;Landroid/view/View;)V

    return-void
.end method
