###### Class io.didomi.drawable.L7 (io.didomi.sdk.L7)
.class public final Lio/didomi/sdk/L7;
.super Lio/didomi/sdk/Y7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/L7$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/didomi/sdk/L7;",
        "Lio/didomi/sdk/Y7;",
        "Lio/didomi/sdk/b2;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/b2;)V",
        "Lio/didomi/sdk/K7$a;",
        "callback",
        "Lio/didomi/sdk/V7$a;",
        "link",
        "",
        "a",
        "(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$a;)V",
        "Lio/didomi/sdk/b2;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/b2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/b2;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/Y7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/L7;->a:Lio/didomi/sdk/b2;

    return-void
.end method

.method private static final a(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;Landroid/view/View;)V
    .registers 3

    const-string p2, "$link"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$callback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V7$a;->c()Lio/didomi/sdk/V7$a$a;

    move-result-object p0

    sget-object p2, Lio/didomi/sdk/L7$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_36

    const/4 p2, 0x2

    if-eq p0, p2, :cond_32

    const/4 p2, 0x3

    if-eq p0, p2, :cond_2e

    const/4 p2, 0x4

    if-eq p0, p2, :cond_2a

    const/4 p2, 0x5

    if-eq p0, p2, :cond_26

    goto :goto_39

    :cond_26
    invoke-interface {p1}, Lio/didomi/sdk/K7$a;->g()V

    goto :goto_39

    :cond_2a
    invoke-interface {p1}, Lio/didomi/sdk/K7$a;->b()V

    goto :goto_39

    :cond_2e
    invoke-interface {p1}, Lio/didomi/sdk/K7$a;->d()V

    goto :goto_39

    :cond_32
    invoke-interface {p1}, Lio/didomi/sdk/K7$a;->f()V

    goto :goto_39

    :cond_36
    invoke-interface {p1}, Lio/didomi/sdk/K7$a;->e()V

    :goto_39
    return-void
.end method

.method private static final a(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x16

    if-ne p2, v0, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/L7;->a(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/L7;->a(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$a;)V
    .registers 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/L7;->a:Lio/didomi/sdk/b2;

    iget-object v0, v0, Lio/didomi/sdk/b2;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lio/didomi/sdk/V7$a;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/didomi/sdk/ub;

    invoke-direct {v1, p2, p1}, Lio/didomi/sdk/ub;-><init>(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lio/didomi/sdk/tb;

    invoke-direct {p1, v0}, Lio/didomi/sdk/tb;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

###### Class io.didomi.sdk.L7.a (io.didomi.sdk.L7$a)
.class public final synthetic Lio/didomi/sdk/L7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/L7;
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

    invoke-static {}, Lio/didomi/sdk/V7$a$a;->values()[Lio/didomi/sdk/V7$a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/V7$a$a;->b:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/V7$a$a;->a:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/didomi/sdk/V7$a$a;->c:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/didomi/sdk/V7$a$a;->d:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/didomi/sdk/V7$a$a;->e:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lio/didomi/sdk/L7$a;->a:[I

    return-void
.end method

###### Class io.didomi.drawable.tb (io.didomi.sdk.tb)
.class public final synthetic Lio/didomi/sdk/tb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/tb;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/tb;->a:Landroid/view/View;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/L7;->b(Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.didomi.drawable.ub (io.didomi.sdk.ub)
.class public final synthetic Lio/didomi/sdk/ub;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V7$a;

.field public final synthetic b:Lio/didomi/sdk/K7$a;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ub;->a:Lio/didomi/sdk/V7$a;

    iput-object p2, p0, Lio/didomi/sdk/ub;->b:Lio/didomi/sdk/K7$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ub;->a:Lio/didomi/sdk/V7$a;

    iget-object v1, p0, Lio/didomi/sdk/ub;->b:Lio/didomi/sdk/K7$a;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/L7;->c(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;Landroid/view/View;)V

    return-void
.end method
