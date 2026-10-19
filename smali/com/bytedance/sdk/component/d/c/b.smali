###### Class com.bytedance.sdk.component.d.c.b (com.bytedance.sdk.component.d.c.b)
.class public Lcom/bytedance/sdk/component/d/c/b;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/n;


# instance fields
.field private volatile a:Lcom/bytedance/sdk/component/d/c/f;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/component/d/m;)Lcom/bytedance/sdk/component/d/n;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/d/c/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/c/b;-><init>()V

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/d/c/b;->b(Landroid/content/Context;Lcom/bytedance/sdk/component/d/m;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/bytedance/sdk/component/d/m;)V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    if-eqz v0, :cond_b

    const-string v0, "ImageLoader"

    const-string v1, "already init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez p2, :cond_11

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/d/c/e;

    move-result-object p2

    :cond_11
    new-instance v0, Lcom/bytedance/sdk/component/d/c/f;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/d/c/f;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/d/m;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;
    .registers 4

    new-instance v0, Lcom/bytedance/sdk/component/d/c/c$b;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/c/c$b;-><init>(Lcom/bytedance/sdk/component/d/c/f;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/c/c$b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    return-object v1

    :cond_12
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_16
    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/f;->b()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/d/r;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/d/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_22

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    :cond_3c
    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/f;->c()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/d/c;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/d/c;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_48

    return-object v0

    :cond_5b
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_19

    return v1

    :cond_19
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1d
    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/b;->a:Lcom/bytedance/sdk/component/d/c/f;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/d/c/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/d/a;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    return v1
.end method
