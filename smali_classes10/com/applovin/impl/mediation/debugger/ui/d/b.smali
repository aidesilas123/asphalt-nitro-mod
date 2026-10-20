###### Class com.applovin.impl.mediation.debugger.ui.d.b (com.applovin.impl.mediation.debugger.ui.d.b)
.class public Lcom/applovin/impl/mediation/debugger/ui/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public asq:Landroid/widget/TextView;

.field public asr:Landroid/widget/TextView;

.field public ass:Landroid/widget/ImageView;

.field private ast:Lcom/applovin/impl/mediation/debugger/ui/d/c;

.field public imageView:Landroid/widget/ImageView;

.field private oX:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .registers 7

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ast:Lcom/applovin/impl/mediation/debugger/ui/d/c;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wU()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wG()Landroid/text/SpannedString;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wG()Landroid/text/SpannedString;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->vP()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wH()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_54

    :cond_4f
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wB()I

    move-result v0

    if-lez v0, :cond_76

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wB()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wV()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7b

    :cond_76
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ass:Landroid/widget/ImageView;

    if-eqz v0, :cond_a2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->tO()I

    move-result v0

    if-lez v0, :cond_9d

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ass:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->tO()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ass:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->tP()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ass:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a2

    :cond_9d
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ass:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method public fx(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->oX:I

    return-void
.end method

.method public il()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->oX:I

    return v0
.end method

.method public wR()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ast:Lcom/applovin/impl/mediation/debugger/ui/d/c;

    return-object v0
.end method
