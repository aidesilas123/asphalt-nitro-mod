###### Class com.applovin.impl.mediation.debugger.ui.a.e (com.applovin.impl.mediation.debugger.ui.a.e)
.class public Lcom/applovin/impl/mediation/debugger/ui/a/e;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private ahM:Landroid/app/Activity;

.field private ahP:Landroid/widget/RelativeLayout;

.field private aqG:Landroid/view/ViewGroup;

.field private aqH:Lcom/applovin/sdk/AppLovinSdkUtils$Size;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/applovin/sdk/AppLovinSdkUtils$Size;Landroid/app/Activity;)V
    .registers 5

    const v0, 0x1030010

    invoke-direct {p0, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->aqG:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->aqH:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahM:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/mediation/debugger/ui/a/e;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/e;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/mediation/debugger/ui/a/e;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/e;->o(Landroid/view/View;)V

    return-void
.end method

.method private synthetic o(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/e;->dismiss()V

    return-void
.end method

.method private synthetic p(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/e;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahP:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->aqG:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahM:Landroid/app/Activity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->aqH:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahM:Landroid/app/Activity;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->aqH:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->aqG:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahM:Landroid/app/Activity;

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance p1, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahM:Landroid/app/Activity;

    invoke-direct {p1, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahM:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/a/q;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/a/q;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahM:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahP:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahP:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahP:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->aqG:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahP:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/a/p;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/debugger/ui/a/p;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/e;->ahP:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

###### Class com.applovin.impl.mediation.debugger.ui.a.p (com.applovin.impl.mediation.debugger.ui.a.p)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/a/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/a/e;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/p;->a:Lcom/applovin/impl/mediation/debugger/ui/a/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/p;->a:Lcom/applovin/impl/mediation/debugger/ui/a/e;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/e;->a(Lcom/applovin/impl/mediation/debugger/ui/a/e;Landroid/view/View;)V

    return-void
.end method

###### Class com.applovin.impl.mediation.debugger.ui.a.q (com.applovin.impl.mediation.debugger.ui.a.q)
.class public final synthetic Lcom/applovin/impl/mediation/debugger/ui/a/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/a/e;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/q;->a:Lcom/applovin/impl/mediation/debugger/ui/a/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/q;->a:Lcom/applovin/impl/mediation/debugger/ui/a/e;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/e;->b(Lcom/applovin/impl/mediation/debugger/ui/a/e;Landroid/view/View;)V

    return-void
.end method
