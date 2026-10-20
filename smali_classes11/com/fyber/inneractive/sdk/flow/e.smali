###### Class com.fyber.inneractive.sdk.flow.e (com.fyber.inneractive.sdk.flow.e)
.class public Lcom/fyber/inneractive/sdk/flow/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;
.implements Lcom/fyber/inneractive/sdk/flow/f;


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

.field public final b:Lcom/fyber/inneractive/sdk/response/e;

.field public final c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

.field public d:Landroid/content/Context;

.field public final e:Lcom/fyber/inneractive/sdk/config/global/s;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/config/global/s;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/e;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/flow/e;->b:Lcom/fyber/inneractive/sdk/response/e;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/flow/e;->e:Lcom/fyber/inneractive/sdk/config/global/s;

    new-instance p1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/e;->c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    invoke-virtual {p1, p0}, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;)Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/activities/FyberReportAdActivity;->start(Landroid/content/Context;Lcom/fyber/inneractive/sdk/flow/f;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;)V
    .registers 13

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/e;->c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    iput-object p2, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/flow/e;->e:Lcom/fyber/inneractive/sdk/config/global/s;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fyber/inneractive/sdk/R$layout;->fyber_ad_identifier_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/fyber/inneractive/sdk/R$id;->fyber_identifier_image:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    sget v2, Lcom/fyber/inneractive/sdk/R$id;->fyber_identifier_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz p2, :cond_129

    const-class v4, Lcom/fyber/inneractive/sdk/config/global/features/a;

    invoke-virtual {p2, v4}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/config/global/features/a;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    const/16 v5, 0x37

    const-string v6, "ad_identifier_text_size_w"

    invoke-virtual {p2, v6}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_44

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_44
    const-string v6, "ad_identifier_text_size_h"

    invoke-virtual {p2, v6}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x12

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_55

    :cond_53
    const/16 v6, 0x12

    :goto_55
    invoke-static {v4, v5, v6}, Lcom/fyber/inneractive/sdk/util/l;->a(Landroid/view/View;II)V

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    const-string v5, "ad_identifier_image_size_w"

    invoke-virtual {p2, v5}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_67

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_69

    :cond_67
    const/16 v5, 0x12

    :goto_69
    const-string v6, "ad_identifier_image_size_h"

    invoke-virtual {p2, v6}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_75

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_75
    invoke-static {v4, v5, v7}, Lcom/fyber/inneractive/sdk/util/l;->a(Landroid/view/View;II)V

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    const/16 v5, 0x8

    const-string v6, "ad_identifier_text_size"

    invoke-virtual {p2, v6}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_88

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_88
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_92

    check-cast v4, Landroid/widget/TextView;

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_92
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    const-string v5, "ad_identifier_tint_color"

    const-string v6, "#75DCDCDC"

    invoke-virtual {p2, v5, v6}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_9c
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_b7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b7

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setColorFilter(I)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ad} :catch_ae

    goto :goto_b7

    :catch_ae
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const-string v5, "could not parse color %s"

    invoke-static {v5, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b7
    :goto_b7
    sget-object v4, Lcom/fyber/inneractive/sdk/config/global/features/a;->e:Lcom/fyber/inneractive/sdk/config/global/features/a$a;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/config/global/features/a$a;->mKey:Ljava/lang/String;

    const-string v5, "identifier_click_action"

    invoke-virtual {p2, v5, v4}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/global/features/a$a;->values()[Lcom/fyber/inneractive/sdk/config/global/features/a$a;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_c7
    if-ge v7, v6, :cond_d7

    aget-object v8, v5, v7

    iget-object v9, v8, Lcom/fyber/inneractive/sdk/config/global/features/a$a;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d4

    goto :goto_d9

    :cond_d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_c7

    :cond_d7
    sget-object v8, Lcom/fyber/inneractive/sdk/config/global/features/a$a;->NONE:Lcom/fyber/inneractive/sdk/config/global/features/a$a;

    :goto_d9
    sget-object v4, Lcom/fyber/inneractive/sdk/config/global/features/a$a;->OPEN:Lcom/fyber/inneractive/sdk/config/global/features/a$a;

    invoke-virtual {v8, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_e8

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ed

    :cond_e8
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_ed
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "ad_identifier_text"

    const-string v7, "Ads by DT"

    invoke-virtual {p2, v6, v7}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "ad_identifier_icon_url"

    invoke-virtual {p2, v4, v5}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_129

    new-instance v4, Lcom/fyber/inneractive/sdk/network/h0;

    new-instance v5, Lcom/fyber/inneractive/sdk/ui/a;

    invoke-direct {v5, v0}, Lcom/fyber/inneractive/sdk/ui/a;-><init>(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/fyber/inneractive/sdk/cache/b;

    invoke-direct {v7, p2}, Lcom/fyber/inneractive/sdk/cache/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/fyber/inneractive/sdk/network/h0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;)V

    sget-object p2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2, v4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object p2, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-virtual {v4, p2}, Lcom/fyber/inneractive/sdk/network/f0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    :cond_129
    iget-object p2, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    sget-object v4, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;->TOP_LEFT:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    if-eq p2, v4, :cond_133

    sget-object v4, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;->BOTTOM_LEFT:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    if-ne p2, v4, :cond_134

    :cond_133
    const/4 v3, 0x1

    :cond_134
    if-eqz v3, :cond_140

    iget-object p2, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p2, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_140
    new-instance p2, Lcom/fyber/inneractive/sdk/ui/b;

    invoke-direct {p2, v0}, Lcom/fyber/inneractive/sdk/ui/b;-><init>(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;)V

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p2, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a()V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v1, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_17c

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    sget-object v1, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_178

    const/4 v1, 0x2

    if-eq v0, v1, :cond_175

    const/4 v1, 0x3

    if-eq v0, v1, :cond_172

    const/16 v0, 0x55

    goto :goto_17a

    :cond_172
    const/16 v0, 0x53

    goto :goto_17a

    :cond_175
    const/16 v0, 0x35

    goto :goto_17a

    :cond_178
    const/16 v0, 0x33

    :goto_17a
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_17c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/e;->d:Landroid/content/Context;

    return-void
.end method
