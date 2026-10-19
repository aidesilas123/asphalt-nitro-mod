###### Class com.gameloft.ingamebrowser.InGameBrowser.d.a (com.gameloft.ingamebrowser.InGameBrowser$d$a)
.class Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;
.super Ljava/lang/Object;
.source "InGameBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/ingamebrowser/InGameBrowser$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;


# direct methods
.method constructor <init>(Lcom/gameloft/ingamebrowser/InGameBrowser$d;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_142

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v1, v1, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$700(Lcom/gameloft/ingamebrowser/InGameBrowser;)F

    move-result v1

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$900(Lcom/gameloft/ingamebrowser/InGameBrowser;)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v1, v1, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v3, v3, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v3}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$800(Lcom/gameloft/ingamebrowser/InGameBrowser;)F

    move-result v3

    iget-object v4, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v4, v4, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v4}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$1000(Lcom/gameloft/ingamebrowser/InGameBrowser;)F

    move-result v4

    add-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setY(F)V

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$1100(Lcom/gameloft/ingamebrowser/InGameBrowser;)I

    move-result v2

    iget-object v3, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v3, v3, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v3}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_a1

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v3, v3, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v3}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$1100(Lcom/gameloft/ingamebrowser/InGameBrowser;)I

    move-result v3

    iget-object v4, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v4, v4, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v4}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    :cond_a1
    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_d2

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    :cond_d2
    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$1200(Lcom/gameloft/ingamebrowser/InGameBrowser;)I

    move-result v0

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_111

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v2, v2, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$1200(Lcom/gameloft/ingamebrowser/InGameBrowser;)I

    move-result v2

    iget-object v3, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v3, v3, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v3}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    :cond_111
    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_142

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser$d$a;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    iget-object v1, v1, Lcom/gameloft/ingamebrowser/InGameBrowser$d;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-static {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    :cond_142
    return-void
.end method
