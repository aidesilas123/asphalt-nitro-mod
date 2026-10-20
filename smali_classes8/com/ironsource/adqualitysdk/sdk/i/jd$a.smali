###### Class com.ironsource.adqualitysdk.sdk.i.jd.a (com.ironsource.adqualitysdk.sdk.i.jd$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jd$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ij;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jd;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/jd;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jd;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻐ()V
    .registers 6

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ｋ()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->d(Lcom/ironsource/adqualitysdk/sdk/i/jd;Landroid/view/View;)V

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->e(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->b(Lcom/ironsource/adqualitysdk/sdk/i/jd;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_79
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jd$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/jd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->a(Lcom/ironsource/adqualitysdk/sdk/i/jd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
