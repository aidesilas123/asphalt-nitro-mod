###### Class com.applovin.impl.sdk.utils.v.AnonymousClass2 (com.applovin.impl.sdk.utils.v$2)
.class Lcom/applovin/impl/sdk/utils/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/v;->b(Landroid/view/View;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aWu:Landroid/view/View;

.field final synthetic aWv:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/v$2;->aWu:Landroid/view/View;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/v$2;->aWv:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/sdk/utils/v$2;->aWu:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/utils/v$2;->aWv:Ljava/lang/Runnable;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/sdk/utils/v$2;->aWu:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
