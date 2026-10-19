###### Class io.didomi.drawable.C1841n4 (io.didomi.sdk.n4)
.class public final Lio/didomi/sdk/n4;
.super Lio/didomi/sdk/U4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/n4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00132\u00020\u0001:\u0001\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/didomi/sdk/n4;",
        "Lio/didomi/sdk/U4;",
        "Lio/didomi/sdk/q1;",
        "binding",
        "Lio/didomi/sdk/m4$a;",
        "callback",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Lio/didomi/sdk/q1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V",
        "Lio/didomi/sdk/x4;",
        "data",
        "",
        "a",
        "(Lio/didomi/sdk/x4;)V",
        "c",
        "Lio/didomi/sdk/q1;",
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
.field public static final e:Lio/didomi/sdk/n4$a;


# instance fields
.field private final c:Lio/didomi/sdk/q1;

.field private final d:Lio/didomi/sdk/m4$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/n4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/n4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/n4;->e:Lio/didomi/sdk/n4$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/q1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V
    .registers 5

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lio/didomi/sdk/U4;-><init>(Landroidx/viewbinding/ViewBinding;Lio/didomi/sdk/z8;)V

    iput-object p1, p0, Lio/didomi/sdk/n4;->c:Lio/didomi/sdk/q1;

    iput-object p2, p0, Lio/didomi/sdk/n4;->d:Lio/didomi/sdk/m4$a;

    return-void
.end method

.method private static final a(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;Landroid/view/View;)V
    .registers 4

    const-string p3, "$this_apply"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setImportantForAccessibility(I)V

    iget-object p0, p1, Lio/didomi/sdk/n4;->d:Lio/didomi/sdk/m4$a;

    invoke-virtual {p2}, Lio/didomi/sdk/x4$a;->a()Lio/didomi/sdk/o0;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/didomi/sdk/m4$a;->a(Lio/didomi/sdk/o0;)V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/n4;->a(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/x4;)V
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "data"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Lio/didomi/sdk/U4;->a(Lio/didomi/sdk/w4;)V

    iget-object v1, v0, Lio/didomi/sdk/n4;->c:Lio/didomi/sdk/q1;

    iget-object v1, v1, Lio/didomi/sdk/q1;->c:Landroid/widget/TextView;

    const-string v3, "bind$lambda$0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/e4;->c()Lio/didomi/sdk/w8;

    move-result-object v3

    invoke-static {v1, v3}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/x4;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/n4;->c:Lio/didomi/sdk/q1;

    invoke-virtual {v1}, Lio/didomi/sdk/q1;->a()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_39

    return-void

    :cond_39
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/x4;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/x4$a;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, v0, Lio/didomi/sdk/n4;->c:Lio/didomi/sdk/q1;

    invoke-virtual {v6}, Lio/didomi/sdk/q1;->a()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lio/didomi/sdk/q2;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/q2;

    move-result-object v5

    const-string v6, "inflate(\n               \u2026   true\n                )"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/didomi/sdk/q2;->a()Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v7

    const-string v5, "bind$lambda$3$lambda$2"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v5

    invoke-virtual {v5}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v5

    invoke-virtual {v5}, Lio/didomi/sdk/e4;->i()Lio/didomi/sdk/w8;

    move-result-object v5

    invoke-static {v7, v5}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual {v4}, Lio/didomi/sdk/x4$a;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lio/didomi/sdk/df;

    invoke-direct {v5, v7, v0, v4}, Lio/didomi/sdk/df;-><init>(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/x4;->d()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfd

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    goto :goto_41

    :cond_a0
    return-void
.end method

###### Class io.didomi.drawable.C1841n4.Companion (io.didomi.sdk.n4$a)
.class public final Lio/didomi/sdk/n4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/n4;
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
        "Lio/didomi/sdk/n4$a;",
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

    invoke-direct {p0}, Lio/didomi/sdk/n4$a;-><init>()V

    return-void
.end method

###### Class io.didomi.drawable.df (io.didomi.sdk.df)
.class public final synthetic Lio/didomi/sdk/df;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatButton;

.field public final synthetic b:Lio/didomi/sdk/n4;

.field public final synthetic c:Lio/didomi/sdk/x4$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/df;->a:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p2, p0, Lio/didomi/sdk/df;->b:Lio/didomi/sdk/n4;

    iput-object p3, p0, Lio/didomi/sdk/df;->c:Lio/didomi/sdk/x4$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/df;->a:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lio/didomi/sdk/df;->b:Lio/didomi/sdk/n4;

    iget-object v2, p0, Lio/didomi/sdk/df;->c:Lio/didomi/sdk/x4$a;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/n4;->c(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;Landroid/view/View;)V

    return-void
.end method
