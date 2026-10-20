###### Class com.fyber.inneractive.sdk.click.e (com.fyber.inneractive.sdk.click.e)
.class public Lcom/fyber/inneractive/sdk/click/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Lcom/fyber/inneractive/sdk/click/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/click/f;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/click/f;Ljava/util/List;Landroid/net/Uri;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/click/e;->c:Lcom/fyber/inneractive/sdk/click/f;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/click/e;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/click/e;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 11

    check-cast p1, Lcom/fyber/inneractive/sdk/click/c;

    const-string p3, "IgniteGooglePlay"

    const/4 v0, 0x0

    if-nez p2, :cond_86

    if-eqz p1, :cond_86

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/click/c;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c6

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/click/c;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/click/e;->a:Ljava/util/List;

    if-eqz v1, :cond_6c

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/click/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/click/e;->a:Ljava/util/List;

    new-instance v5, Lcom/fyber/inneractive/sdk/click/i;

    sget-object v6, Lcom/fyber/inneractive/sdk/click/l$d;->INTERNAL_REDIRECT:Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-direct {v5, v3, v2, v6, v0}, Lcom/fyber/inneractive/sdk/click/i;-><init>(Ljava/lang/String;ZLcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_48
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/click/e;->a:Ljava/util/List;

    new-instance v3, Lcom/fyber/inneractive/sdk/click/i;

    sget-object v4, Lcom/fyber/inneractive/sdk/click/l$d;->OPEN_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-direct {v3, p2, v2, v4, v0}, Lcom/fyber/inneractive/sdk/click/i;-><init>(Ljava/lang/String;ZLcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/click/e;->c:Lcom/fyber/inneractive/sdk/click/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v4, p3}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object p3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/click/e;->a:Ljava/util/List;

    iput-object v1, p3, Lcom/fyber/inneractive/sdk/click/b;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/click/e;->c:Lcom/fyber/inneractive/sdk/click/f;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/click/f;->c:Lcom/fyber/inneractive/sdk/click/f$a;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/click/f;->d:Lcom/fyber/inneractive/sdk/util/k0;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/click/f;->e:Lcom/fyber/inneractive/sdk/util/e;

    invoke-interface {v2, p3, v3, v1}, Lcom/fyber/inneractive/sdk/click/f$a;->a(Lcom/fyber/inneractive/sdk/click/b;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/util/e;)V

    :cond_6c
    const-string p3, "market"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_80

    const-string p1, "market://details?id="

    const-string p3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    :cond_80
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/click/c;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    :cond_86
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/e;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/e;->b:Landroid/net/Uri;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/click/e;->c:Lcom/fyber/inneractive/sdk/click/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "failed getting redirects"

    invoke-static {p1, p3, p2}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object p1

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/click/e;->a:Ljava/util/List;

    if-eqz p2, :cond_bb

    new-instance p3, Lcom/fyber/inneractive/sdk/click/i;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/click/e;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/inneractive/sdk/click/l$d;->INTERNAL_REDIRECT:Lcom/fyber/inneractive/sdk/click/l$d;

    const/4 v2, 0x0

    const-string v3, "failed getting redirects. ignite click handler"

    invoke-direct {p3, v0, v2, v1, v3}, Lcom/fyber/inneractive/sdk/click/i;-><init>(Ljava/lang/String;ZLcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/click/e;->a:Ljava/util/List;

    iput-object p2, p1, Lcom/fyber/inneractive/sdk/click/b;->f:Ljava/util/List;

    :cond_bb
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/click/e;->c:Lcom/fyber/inneractive/sdk/click/f;

    iget-object p3, p2, Lcom/fyber/inneractive/sdk/click/f;->c:Lcom/fyber/inneractive/sdk/click/f$a;

    iget-object v0, p2, Lcom/fyber/inneractive/sdk/click/f;->d:Lcom/fyber/inneractive/sdk/util/k0;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/click/f;->e:Lcom/fyber/inneractive/sdk/util/e;

    invoke-interface {p3, p1, v0, p2}, Lcom/fyber/inneractive/sdk/click/f$a;->a(Lcom/fyber/inneractive/sdk/click/b;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/util/e;)V

    :cond_c6
    :goto_c6
    return-void
.end method
