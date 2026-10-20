###### Class com.applovin.exoplayer2.ui.o (com.applovin.exoplayer2.ui.o)
.class public final synthetic Lcom/applovin/exoplayer2/ui/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/ui/d;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/ui/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/o;->a:Lcom/applovin/exoplayer2/ui/d;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/o;->a:Lcom/applovin/exoplayer2/ui/d;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/ui/d;->d(Lcom/applovin/exoplayer2/ui/d;Landroid/animation/ValueAnimator;)V

    return-void
.end method
