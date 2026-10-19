###### Class com.ironsource.j1.a (com.ironsource.j1$a)
.class Lcom/ironsource/j1$a;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/j1;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic c:Lcom/ironsource/j1;


# direct methods
.method constructor <init>(Lcom/ironsource/j1;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/j1$a;->c:Lcom/ironsource/j1;

    iput-object p2, p0, Lcom/ironsource/j1$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/ironsource/j1$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/j1$a;->c:Lcom/ironsource/j1;

    iget-object v1, p0, Lcom/ironsource/j1$a;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/j1$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1, v2}, Lcom/ironsource/j1;->f0(Lcom/ironsource/j1;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method
