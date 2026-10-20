###### Class com.fyber.inneractive.sdk.click.k (com.fyber.inneractive.sdk.click.k)
.class public Lcom/fyber/inneractive/sdk/click/k;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/click/l;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/click/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/click/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/click/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 7

    check-cast p1, Lcom/fyber/inneractive/sdk/click/c;

    const/4 p3, 0x0

    if-eqz p2, :cond_f

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/click/k;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/click/k;->b:Ljava/lang/String;

    invoke-static {p1, p3, p2, v0}, Lcom/fyber/inneractive/sdk/click/l;->a(Lcom/fyber/inneractive/sdk/click/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :cond_f
    if-eqz p1, :cond_79

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/click/k;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/click/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_29

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/click/c;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_29
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    invoke-virtual {v0, p2}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/click/b;->a:Lcom/fyber/inneractive/sdk/click/l$d;

    sget-object v2, Lcom/fyber/inneractive/sdk/click/l$d;->FAILED:Lcom/fyber/inneractive/sdk/click/l$d;

    if-ne v0, v2, :cond_4e

    :cond_37
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/click/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    invoke-static {p3, p1, p2, v1}, Lcom/fyber/inneractive/sdk/click/l;->a(Lcom/fyber/inneractive/sdk/click/l;Lcom/fyber/inneractive/sdk/click/c;Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/click/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/click/k;->b:Ljava/lang/String;

    invoke-static {p3, p1, p2, v0}, Lcom/fyber/inneractive/sdk/click/l;->a(Lcom/fyber/inneractive/sdk/click/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :cond_4e
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/fyber/inneractive/sdk/click/l;->a(Lcom/fyber/inneractive/sdk/click/l;Lcom/fyber/inneractive/sdk/click/c;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/click/l;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6c

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/click/l;->e:Ljava/util/List;

    new-instance v0, Lcom/fyber/inneractive/sdk/click/i;

    sget-object v2, Lcom/fyber/inneractive/sdk/click/l$d;->INTERNAL_REDIRECT:Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-direct {v0, p2, v1, v2, p3}, Lcom/fyber/inneractive/sdk/click/i;-><init>(Ljava/lang/String;ZLcom/fyber/inneractive/sdk/click/l$d;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/click/k;->c:Lcom/fyber/inneractive/sdk/click/l;

    const-string p3, "followRedirects"

    const-string v0, "Invalid response"

    invoke-static {p2, p3, v0}, Lcom/fyber/inneractive/sdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/click/l;->a(Lcom/fyber/inneractive/sdk/click/b;)Lcom/fyber/inneractive/sdk/click/b;

    :cond_79
    :goto_79
    return-void
.end method
