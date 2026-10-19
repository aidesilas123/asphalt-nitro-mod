###### Class com.mbridge.msdk.foundation.c.a.a (com.mbridge.msdk.foundation.c.a.a)
.class public final Lcom/mbridge/msdk/foundation/c/a/a;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/c/a/a$a;
    }
.end annotation


# static fields
.field private static B:Ljava/lang/String; = null

.field private static u:I = -0x1


# instance fields
.field private A:Lcom/mbridge/msdk/widget/dialog/a;

.field private a:Ljava/lang/String;

.field private b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private c:Lcom/mbridge/msdk/widget/FeedBackButton;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Lorg/json/JSONArray;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:F

.field private t:I

.field private v:I

.field private w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/c/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->g:I

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->h:I

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->i:I

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->j:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->k:F

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->m:I

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->n:I

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->o:I

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->s:F

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->t:I

    sget v1, Lcom/mbridge/msdk/foundation/c/a/a;->u:I

    iput v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->v:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->y:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/c/a/a$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/c/a/a$1;-><init>(Lcom/mbridge/msdk/foundation/c/a/a;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->A:Lcom/mbridge/msdk/widget/dialog/a;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    if-nez p1, :cond_51

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    :cond_51
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->i()V

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->l()V

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->j()V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/c/e$b;)Lcom/mbridge/msdk/widget/FeedbackRadioGroup;
    .registers 3

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/e$b;->f()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_20

    if-eqz v0, :cond_20

    new-instance p1, Lcom/mbridge/msdk/widget/FeedbackRadioGroup;

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/widget/FeedbackRadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_15

    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/af;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/click/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/af;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/click/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private a(Landroid/widget/RadioButton;)V
    .registers 3

    if-eqz p1, :cond_a

    new-instance v0, Lcom/mbridge/msdk/foundation/c/a/a$3;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/c/a/a$3;-><init>(Lcom/mbridge/msdk/foundation/c/a/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 7

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/c/b;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    :cond_21
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/c/a/a$a;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/c/a/a$a;->c()V

    goto :goto_29

    :cond_3b
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/c/a/a;->a(Landroid/content/Context;)V

    const-string p0, ""

    sput-object p0, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/mbridge/msdk/widget/FeedbackRadioGroup;Lcom/mbridge/msdk/c/e$b;)V
    .registers 13

    invoke-virtual {p2}, Lcom/mbridge/msdk/c/e$b;->f()Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_84

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_84

    if-eqz v0, :cond_84

    const-string v1, "mbridge_cm_feedback_choice_btn_bg"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mbridge_cm_feedback_rb_text_color_color_list"

    const-string v3, "color"

    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/tools/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_35

    :try_start_2c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v1

    const/4 v5, 0x0

    :goto_44
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_84

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/widget/RadioButton;

    invoke-direct {v7, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_5c

    invoke-virtual {v7, v3}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_5c
    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_64

    invoke-virtual {v7, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_64
    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    invoke-virtual {v7, v2, v4, v2, v4}, Landroid/widget/RadioButton;->setPadding(IIII)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v6, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    div-int/lit8 v8, v1, 0x4

    invoke-virtual {v6, v1, v8, v1, v8}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    invoke-direct {p0, v7}, Lcom/mbridge/msdk/foundation/c/a/a;->a(Landroid/widget/RadioButton;)V

    invoke-virtual {p1, v7, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_84
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 7

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/c/b;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/c/a/a$a;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/c/a/a$a;->b()V

    goto :goto_17

    :cond_29
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    :try_start_31
    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/c/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "mbridge_cm_feedback_notice_layout"

    const-string v3, "layout"

    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/tools/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/Dialog;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->z:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->z:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/c/a/a;->z:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/c/a/a;->z:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Lcom/mbridge/msdk/foundation/c/a/a$4;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/c/a/a$4;-><init>(Lcom/mbridge/msdk/foundation/c/a/a;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_93
    :goto_93
    const-string p0, ""

    sput-object p0, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 7

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/c/b;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    if-eqz p0, :cond_29

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/c/a/a$a;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/c/a/a$a;->c()V

    goto :goto_17

    :cond_29
    const-string p0, ""

    sput-object p0, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/foundation/c/a/a;)Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/foundation/c/a/a;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->z:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->A:Lcom/mbridge/msdk/widget/dialog/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mbridge/msdk/foundation/c/a/a$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/c/a/a$2;-><init>(Lcom/mbridge/msdk/foundation/c/a/a;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->A:Lcom/mbridge/msdk/widget/dialog/a;

    :cond_b
    return-void
.end method

.method private j()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/c/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/f;->b()Lcom/mbridge/msdk/c/e;

    move-result-object v0

    :cond_2c
    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->au()Lcom/mbridge/msdk/c/e$b;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string v0, ""

    const-string v1, "feedback fbk is null"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3a
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->i()V

    new-instance v1, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/c/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/c/a/a;->A:Lcom/mbridge/msdk/widget/dialog/a;

    invoke-direct {v1, v2, v3}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/a;)V

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/c/a/a;->a(Lcom/mbridge/msdk/c/e$b;)Lcom/mbridge/msdk/widget/FeedbackRadioGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e$b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setCancelText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setConfirmText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e$b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setPrivacyText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e$b;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setContent(Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    sget-object v3, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    const/4 v3, 0x1

    goto :goto_96

    :cond_95
    const/4 v3, 0x0

    :goto_96
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setCancelButtonClickable(Z)V

    invoke-direct {p0, v1, v0}, Lcom/mbridge/msdk/foundation/c/a/a;->a(Lcom/mbridge/msdk/widget/FeedbackRadioGroup;Lcom/mbridge/msdk/c/e$b;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9d

    goto :goto_a1

    :catch_9d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a1
    :goto_a1
    return-void
.end method

.method private k()V
    .registers 8

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_f4

    iget v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->g:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_d

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    :cond_d
    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->h:I

    if-le v0, v2, :cond_17

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setY(F)V

    :cond_17
    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->s:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_33

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->s:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_33
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->i:I

    if-lez v4, :cond_48

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setWidth(I)V

    if-eqz v0, :cond_48

    iget v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->i:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_48
    iget v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->j:I

    if-lez v4, :cond_57

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setHeight(I)V

    if-eqz v0, :cond_57

    iget v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->j:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_57
    if-eqz v0, :cond_5e

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->q:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_76
    :goto_76
    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->k:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_81

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_81
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->l:Lorg/json/JSONArray;

    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_c7

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->l:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->l:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->l:Lorg/json/JSONArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v0, v4}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->l:Lorg/json/JSONArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v0, v5}, Lcom/mbridge/msdk/foundation/tools/af;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_c7
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->t:I

    if-lez v1, :cond_d4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_d4
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e6

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_ef

    :cond_e6
    sget-object v1, Lcom/mbridge/msdk/widget/FeedBackButton;->FEEDBACK_BTN_BACKGROUND_COLOR_STR:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_ef
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_f4
    return-void
.end method

.method private l()V
    .registers 4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2b

    :try_start_a
    new-instance v1, Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/widget/FeedBackButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->v:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    new-instance v1, Lcom/mbridge/msdk/foundation/c/a/a$5;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/foundation/c/a/a$5;-><init>(Lcom/mbridge/msdk/foundation/c/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/c/b;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/c/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v1, v0, :cond_2c

    :cond_29
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->j()V

    :cond_2c
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_3c
    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v1, v2, v0, v3}, Lcom/mbridge/msdk/foundation/c/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_4d

    const/4 v3, 0x2

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x3

    :goto_4e
    if-ne v3, v2, :cond_60

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    sget-object v8, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    iget-object v9, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/mbridge/msdk/foundation/c/b;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_60
    invoke-static {}, Lcom/mbridge/msdk/foundation/c/b;->a()Lcom/mbridge/msdk/foundation/c/b;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    sget-object v8, Lcom/mbridge/msdk/foundation/c/a/a;->B:Ljava/lang/String;

    iget-object v9, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/mbridge/msdk/foundation/c/b;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :goto_6f
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    if-eqz v2, :cond_89

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_77
    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/c/a/a$a;

    if-eqz v4, :cond_77

    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/foundation/c/a/a$a;->a(I)V

    goto :goto_77

    :cond_89
    if-nez v1, :cond_93

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/c/a/a;->a(Landroid/content/Context;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_93
    :goto_93
    return-void
.end method

.method public final a(I)V
    .registers 3

    iput p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->v:I

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public final a(IIIIIFLjava/lang/String;Ljava/lang/String;FLorg/json/JSONArray;)V
    .registers 12

    const/4 v0, -0x1

    if-le p1, v0, :cond_5

    iput p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->g:I

    :cond_5
    if-le p2, v0, :cond_9

    iput p2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->h:I

    :cond_9
    if-le p3, v0, :cond_d

    iput p3, p0, Lcom/mbridge/msdk/foundation/c/a/a;->i:I

    :cond_d
    if-le p4, v0, :cond_11

    iput p4, p0, Lcom/mbridge/msdk/foundation/c/a/a;->j:I

    :cond_11
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p9, p1

    if-lez p1, :cond_19

    iput p9, p0, Lcom/mbridge/msdk/foundation/c/a/a;->k:F

    :cond_19
    if-eqz p10, :cond_1d

    iput-object p10, p0, Lcom/mbridge/msdk/foundation/c/a/a;->l:Lorg/json/JSONArray;

    :cond_1d
    iput-object p7, p0, Lcom/mbridge/msdk/foundation/c/a/a;->q:Ljava/lang/String;

    iput-object p8, p0, Lcom/mbridge/msdk/foundation/c/a/a;->r:Ljava/lang/String;

    iput p6, p0, Lcom/mbridge/msdk/foundation/c/a/a;->s:F

    iput p5, p0, Lcom/mbridge/msdk/foundation/c/a/a;->t:I

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->k()V

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/c/a/a$a;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/widget/FeedBackButton;)V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    if-eqz p1, :cond_3e

    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->s:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->s:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->v:I

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->k()V

    :cond_36
    new-instance v0, Lcom/mbridge/msdk/foundation/c/a/a$6;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/c/a/a$6;-><init>(Lcom/mbridge/msdk/foundation/c/a/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3e
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_f
    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->d:I

    return-void
.end method

.method public final c()Lcom/mbridge/msdk/widget/FeedBackButton;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/c/a/a;->l()V

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->e:I

    return-void
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setListener(Lcom/mbridge/msdk/widget/dialog/a;)V

    :cond_2a
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->w:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->x:Ljava/util/List;

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->c:Lcom/mbridge/msdk/widget/FeedBackButton;

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/c/a/a;->A:Lcom/mbridge/msdk/widget/dialog/a;

    return-void
.end method

.method public final e()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->d:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/c/a/a;->e:I

    return v0
.end method

###### Class com.mbridge.msdk.foundation.c.a.a.AnonymousClass1 (com.mbridge.msdk.foundation.c.a.a$1)
.class final Lcom/mbridge/msdk/foundation/c/a/a$1;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Lcom/mbridge/msdk/widget/dialog/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/c/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$1;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$1;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->a(Lcom/mbridge/msdk/foundation/c/a/a;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$1;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->b(Lcom/mbridge/msdk/foundation/c/a/a;)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$1;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->c(Lcom/mbridge/msdk/foundation/c/a/a;)V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.c.a.a.AnonymousClass2 (com.mbridge.msdk.foundation.c.a.a$2)
.class final Lcom/mbridge/msdk/foundation/c/a/a$2;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Lcom/mbridge/msdk/widget/dialog/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/c/a/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/c/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$2;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$2;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->a(Lcom/mbridge/msdk/foundation/c/a/a;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$2;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->b(Lcom/mbridge/msdk/foundation/c/a/a;)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$2;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->c(Lcom/mbridge/msdk/foundation/c/a/a;)V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.c.a.a.AnonymousClass3 (com.mbridge.msdk.foundation.c.a.a$3)
.class final Lcom/mbridge/msdk/foundation/c/a/a$3;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/c/a/a;->a(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/c/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$3;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$3;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/c/a/a;->d(Lcom/mbridge/msdk/foundation/c/a/a;)Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    move-result-object p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$3;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/c/a/a;->d(Lcom/mbridge/msdk/foundation/c/a/a;)Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/a/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setCancelButtonClickable(Z)V

    :cond_26
    return-void
.end method

###### Class com.mbridge.msdk.foundation.c.a.a.AnonymousClass4 (com.mbridge.msdk.foundation.c.a.a$4)
.class final Lcom/mbridge/msdk/foundation/c/a/a$4;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/c/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->e(Lcom/mbridge/msdk/foundation/c/a/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->e(Lcom/mbridge/msdk/foundation/c/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$4;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/c/a/a;->e(Lcom/mbridge/msdk/foundation/c/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    return-void
.end method

###### Class com.mbridge.msdk.foundation.c.a.a.AnonymousClass5 (com.mbridge.msdk.foundation.c.a.a$5)
.class final Lcom/mbridge/msdk/foundation/c/a/a$5;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/c/a/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/c/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$5;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$5;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/c/a/a;->a()V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.c.a.a.AnonymousClass6 (com.mbridge.msdk.foundation.c.a.a$6)
.class final Lcom/mbridge/msdk/foundation/c/a/a$6;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/c/a/a;->a(Lcom/mbridge/msdk/widget/FeedBackButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/c/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$6;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$6;->a:Lcom/mbridge/msdk/foundation/c/a/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/c/a/a;->a()V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.c.a.a.C0399a (com.mbridge.msdk.foundation.c.a.a$a)
.class public final Lcom/mbridge/msdk/foundation/c/a/a$a;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Lcom/mbridge/msdk/widget/dialog/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/c/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/c/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/c/a;->b()V

    :cond_7
    return-void
.end method

.method public final a(I)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mbridge/msdk/foundation/c/b;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_d

    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/c/a;->a()V

    :cond_d
    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/c/b;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/a/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/c/a;->a(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/c/b;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/c/a;->b()V

    :cond_a
    return-void
.end method
