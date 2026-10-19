###### Class com.bytedance.sdk.component.a.r (com.bytedance.sdk.component.a.r)
.class public Lcom/bytedance/sdk/component/a/r;
.super Ljava/lang/Object;
.source "JsBridge2.java"


# static fields
.field static a:Lcom/bytedance/sdk/component/a/w;


# instance fields
.field private final b:Lcom/bytedance/sdk/component/a/a;

.field private final c:Landroid/webkit/WebView;

.field private final d:Lcom/bytedance/sdk/component/a/j;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bytedance/sdk/component/a/o;

.field private volatile g:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/a/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/r;->e:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/a/r;->g:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/r;->d:Lcom/bytedance/sdk/component/a/j;

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/a/j;->h:Z

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/bytedance/sdk/component/a/r;->a:Lcom/bytedance/sdk/component/a/w;

    if-eqz v1, :cond_1e

    iget-object v2, p1, Lcom/bytedance/sdk/component/a/j;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/a/w;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/v;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iget-object v2, p1, Lcom/bytedance/sdk/component/a/j;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_32

    iget-object v2, p1, Lcom/bytedance/sdk/component/a/j;->b:Lcom/bytedance/sdk/component/a/a;

    if-nez v2, :cond_2f

    new-instance v2, Lcom/bytedance/sdk/component/a/z;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/a/z;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/component/a/r;->b:Lcom/bytedance/sdk/component/a/a;

    goto :goto_36

    :cond_2f
    iput-object v2, p0, Lcom/bytedance/sdk/component/a/r;->b:Lcom/bytedance/sdk/component/a/a;

    goto :goto_36

    :cond_32
    iget-object v2, p1, Lcom/bytedance/sdk/component/a/j;->b:Lcom/bytedance/sdk/component/a/a;

    iput-object v2, p0, Lcom/bytedance/sdk/component/a/r;->b:Lcom/bytedance/sdk/component/a/a;

    :goto_36
    iget-object v2, p0, Lcom/bytedance/sdk/component/a/r;->b:Lcom/bytedance/sdk/component/a/a;

    invoke-virtual {v2, p1, v1}, Lcom/bytedance/sdk/component/a/a;->a(Lcom/bytedance/sdk/component/a/j;Lcom/bytedance/sdk/component/a/v;)V

    iget-object v1, p1, Lcom/bytedance/sdk/component/a/j;->a:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/bytedance/sdk/component/a/r;->c:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/bytedance/sdk/component/a/j;->j:Lcom/bytedance/sdk/component/a/n;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/a/j;->f:Z

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->a(Z)V

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/a/j;->g:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/y;->a(Z)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/component/a/j;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/component/a/j;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/a/j;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/r;->g:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsBridge2 is already released!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/RuntimeException;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/d$b;)Lcom/bytedance/sdk/component/a/r;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/a/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/a/d$b;)Lcom/bytedance/sdk/component/a/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/e;)Lcom/bytedance/sdk/component/a/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/a/e<",
            "**>;)",
            "Lcom/bytedance/sdk/component/a/r;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/a/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/a/e;)Lcom/bytedance/sdk/component/a/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/a/d$b;)Lcom/bytedance/sdk/component/a/r;
    .registers 4
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/a/r;->b()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/a/r;->b:Lcom/bytedance/sdk/component/a/a;

    iget-object p2, p2, Lcom/bytedance/sdk/component/a/a;->g:Lcom/bytedance/sdk/component/a/g;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/d$b;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/a/r;->f:Lcom/bytedance/sdk/component/a/o;

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/a/o;->a(Ljava/lang/String;)V

    :cond_11
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/a/e;)Lcom/bytedance/sdk/component/a/r;
    .registers 4
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/a/e<",
            "**>;)",
            "Lcom/bytedance/sdk/component/a/r;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/a/r;->b()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/a/r;->b:Lcom/bytedance/sdk/component/a/a;

    iget-object p2, p2, Lcom/bytedance/sdk/component/a/a;->g:Lcom/bytedance/sdk/component/a/g;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/e;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/a/r;->f:Lcom/bytedance/sdk/component/a/o;

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/a/o;->a(Ljava/lang/String;)V

    :cond_11
    return-object p0
.end method

.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/r;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/r;->b:Lcom/bytedance/sdk/component/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/a/a;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/a/r;->g:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/a/n;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lcom/bytedance/sdk/component/a/n;->a()V

    goto :goto_13

    :cond_25
    return-void
.end method
