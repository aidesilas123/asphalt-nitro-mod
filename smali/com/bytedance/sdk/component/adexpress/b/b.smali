###### Class com.bytedance.sdk.component.adexpress.b.b (com.bytedance.sdk.component.adexpress.b.b)
.class public Lcom/bytedance/sdk/component/adexpress/b/b;
.super Ljava/lang/Object;
.source "DynamicRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

.field private c:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private d:Lcom/bytedance/sdk/component/adexpress/b/h;

.field private e:Lcom/bytedance/sdk/component/adexpress/b/m;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/m;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/c/g;Lcom/bytedance/sdk/component/adexpress/b/h;Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->e:Lcom/bytedance/sdk/component/adexpress/b/m;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->c:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->d:Lcom/bytedance/sdk/component/adexpress/b/h;

    if-eqz p8, :cond_10

    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    goto :goto_1e

    :cond_10
    new-instance p6, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/c/g;Lcom/bytedance/sdk/component/adexpress/b/m;Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;)V

    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    :goto_1e
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->d:Lcom/bytedance/sdk/component/adexpress/b/h;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/b/h;)V

    instance-of p1, p5, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz p1, :cond_2d

    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->f:I

    goto :goto_30

    :cond_2d
    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->f:I

    :goto_30
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/b/b;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->f:I

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/b/b;)Lcom/bytedance/sdk/component/adexpress/b/m;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->e:Lcom/bytedance/sdk/component/adexpress/b/m;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/adexpress/b/b;)Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->b()V

    :cond_7
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/j$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->e:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->f:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/i;->b(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/b/b$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/b/b$1;-><init>(Lcom/bytedance/sdk/component/adexpress/b/b;Lcom/bytedance/sdk/component/adexpress/b/j$a;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->a(Lcom/bytedance/sdk/component/adexpress/b/g;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()Lcom/bytedance/sdk/component/adexpress/dynamic/d;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.bytedance.sdk.component.adexpress.b.b.AnonymousClass1 (com.bytedance.sdk.component.adexpress.b.b$1)
.class Lcom/bytedance/sdk/component/adexpress/b/b$1;
.super Ljava/lang/Object;
.source "DynamicRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/b/b;->a(Lcom/bytedance/sdk/component/adexpress/b/j$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/b/b;Lcom/bytedance/sdk/component/adexpress/b/j$a;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/b/b;->b(Lcom/bytedance/sdk/component/adexpress/b/b;)Lcom/bytedance/sdk/component/adexpress/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/b/b;->a(Lcom/bytedance/sdk/component/adexpress/b/b;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b(Lcom/bytedance/sdk/component/adexpress/b/j;)Z

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/component/adexpress/b/i;->a(IIZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b(Lcom/bytedance/sdk/component/adexpress/b/j;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->a(Lcom/bytedance/sdk/component/adexpress/b/j;)V

    goto :goto_39

    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b()Lcom/bytedance/sdk/component/adexpress/b/o;

    move-result-object v0

    if-nez v0, :cond_36

    return-void

    :cond_36
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/b/o;->a_(I)V

    :goto_39
    return-void
.end method

.method public a(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/b/n;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/b;->b(Lcom/bytedance/sdk/component/adexpress/b/b;)Lcom/bytedance/sdk/component/adexpress/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/b/b;->a(Lcom/bytedance/sdk/component/adexpress/b/b;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/b/i;->f(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/b;->b(Lcom/bytedance/sdk/component/adexpress/b/b;)Lcom/bytedance/sdk/component/adexpress/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/b/b;->a(Lcom/bytedance/sdk/component/adexpress/b/b;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/b/i;->g(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/b;->b(Lcom/bytedance/sdk/component/adexpress/b/b;)Lcom/bytedance/sdk/component/adexpress/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/i;->h()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b()Lcom/bytedance/sdk/component/adexpress/b/o;

    move-result-object p1

    if-nez p1, :cond_45

    return-void

    :cond_45
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->b:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/b/b;->c(Lcom/bytedance/sdk/component/adexpress/b/b;)Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/b/o;->a(Lcom/bytedance/sdk/component/adexpress/b/d;Lcom/bytedance/sdk/component/adexpress/b/n;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/b$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->a(Z)V

    return-void
.end method
