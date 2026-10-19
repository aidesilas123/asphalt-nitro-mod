###### Class com.applovin.impl.adview.v (com.applovin.impl.adview.v)
.class public Lcom/applovin/impl/adview/v;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/v$a;
    }
.end annotation


# instance fields
.field private final ain:Lcom/applovin/impl/adview/p;

.field private aio:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/p;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/v;->ain:Lcom/applovin/impl/adview/p;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/adview/v$a;)V
    .registers 3
    .param p1    # Lcom/applovin/impl/adview/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/applovin/impl/adview/v;->aio:Z

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/applovin/impl/adview/v$a;->rj()V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/adview/v;->ain:Lcom/applovin/impl/adview/p;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/p;->rM()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_18

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/applovin/impl/adview/v$a;->onFailure()V

    :cond_17
    return-void

    :cond_18
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/v;->aio:Z

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/applovin/impl/adview/v$a;->rj()V

    :cond_23
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->ain:Lcom/applovin/impl/adview/p;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/p;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sg()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/v;->a(Lcom/applovin/impl/adview/v$a;)V

    return-void
.end method

.method public sh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/v;->aio:Z

    return v0
.end method

###### Class com.applovin.impl.adview.v.a (com.applovin.impl.adview.v$a)
.class interface abstract Lcom/applovin/impl/adview/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract onFailure()V
.end method

.method public abstract rj()V
.end method
