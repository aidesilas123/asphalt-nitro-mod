###### Class com.applovin.impl.adview.m.AnonymousClass1 (com.applovin.impl.adview.m$1)
.class Lcom/applovin/impl/adview/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/m;->rK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahR:Lcom/applovin/impl/adview/m;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/m;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/m$1;->ahR:Lcom/applovin/impl/adview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/adview/m$1;->ahR:Lcom/applovin/impl/adview/m;

    invoke-static {p1}, Lcom/applovin/impl/adview/m;->a(Lcom/applovin/impl/adview/m;)Lcom/applovin/impl/adview/j;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
