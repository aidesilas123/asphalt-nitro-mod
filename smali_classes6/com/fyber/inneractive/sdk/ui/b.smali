###### Class com.fyber.inneractive.sdk.ui.b (com.fyber.inneractive.sdk.ui.b)
.class public Lcom/fyber/inneractive/sdk/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ui/b;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/b;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/ui/b;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    iget-object p3, p3, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->f:F

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/b;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/b;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    const/high16 p2, -0x40800000    # -1.0f

    iget p3, p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->f:F

    mul-float p3, p3, p2

    iput p3, p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->f:F

    :cond_26
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/b;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    iget p1, p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->f:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/b;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    iget-boolean p2, p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->d:Z

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a()V

    :cond_38
    return-void
.end method
