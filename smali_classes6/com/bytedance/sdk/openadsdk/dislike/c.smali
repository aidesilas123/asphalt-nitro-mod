###### Class com.bytedance.sdk.openadsdk.dislike.c (com.bytedance.sdk.openadsdk.dislike.c)
.class public Lcom/bytedance/sdk/openadsdk/dislike/c;
.super Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.source "TTDislikeDialogDefault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/c$a;,
        Lcom/bytedance/sdk/openadsdk/dislike/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/view/View;

.field private e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tt_dislikeDialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    return-object p0
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x32

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_16
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    sget p1, Lcom/bytedance/sdk/openadsdk/utils/i;->bk:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    sget p1, Lcom/bytedance/sdk/openadsdk/utils/i;->bn:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    sget p1, Lcom/bytedance/sdk/openadsdk/utils/i;->bl:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/i;->bm:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/i;->by:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dislike_header_tv_back"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dislike_header_tv_title"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_56

    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/c$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_56
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/i;->bo:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setClosedListenerKey(Ljava/lang/String;)V

    sget p1, Lcom/bytedance/sdk/openadsdk/utils/i;->bp:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$6;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setClosedListenerKey(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    if-eqz p1, :cond_1d

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_26

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_2d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_2d
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/c;Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void
.end method

.method private b()V
    .registers 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->j:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->j:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a()V

    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_26
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/dislike/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->j:Ljava/util/List;

    if-eqz v1, :cond_15

    if-nez p1, :cond_b

    goto :goto_15

    :cond_b
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->j:Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->c(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public getLayoutView()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTTDislikeListViewIds()[I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/i;->bo:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/i;->bp:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->onCreate(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_1f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->b()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->j:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :catchall_1f
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show()V
    .registers 2

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    const-string v0, "dislike bad token"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    :goto_c
    return-void
.end method
