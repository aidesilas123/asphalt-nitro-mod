###### Class com.moat.analytics.mobile.glft.x (com.moat.analytics.mobile.glft.x)
.class Lcom/moat/analytics/mobile/glft/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/x$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/glft/a/b/a;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    move-object v3, v2

    :cond_1b
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    const/16 v4, 0x64

    if-ge v1, v4, :cond_69

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v5, Lcom/moat/analytics/mobile/glft/x$a;

    invoke-direct {v5, v4, v2}, Lcom/moat/analytics/mobile/glft/x$a;-><init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/glft/x$1;)V

    invoke-virtual {v5}, Lcom/moat/analytics/mobile/glft/x$a;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    instance-of v6, v5, Landroid/webkit/WebView;

    if-eqz v6, :cond_55

    if-nez v3, :cond_4c

    move-object v3, v5

    check-cast v3, Landroid/webkit/WebView;

    goto :goto_55

    :cond_4c
    const/4 v3, 0x3

    const-string v4, "MoatWebViewHound"

    const-string v6, "Ambiguous ad container: multiple WebViews reside within it."

    invoke-static {v3, v4, v5, v6}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1a

    :cond_55
    :goto_55
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_36

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    goto :goto_36

    :cond_62
    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_69
    invoke-static {v3}, Lcom/moat/analytics/mobile/glft/a/b/a;->b(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object p0

    return-object p0
.end method

###### Class com.moat.analytics.mobile.glft.x.AnonymousClass1 (com.moat.analytics.mobile.glft.x$1)
.class synthetic Lcom/moat/analytics/mobile/glft/x$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.moat.analytics.mobile.glft.x.a (com.moat.analytics.mobile.glft.x$a)
.class Lcom/moat/analytics/mobile/glft/x$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/x$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/x$a;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/glft/x$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/x$a;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/x$a;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/x$a;->a:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/moat/analytics/mobile/glft/x$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/moat/analytics/mobile/glft/x$a$a;-><init>(Lcom/moat/analytics/mobile/glft/x$a;Lcom/moat/analytics/mobile/glft/x$1;)V

    return-object v0
.end method

###### Class com.moat.analytics.mobile.glft.x.a.C0440a (com.moat.analytics.mobile.glft.x$a$a)
.class Lcom/moat/analytics/mobile/glft/x$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/x$a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/glft/x$a;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->a:Lcom/moat/analytics/mobile/glft/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/glft/x$a;Lcom/moat/analytics/mobile/glft/x$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/x$a$a;-><init>(Lcom/moat/analytics/mobile/glft/x$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 3

    iget v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->a:Lcom/moat/analytics/mobile/glft/x$a;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/x$a;->a(Lcom/moat/analytics/mobile/glft/x$a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 4

    iget v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->a:Lcom/moat/analytics/mobile/glft/x$a;

    invoke-static {v2}, Lcom/moat/analytics/mobile/glft/x$a;->a(Lcom/moat/analytics/mobile/glft/x$a;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/x$a$a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Under development."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
