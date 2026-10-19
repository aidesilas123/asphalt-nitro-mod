###### Class com.fyber.inneractive.sdk.player.controller.v (com.fyber.inneractive.sdk.player.controller.v)
.class public Lcom/fyber/inneractive/sdk/player/controller/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/controller/v$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/fyber/inneractive/sdk/player/controller/v$c;

.field public final c:Landroid/app/Dialog;

.field public final d:Lcom/fyber/inneractive/sdk/config/global/features/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/config/global/features/b;Lcom/fyber/inneractive/sdk/player/controller/v$c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->d:Lcom/fyber/inneractive/sdk/config/global/features/b;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->b:Lcom/fyber/inneractive/sdk/player/controller/v$c;

    new-instance p2, Landroid/app/Dialog;

    invoke-direct {p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/v;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    sget v1, Lcom/fyber/inneractive/sdk/R$layout;->skip_rewarded_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    sget v1, Lcom/fyber/inneractive/sdk/R$id;->keep_watching_button:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    sget v2, Lcom/fyber/inneractive/sdk/R$id;->close_button:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    sget v3, Lcom/fyber/inneractive/sdk/R$id;->skip_dialog_title_textview:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    sget v4, Lcom/fyber/inneractive/sdk/R$id;->skip_dialog_sub_title_textview:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->a:Landroid/content/Context;

    sget v5, Lcom/fyber/inneractive/sdk/R$string;->skip_rewarded_dialog_keep_watching:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->a:Landroid/content/Context;

    sget v6, Lcom/fyber/inneractive/sdk/R$string;->skip_rewarded_dialog_close_button:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->a:Landroid/content/Context;

    sget v7, Lcom/fyber/inneractive/sdk/R$string;->skip_rewarded_dialog_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->a:Landroid/content/Context;

    sget v8, Lcom/fyber/inneractive/sdk/R$string;->skip_rewarded_dialog_sub_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->d:Lcom/fyber/inneractive/sdk/config/global/features/b;

    if-eqz v8, :cond_d7

    const-string v9, "skip_reward_dialog_keep_watching_button"

    const-string v10, "KEEP WATCHING"

    invoke-virtual {v8, v9, v10}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6f

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_6f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_76

    goto :goto_77

    :cond_76
    move-object v4, v10

    :goto_77
    iget-object v8, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->d:Lcom/fyber/inneractive/sdk/config/global/features/b;

    const-string v9, "skip_reward_dialog_close_button"

    const-string v10, "CLOSE"

    invoke-virtual {v8, v9, v10}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8f

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_8f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_96

    goto :goto_97

    :cond_96
    move-object v5, v10

    :goto_97
    iget-object v8, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->d:Lcom/fyber/inneractive/sdk/config/global/features/b;

    const-string v9, "skip_reward_dialog_title"

    const-string v10, "Close Video?"

    invoke-virtual {v8, v9, v10}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_af

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_af
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b6

    goto :goto_b7

    :cond_b6
    move-object v6, v10

    :goto_b7
    iget-object v8, p0, Lcom/fyber/inneractive/sdk/player/controller/v;->d:Lcom/fyber/inneractive/sdk/config/global/features/b;

    const-string v9, "skip_reward_dialog_sub_title"

    const-string v10, "Reward will not be received before video completion."

    invoke-virtual {v8, v9, v10}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_cf

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_cf
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d6

    goto :goto_d7

    :cond_d6
    move-object v7, v10

    :cond_d7
    :goto_d7
    const/16 v8, 0xd

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/m0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v8}, Lcom/fyber/inneractive/sdk/util/m0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x14

    invoke-static {v6, v4}, Lcom/fyber/inneractive/sdk/util/m0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x64

    invoke-static {v7, v2}, Lcom/fyber/inneractive/sdk/util/m0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/fyber/inneractive/sdk/player/controller/v$a;

    invoke-direct {v2, p0}, Lcom/fyber/inneractive/sdk/player/controller/v$a;-><init>(Lcom/fyber/inneractive/sdk/player/controller/v;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/fyber/inneractive/sdk/player/controller/v$b;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/player/controller/v$b;-><init>(Lcom/fyber/inneractive/sdk/player/controller/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
