###### Class com.bytedance.sdk.component.adexpress.b.f (com.bytedance.sdk.component.adexpress.b.f)
.class public Lcom/bytedance/sdk/component/adexpress/b/f;
.super Ljava/lang/Object;
.source "NativeRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/component/adexpress/b/a;

.field private c:Lcom/bytedance/sdk/component/adexpress/b/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/m;Lcom/bytedance/sdk/component/adexpress/b/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/b/f;->b:Lcom/bytedance/sdk/component/adexpress/b/a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/b/f;->c:Lcom/bytedance/sdk/component/adexpress/b/m;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/b/f;)Lcom/bytedance/sdk/component/adexpress/b/a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/b/f;->b:Lcom/bytedance/sdk/component/adexpress/b/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/c;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/f;->b:Lcom/bytedance/sdk/component/adexpress/b/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/b/a;->a(Lcom/bytedance/sdk/component/adexpress/b/c;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/j$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/f;->c:Lcom/bytedance/sdk/component/adexpress/b/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/m;->e()Lcom/bytedance/sdk/component/adexpress/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/i;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/f;->b:Lcom/bytedance/sdk/component/adexpress/b/a;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/b/f$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/b/f$1;-><init>(Lcom/bytedance/sdk/component/adexpress/b/f;Lcom/bytedance/sdk/component/adexpress/b/j$a;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/d;->a(Lcom/bytedance/sdk/component/adexpress/b/g;)V

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

###### Class com.bytedance.sdk.component.adexpress.b.f.AnonymousClass1 (com.bytedance.sdk.component.adexpress.b.f$1)
.class Lcom/bytedance/sdk/component/adexpress/b/f$1;
.super Ljava/lang/Object;
.source "NativeRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/b/f;->a(Lcom/bytedance/sdk/component/adexpress/b/j$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/b/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/b/f;Lcom/bytedance/sdk/component/adexpress/b/j$a;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/f$1;->b:Lcom/bytedance/sdk/component/adexpress/b/f;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/b/f$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/f$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b()Lcom/bytedance/sdk/component/adexpress/b/o;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/b/o;->a_(I)V

    :cond_b
    return-void
.end method

.method public a(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/b/n;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/f$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/f$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->b()Lcom/bytedance/sdk/component/adexpress/b/o;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/f$1;->b:Lcom/bytedance/sdk/component/adexpress/b/f;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/b/f;->a(Lcom/bytedance/sdk/component/adexpress/b/f;)Lcom/bytedance/sdk/component/adexpress/b/a;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/b/o;->a(Lcom/bytedance/sdk/component/adexpress/b/d;Lcom/bytedance/sdk/component/adexpress/b/n;)V

    :cond_1a
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/f$1;->a:Lcom/bytedance/sdk/component/adexpress/b/j$a;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/b/j$a;->a(Z)V

    return-void
.end method
