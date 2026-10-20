###### Class com.fyber.inneractive.sdk.player.controller.n (com.fyber.inneractive.sdk.player.controller.n)
.class public abstract Lcom/fyber/inneractive/sdk/player/controller/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/controller/b;
.implements Lcom/fyber/inneractive/sdk/player/controller/g$f;
.implements Lcom/fyber/inneractive/sdk/player/controller/g$e;
.implements Lcom/fyber/inneractive/sdk/player/ui/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/controller/n$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerT::Lcom/fyber/inneractive/sdk/player/controller/w;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/player/controller/b<",
        "T",
        "ListenerT;",
        ">;",
        "Lcom/fyber/inneractive/sdk/player/controller/g$f;",
        "Lcom/fyber/inneractive/sdk/player/controller/g$e;",
        "Lcom/fyber/inneractive/sdk/player/ui/i;"
    }
.end annotation


# instance fields
.field public A:Lcom/fyber/inneractive/sdk/config/enums/Skip;

.field public B:Z

.field public a:Lcom/fyber/inneractive/sdk/player/c;

.field public b:Lcom/fyber/inneractive/sdk/config/b0;

.field public c:Lcom/fyber/inneractive/sdk/config/global/s;

.field public d:Lcom/fyber/inneractive/sdk/player/ui/l;

.field public e:Lcom/fyber/inneractive/sdk/player/controller/g$g;

.field public f:I

.field public g:Lcom/fyber/inneractive/sdk/player/controller/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListenerT;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:F

.field public j:Ljava/lang/Runnable;

.field public k:Z

.field public l:Z

.field public m:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public n:Z

.field public o:Z

.field public p:Landroid/graphics/Bitmap;

.field public q:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/fyber/inneractive/sdk/ignite/k;

.field public x:Lcom/fyber/inneractive/sdk/player/ui/f;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/c;Lcom/fyber/inneractive/sdk/player/ui/l;Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;ZLcom/fyber/inneractive/sdk/config/enums/Skip;Ljava/lang/String;Z)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    const v1, -0x42333333    # -0.1f

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->i:F

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->l:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->q:Landroid/os/AsyncTask;

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->s:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->t:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->u:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->v:Z

    sget-object v2, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->w:Lcom/fyber/inneractive/sdk/ignite/k;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->A:Lcom/fyber/inneractive/sdk/config/enums/Skip;

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->B:Z

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->A:Lcom/fyber/inneractive/sdk/config/enums/Skip;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iput-boolean p5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->n:Z

    iput-object p7, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->y:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->z:Z

    invoke-virtual {p2, p0}, Lcom/fyber/inneractive/sdk/player/ui/d;->setListener(Lcom/fyber/inneractive/sdk/player/ui/i;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->i()V

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/fyber/inneractive/sdk/player/controller/n$b;

    invoke-direct {p3, p0}, Lcom/fyber/inneractive/sdk/player/controller/n$b;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/c;Lcom/fyber/inneractive/sdk/player/ui/l;Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;ZLjava/lang/String;Z)V
    .registers 17

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/fyber/inneractive/sdk/player/controller/n;-><init>(Lcom/fyber/inneractive/sdk/player/c;Lcom/fyber/inneractive/sdk/player/ui/l;Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;ZLcom/fyber/inneractive/sdk/config/enums/Skip;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/controller/n;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->c()Lcom/fyber/inneractive/sdk/flow/vast/e;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->c()Lcom/fyber/inneractive/sdk/flow/vast/e;

    move-result-object p0

    iget-boolean p0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->c:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public A()V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/ui/c;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/player/ui/c;-><init>()V

    iput-boolean v1, v2, Lcom/fyber/inneractive/sdk/player/ui/c;->b:Z

    new-instance v3, Lcom/fyber/inneractive/sdk/player/ui/b;

    invoke-direct {v3, v2}, Lcom/fyber/inneractive/sdk/player/ui/b;-><init>(Lcom/fyber/inneractive/sdk/player/ui/c;)V

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Lcom/fyber/inneractive/sdk/player/ui/b;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->j()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v2, 0x1

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->B()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->d()I

    move-result v0

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    move-object v4, v3

    check-cast v4, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/e;->y:Lcom/fyber/inneractive/sdk/config/b0;

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/c;->a(Lcom/fyber/inneractive/sdk/player/c;)I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/fyber/inneractive/sdk/player/c;->a(ILcom/fyber/inneractive/sdk/config/b0;I)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    if-gtz v0, :cond_54

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->n()V

    goto :goto_7c

    :cond_54
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_6c

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->d()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    if-lt v3, v0, :cond_6c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    goto :goto_7c

    :cond_6c
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->s:Z

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(I)V

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->s:Z

    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v0, :cond_89

    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->k:Z

    if-nez v3, :cond_89

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->k:Z

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/controller/w;->l()V

    :cond_89
    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->o:Z

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->t:Z

    return-void
.end method

.method public abstract B()Z
.end method

.method public C()V
    .registers 8

    const-class v0, Lcom/fyber/inneractive/sdk/config/global/features/r;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/features/r;

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    const/4 v3, 0x1

    if-eqz v1, :cond_19

    const-string v4, "show_cta"

    invoke-virtual {v1, v4, v3}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v4, :cond_24

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/controller/w;->q()Lcom/fyber/inneractive/sdk/ignite/k;

    move-result-object v4

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->w:Lcom/fyber/inneractive/sdk/ignite/k;

    :cond_24
    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->w:Lcom/fyber/inneractive/sdk/ignite/k;

    sget-object v5, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eq v4, v5, :cond_2b

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->k:Landroid/widget/TextView;

    if-eqz v5, :cond_b6

    const/4 v5, 0x0

    if-eqz v3, :cond_4c

    iget-object v6, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->K:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v6, :cond_4c

    invoke-virtual {v6, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v6

    if-eqz v6, :cond_4c

    iget-object v6, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->K:Lcom/fyber/inneractive/sdk/config/global/s;

    invoke-virtual {v6, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/config/global/features/r;->d()Z

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    iget-object v6, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->k:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->K:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v0, :cond_5f

    const-class v6, Lcom/fyber/inneractive/sdk/config/global/features/c;

    invoke-virtual {v0, v6}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/c;

    goto :goto_60

    :cond_5f
    move-object v0, v2

    :goto_60
    if-eqz v0, :cond_73

    sget-object v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->p:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/fyber/inneractive/sdk/config/global/features/c;->e(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/global/features/c;->e:Lcom/fyber/inneractive/sdk/model/vast/a;

    if-eqz v0, :cond_73

    iget-boolean v6, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->d:Z

    if-eqz v6, :cond_73

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->a:Ljava/lang/String;

    :cond_73
    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ignite/c;->d()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/ignite/k;->e()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->k:Landroid/widget/TextView;

    sget v2, Lcom/fyber/inneractive/sdk/R$string;->ia_video_instant_install_text:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9e

    :cond_8b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e

    :cond_97
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->k:Landroid/widget/TextView;

    sget v2, Lcom/fyber/inneractive/sdk/R$string;->ia_video_install_now_text:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_9e
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->k:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ad
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/l;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_b2

    goto :goto_b3

    :cond_b2
    const/4 v5, 0x4

    :goto_b3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b6
    return-void
.end method

.method public D()V
    .registers 9

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_12
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->t:Z

    if-eqz v0, :cond_1f

    :cond_16
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->h:Lcom/fyber/inneractive/sdk/measurement/d;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/measurement/d;->a()V

    :cond_1f
    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const-string v2, "endcard"

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/g;

    move-result-object v1

    const-string v2, "dsos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/g;->a(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v4, 0x1

    if-eqz v2, :cond_47

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v2, :cond_47

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v5, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x1

    goto :goto_48

    :cond_47
    const/4 v2, 0x0

    :goto_48
    if-nez v2, :cond_57

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->t:Z

    if-eqz v2, :cond_50

    if-eqz v1, :cond_57

    :cond_50
    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->u:Z

    if-eqz v2, :cond_55

    goto :goto_57

    :cond_55
    const/4 v2, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v2, 0x1

    :goto_58
    if-eqz v2, :cond_2a7

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/c;->b()Landroid/view/View;

    move-result-object v1

    goto :goto_65

    :cond_64
    move-object v1, v2

    :goto_65
    if-eqz v1, :cond_69

    const/4 v5, 0x1

    goto :goto_6a

    :cond_69
    const/4 v5, 0x0

    :goto_6a
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/ui/l;->d()V

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v6, :cond_7c

    const-class v7, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual {v6, v7}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/config/global/features/r;

    goto :goto_7d

    :cond_7c
    move-object v6, v2

    :goto_7d
    if-eqz v5, :cond_147

    instance-of v0, v1, Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_90

    check-cast v0, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/e;->z:Lcom/fyber/inneractive/sdk/flow/m;

    if-eqz v0, :cond_90

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/m;->m:Lcom/fyber/inneractive/sdk/player/controller/c;

    goto :goto_91

    :cond_90
    move-object v0, v2

    :goto_91
    if-eqz v0, :cond_b2

    new-instance v5, Lcom/fyber/inneractive/sdk/player/controller/s;

    invoke-direct {v5, p0}, Lcom/fyber/inneractive/sdk/player/controller/s;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz v7, :cond_9f

    invoke-virtual {v7, v5}, Lcom/fyber/inneractive/sdk/web/d;->setListener(Lcom/fyber/inneractive/sdk/web/d0;)V

    :cond_9f
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz v5, :cond_ab

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/player/controller/c;->c:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-static {v7}, Lcom/fyber/inneractive/sdk/util/y;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;)Z

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/web/c0;->n()V

    :cond_ab
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz v5, :cond_b2

    invoke-virtual {v5, v4}, Lcom/fyber/inneractive/sdk/web/d;->a(Z)V

    :cond_b2
    if-eqz v0, :cond_c4

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/c0;->o()Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v0, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v0, 0x0

    :goto_c1
    if-eqz v0, :cond_c4

    return-void

    :cond_c4
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->l()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->j:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d6

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_d6
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v5, :cond_e6

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/c;->c()Lcom/fyber/inneractive/sdk/model/vast/c;

    move-result-object v5

    goto :goto_e7

    :cond_e6
    move-object v5, v2

    :goto_e7
    new-instance v7, Lcom/fyber/inneractive/sdk/player/ui/c;

    invoke-direct {v7}, Lcom/fyber/inneractive/sdk/player/ui/c;-><init>()V

    iput-boolean v4, v7, Lcom/fyber/inneractive/sdk/player/ui/c;->b:Z

    iput-object v1, v7, Lcom/fyber/inneractive/sdk/player/ui/c;->g:Landroid/view/View;

    if-eqz v5, :cond_f4

    iget-object v2, v5, Lcom/fyber/inneractive/sdk/model/vast/c;->a:Lcom/fyber/inneractive/sdk/model/vast/h;

    :cond_f4
    iput-object v2, v7, Lcom/fyber/inneractive/sdk/player/ui/c;->h:Lcom/fyber/inneractive/sdk/model/vast/h;

    if-eqz v6, :cond_100

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/config/global/features/r;->d()Z

    move-result v2

    if-eqz v2, :cond_100

    const/4 v2, 0x1

    goto :goto_101

    :cond_100
    const/4 v2, 0x0

    :goto_101
    iput-boolean v2, v7, Lcom/fyber/inneractive/sdk/player/ui/c;->c:Z

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->b(Lcom/fyber/inneractive/sdk/config/global/features/r;)Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/config/global/features/r;)I

    move-result v5

    iput-object v2, v7, Lcom/fyber/inneractive/sdk/player/ui/c;->i:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    iput v5, v7, Lcom/fyber/inneractive/sdk/player/ui/c;->j:I

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->d(Lcom/fyber/inneractive/sdk/config/global/features/r;)Z

    move-result v2

    if-eqz v2, :cond_129

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->c()Lcom/fyber/inneractive/sdk/flow/vast/e;

    move-result-object v2

    if-eqz v2, :cond_125

    iget-boolean v5, v2, Lcom/fyber/inneractive/sdk/flow/vast/a;->a:Z

    if-eqz v5, :cond_125

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    if-eqz v2, :cond_125

    const/4 v2, 0x1

    goto :goto_126

    :cond_125
    const/4 v2, 0x0

    :goto_126
    if-nez v2, :cond_129

    const/4 v3, 0x1

    :cond_129
    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Lcom/fyber/inneractive/sdk/config/global/features/r;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v3, :cond_135

    iput-object v2, v7, Lcom/fyber/inneractive/sdk/player/ui/c;->f:Ljava/lang/Integer;

    :cond_135
    new-instance v2, Lcom/fyber/inneractive/sdk/player/ui/b;

    invoke-direct {v2, v7}, Lcom/fyber/inneractive/sdk/player/ui/b;-><init>(Lcom/fyber/inneractive/sdk/player/ui/c;)V

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Lcom/fyber/inneractive/sdk/player/ui/b;)V

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/h;->Other:Lcom/fyber/inneractive/sdk/model/vast/h;

    invoke-virtual {p0, v0, v4}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/model/vast/h;I)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_2bd

    :cond_147
    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->z:Z

    if-nez v1, :cond_154

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v1, :cond_154

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/controller/w;->k()V

    goto/16 :goto_2bd

    :cond_154
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    if-eqz v1, :cond_161

    new-instance v1, Lcom/fyber/inneractive/sdk/player/controller/p;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/player/controller/p;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    invoke-virtual {p0, v4, v1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V

    goto :goto_16e

    :cond_161
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v1, :cond_168

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->k:Landroid/graphics/Bitmap;

    goto :goto_169

    :cond_168
    move-object v1, v2

    :goto_169
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p0, v5, v1, v3, v3}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/player/ui/l;Landroid/graphics/Bitmap;ZZ)V

    :goto_16e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->c()Lcom/fyber/inneractive/sdk/flow/vast/e;

    move-result-object v1

    if-eqz v1, :cond_17e

    iget-boolean v5, v1, Lcom/fyber/inneractive/sdk/flow/vast/a;->a:Z

    if-eqz v5, :cond_17e

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    if-eqz v5, :cond_17e

    const/4 v5, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v5, 0x0

    :goto_17f
    if-eqz v5, :cond_1bd

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/flow/vast/e;->g:Lcom/fyber/inneractive/sdk/player/controller/c;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/controller/s;

    invoke-direct {v2, p0}, Lcom/fyber/inneractive/sdk/player/controller/s;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz v0, :cond_18f

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/web/d;->setListener(Lcom/fyber/inneractive/sdk/web/d0;)V

    :cond_18f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/ui/c;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/player/ui/c;-><init>()V

    iput-boolean v4, v2, Lcom/fyber/inneractive/sdk/player/ui/c;->b:Z

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/player/ui/c;->g:Landroid/view/View;

    sget-object v1, Lcom/fyber/inneractive/sdk/model/vast/h;->FMP_End_Card:Lcom/fyber/inneractive/sdk/model/vast/h;

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/player/ui/c;->h:Lcom/fyber/inneractive/sdk/model/vast/h;

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->d(Lcom/fyber/inneractive/sdk/config/global/features/r;)Z

    move-result v3

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Lcom/fyber/inneractive/sdk/config/global/features/r;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v3, :cond_1b0

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/player/ui/c;->f:Ljava/lang/Integer;

    :cond_1b0
    new-instance v3, Lcom/fyber/inneractive/sdk/player/ui/b;

    invoke-direct {v3, v2}, Lcom/fyber/inneractive/sdk/player/ui/b;-><init>(Lcom/fyber/inneractive/sdk/player/ui/c;)V

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Lcom/fyber/inneractive/sdk/player/ui/b;)V

    invoke-virtual {p0, v1, v4}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/model/vast/h;I)V

    goto/16 :goto_2bd

    :cond_1bd
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1, v4}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    new-instance v1, Lcom/fyber/inneractive/sdk/player/ui/c;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/player/ui/c;-><init>()V

    iget-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->z:Z

    iput-boolean v5, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->b:Z

    if-eqz v6, :cond_1da

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/config/global/features/r;->d()Z

    move-result v5

    if-eqz v5, :cond_1da

    const/4 v5, 0x1

    goto :goto_1db

    :cond_1da
    const/4 v5, 0x0

    :goto_1db
    iput-boolean v5, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->c:Z

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->y:Ljava/lang/String;

    if-eqz v5, :cond_1e2

    goto :goto_1ff

    :cond_1e2
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v5, :cond_1fe

    const-class v7, Lcom/fyber/inneractive/sdk/config/global/features/c;

    invoke-virtual {v5, v7}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v5

    check-cast v5, Lcom/fyber/inneractive/sdk/config/global/features/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->p:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/fyber/inneractive/sdk/config/global/features/c;->e(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/fyber/inneractive/sdk/config/global/features/c;->e:Lcom/fyber/inneractive/sdk/model/vast/a;

    if-eqz v0, :cond_1fe

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->d:Z

    if-eqz v5, :cond_1fe

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->a:Ljava/lang/String;

    goto :goto_1ff

    :cond_1fe
    move-object v5, v2

    :goto_1ff
    iput-object v5, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->d(Lcom/fyber/inneractive/sdk/config/global/features/r;)Z

    move-result v0

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Lcom/fyber/inneractive/sdk/config/global/features/r;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v0, :cond_211

    iput-object v5, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->f:Ljava/lang/Integer;

    :cond_211
    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->b(Lcom/fyber/inneractive/sdk/config/global/features/r;)Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/config/global/features/r;)I

    move-result v5

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->i:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    iput v5, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->j:I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v0, :cond_22a

    const-class v5, Lcom/fyber/inneractive/sdk/config/global/features/h;

    invoke-virtual {v0, v5}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/h;

    goto :goto_22b

    :cond_22a
    move-object v0, v2

    :goto_22b
    if-eqz v0, :cond_25a

    const-string v5, "should_show_hand"

    invoke-virtual {v0, v5, v3}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->a:Z

    const-wide v5, 0x3ff4ccccc0000000L    # 1.2999999523162842

    const-string v7, "scale_up_to"

    invoke-virtual {v0, v7}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_246

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :cond_246
    double-to-float v0, v5

    const v5, 0x3fd9999a    # 1.7f

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_255

    const v5, 0x3f8ccccd    # 1.1f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_258

    :cond_255
    const v0, 0x3fa66666    # 1.3f

    :cond_258
    iput v0, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->d:F

    :cond_25a
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_269

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->w:Lcom/fyber/inneractive/sdk/ignite/k;

    invoke-virtual {v0, v5, v6}, Lcom/fyber/inneractive/sdk/player/c;->a(Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/ignite/k;)Z

    move-result v0

    if-eqz v0, :cond_269

    const/4 v3, 0x1

    :cond_269
    iput-boolean v3, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->l:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v0, :cond_278

    const-class v2, Lcom/fyber/inneractive/sdk/config/global/features/n;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/fyber/inneractive/sdk/config/global/features/n;

    :cond_278
    if-eqz v2, :cond_27f

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/config/global/features/n;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_28b

    :cond_27f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/fyber/inneractive/sdk/R$string;->ia_video_app_info_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_28b
    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v0, :cond_297

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/controller/w;->q()Lcom/fyber/inneractive/sdk/ignite/k;

    move-result-object v0

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->k:Lcom/fyber/inneractive/sdk/ignite/k;

    :cond_297
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/ui/b;

    invoke-direct {v2, v1}, Lcom/fyber/inneractive/sdk/player/ui/b;-><init>(Lcom/fyber/inneractive/sdk/player/ui/c;)V

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Lcom/fyber/inneractive/sdk/player/ui/b;)V

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/h;->Default_End_Card:Lcom/fyber/inneractive/sdk/model/vast/h;

    invoke-virtual {p0, v0, v4}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/model/vast/h;I)V

    goto :goto_2bd

    :cond_2a7
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->t:Z

    if-eqz v0, :cond_2b8

    if-eqz v1, :cond_2b8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    goto :goto_2bd

    :cond_2b8
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    :goto_2bd
    return-void
.end method

.method public E()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->setMuteButtonState(Z)V

    :cond_d
    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/config/global/features/r;)I
    .registers 4

    const/16 v0, 0x1f4

    if-eqz p1, :cond_1b

    const-string v1, "endcard_animation_duration"

    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_13

    :cond_11
    const/16 p1, 0x1f4

    :goto_13
    if-lt p1, v0, :cond_1b

    const/16 v1, 0xbb8

    if-le p1, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, p1

    :cond_1b
    :goto_1b
    return v0
.end method

.method public a(I)V
    .registers 11

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_13e

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-nez p1, :cond_a

    goto/16 :goto_13e

    :cond_a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->r()F

    move-result p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->j()Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->i:F

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_41

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_36

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_36

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->t()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/controller/n;->i(Z)V

    goto :goto_41

    :cond_36
    if-nez v3, :cond_41

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->t()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/controller/n;->g(Z)V

    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->E()V

    :cond_44
    iput p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->i:F

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->d()I

    move-result p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->c()I

    move-result v0

    div-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v3, p1, 0x3e8

    sub-int v4, v3, v2

    const/4 v5, 0x0

    if-ltz v4, :cond_6b

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/controller/g;->j()Z

    move-result v6

    if-nez v6, :cond_6c

    if-ne v0, p1, :cond_6c

    :cond_6b
    const/4 v4, 0x0

    :cond_6c
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v7, v6, Lcom/fyber/inneractive/sdk/player/ui/l;->n:Landroid/widget/TextView;

    if-nez v7, :cond_77

    iget-object v7, v6, Lcom/fyber/inneractive/sdk/player/ui/l;->w:Lcom/fyber/inneractive/sdk/ui/IAsmoothProgressBar;

    if-nez v7, :cond_77

    return-void

    :cond_77
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fyber/inneractive/sdk/player/ui/l;->setRemainingTime(Ljava/lang/String;)V

    iget v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    if-ge v6, v3, :cond_bf

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->B()Z

    move-result v6

    if-eqz v6, :cond_b9

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/controller/g;->d()I

    move-result v6

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    move-object v8, v7

    check-cast v8, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/player/e;->y:Lcom/fyber/inneractive/sdk/config/b0;

    invoke-static {v7}, Lcom/fyber/inneractive/sdk/player/c;->a(Lcom/fyber/inneractive/sdk/player/c;)I

    move-result v7

    invoke-static {v6, v8, v7}, Lcom/fyber/inneractive/sdk/player/c;->a(ILcom/fyber/inneractive/sdk/config/b0;I)Z

    move-result v6

    if-eqz v6, :cond_b9

    iget-boolean v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    if-nez v6, :cond_b9

    iget v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    if-ge v2, v6, :cond_ae

    sub-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(I)V

    goto :goto_b3

    :cond_ae
    iput v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->n()V

    :goto_b3
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v5, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    goto :goto_c7

    :cond_b9
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v6, v5}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    goto :goto_c7

    :cond_bf
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v6, v5}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    invoke-virtual {p0, v4}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(I)V

    :goto_c7
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v6, Lcom/fyber/inneractive/sdk/player/enums/b;->Paused:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v5, v6, :cond_137

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v6, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->w:Lcom/fyber/inneractive/sdk/ui/IAsmoothProgressBar;

    if-nez v6, :cond_d8

    goto :goto_117

    :cond_d8
    iget-object v6, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->F:Ljava/lang/Runnable;

    if-eqz v6, :cond_e2

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->F:Ljava/lang/Runnable;

    :cond_e2
    mul-int/lit16 v6, v3, 0x3e8

    iget-object v7, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->w:Lcom/fyber/inneractive/sdk/ui/IAsmoothProgressBar;

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    mul-int/lit16 v4, v4, 0x3e8

    sub-int v4, v6, v4

    add-int/lit16 v7, v4, 0x3e8

    iput v7, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->E:I

    add-int/lit16 v4, v4, 0xc8

    if-lez v7, :cond_117

    if-le v7, v6, :cond_f8

    goto :goto_117

    :cond_f8
    iget v6, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->D:I

    if-ge v4, v6, :cond_104

    if-lez v6, :cond_104

    iget-object v4, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->w:Lcom/fyber/inneractive/sdk/ui/IAsmoothProgressBar;

    invoke-virtual {v4, v7}, Lcom/fyber/inneractive/sdk/ui/IAsmoothProgressBar;->setProgress(I)V

    goto :goto_117

    :cond_104
    iput v4, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->D:I

    iget-object v6, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->w:Lcom/fyber/inneractive/sdk/ui/IAsmoothProgressBar;

    invoke-virtual {v6, v4}, Lcom/fyber/inneractive/sdk/ui/IAsmoothProgressBar;->setProgress(I)V

    new-instance v4, Lcom/fyber/inneractive/sdk/player/ui/n;

    invoke-direct {v4, v5}, Lcom/fyber/inneractive/sdk/player/ui/n;-><init>(Lcom/fyber/inneractive/sdk/player/ui/l;)V

    iput-object v4, v5, Lcom/fyber/inneractive/sdk/player/ui/l;->F:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v4, v6, v7}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_117
    :goto_117
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->q()I

    move-result v4

    if-le v3, v4, :cond_137

    if-le v2, v4, :cond_137

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    if-eqz v2, :cond_137

    check-cast v2, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz v2, :cond_137

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    sget-object v3, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->REWARDED:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne v2, v3, :cond_137

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->n()V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    :cond_137
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v1, :cond_13e

    invoke-interface {v1, p1, v0}, Lcom/fyber/inneractive/sdk/player/controller/w;->onProgress(II)V

    :cond_13e
    :goto_13e
    return-void
.end method

.method public final a(II)V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_3e

    :cond_12
    if-lez p2, :cond_3e

    if-gtz p1, :cond_17

    goto :goto_3e

    :cond_17
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->q:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/n$d;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/controller/n$d;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->q:Landroid/os/AsyncTask;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    sget-object p1, Lcom/fyber/inneractive/sdk/util/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3e
    :goto_3e
    return-void
.end method

.method public a(ILcom/fyber/inneractive/sdk/util/k0;)V
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onClicked called with %d"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_d0

    goto/16 :goto_cf

    :pswitch_14
    sget-object p1, Lcom/fyber/inneractive/sdk/config/f0$b;->APP_INFO:Lcom/fyber/inneractive/sdk/config/f0$b;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/f0$b;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->APP_INFO:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    invoke-virtual {p0, v3, p1, p2}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;Lcom/fyber/inneractive/sdk/util/k0;)Z

    goto/16 :goto_cf

    :pswitch_22
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_cf

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-boolean p2, p2, Lcom/fyber/inneractive/sdk/player/ui/d;->h:Z

    if-nez p2, :cond_cf

    iput-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/c;->j:Z

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/player/controller/n;->h(Z)V

    goto/16 :goto_cf

    :pswitch_33
    sget-object p1, Lcom/fyber/inneractive/sdk/config/f0$b;->COMPANION:Lcom/fyber/inneractive/sdk/config/f0$b;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/f0$b;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->COMPANION:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    invoke-virtual {p0, v0, p1, p2}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;Lcom/fyber/inneractive/sdk/util/k0;)Z

    goto/16 :goto_cf

    :pswitch_41
    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/util/k0;)V

    goto/16 :goto_cf

    :pswitch_46
    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Z)V

    goto/16 :goto_cf

    :pswitch_4b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->w()V

    goto/16 :goto_cf

    :pswitch_50
    sget-object p1, Lcom/fyber/inneractive/sdk/config/f0$b;->COMPANION:Lcom/fyber/inneractive/sdk/config/f0$b;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/f0$b;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x0

    if-eqz p1, :cond_61

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/c;->c()Lcom/fyber/inneractive/sdk/model/vast/c;

    move-result-object p1

    goto :goto_62

    :cond_61
    move-object p1, v1

    :goto_62
    if-eqz p1, :cond_7c

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/model/vast/c;->a:Lcom/fyber/inneractive/sdk/model/vast/h;

    sget-object v4, Lcom/fyber/inneractive/sdk/model/vast/h;->Static:Lcom/fyber/inneractive/sdk/model/vast/h;

    if-ne v2, v4, :cond_7c

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/model/vast/c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v4, :cond_7d

    sget-object v5, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->COMPANION:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    new-array v0, v0, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v6, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CLICK:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v6, v0, v3

    invoke-virtual {v4, p1, v5, v0}, Lcom/fyber/inneractive/sdk/player/c;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    goto :goto_7d

    :cond_7c
    move-object v2, v1

    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->m()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz p1, :cond_cf

    invoke-interface {p1, v2, p2, v1, v3}, Lcom/fyber/inneractive/sdk/player/controller/w;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/web/b$a;Z)Lcom/fyber/inneractive/sdk/util/x$a;

    goto :goto_cf

    :pswitch_88
    sget-object p1, Lcom/fyber/inneractive/sdk/config/f0$b;->CTA_BUTTON:Lcom/fyber/inneractive/sdk/config/f0$b;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/f0$b;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->CTA:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    invoke-virtual {p0, v3, p1, p2}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;Lcom/fyber/inneractive/sdk/util/k0;)Z

    goto :goto_cf

    :pswitch_95
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->y()V

    goto :goto_cf

    :pswitch_99
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->t()Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->i(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_cc

    sget-object p2, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->MUTE:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    new-array v0, v0, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v1, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_UNMUTE:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v1, v0, v3

    check-cast p1, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    invoke-virtual {p1, v1, p2, v0}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    goto :goto_cc

    :cond_b6
    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->g(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_cc

    sget-object p2, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->MUTE:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    new-array v0, v0, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v1, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_MUTE:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v1, v0, v3

    check-cast p1, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    invoke-virtual {p1, v1, p2, v0}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    :cond_cc
    :goto_cc
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->E()V

    :cond_cf
    :goto_cf
    return-void

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_95
        :pswitch_88
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_33
        :pswitch_22
        :pswitch_14
    .end packed-switch
.end method

.method public a(J)V
    .registers 11

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/c;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-object v5, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->L:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_68

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-gtz v7, :cond_3e

    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->z:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {v2, p1, p2}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Landroid/view/View;I)V

    :cond_2e
    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->L:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/fyber/inneractive/sdk/player/ui/m;

    invoke-direct {p2, v2}, Lcom/fyber/inneractive/sdk/player/ui/m;-><init>(Lcom/fyber/inneractive/sdk/player/ui/l;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_57

    :cond_3e
    iput-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->M:Z

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->L:Landroid/animation/ObjectAnimator;

    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->z:Landroid/view/ViewGroup;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_57

    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_57
    :goto_57
    if-eqz v0, :cond_61

    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->y:Landroid/view/View;

    if-eqz p1, :cond_61

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_68

    :cond_61
    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/ui/l;->z:Landroid/view/ViewGroup;

    if-eqz p1, :cond_68

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_68
    :goto_68
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/player/c;->j:Z

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/ui/l;->setLastFrameBitmap(Landroid/graphics/Bitmap;)V

    :cond_20
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/model/vast/h;I)V
    .registers 11

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_db

    check-cast v0, Lcom/fyber/inneractive/sdk/player/e;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "notifyCompanionDisplayed"

    invoke-static {v3, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/fyber/inneractive/sdk/player/e$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_71

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/e;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_db

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/e;->z:Lcom/fyber/inneractive/sdk/flow/m;

    if-eqz p1, :cond_db

    iget-boolean p1, p1, Lcom/fyber/inneractive/sdk/flow/m;->g:Z

    if-nez p1, :cond_db

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/model/vast/b;->h:Lcom/fyber/inneractive/sdk/model/vast/c;

    if-eqz p1, :cond_db

    sget-object p2, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->COMPANION:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    new-array v5, v2, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v6, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CREATIVE_VIEW:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v6, v5, v1

    invoke-virtual {v0, p1, p2, v5}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/e;->z:Lcom/fyber/inneractive/sdk/flow/m;

    iget-boolean p2, p1, Lcom/fyber/inneractive/sdk/flow/m;->g:Z

    if-nez p2, :cond_6d

    new-instance p2, Lcom/fyber/inneractive/sdk/network/s$a;

    sget-object v0, Lcom/fyber/inneractive/sdk/network/r;->VAST_COMPANION_DISPLAYED:Lcom/fyber/inneractive/sdk/network/r;

    iget-object v5, p1, Lcom/fyber/inneractive/sdk/flow/m;->b:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v6, p1, Lcom/fyber/inneractive/sdk/flow/m;->c:Lcom/fyber/inneractive/sdk/response/g;

    iget-object v7, p1, Lcom/fyber/inneractive/sdk/flow/m;->d:Lcom/fyber/inneractive/sdk/config/global/s;

    if-nez v7, :cond_50

    move-object v7, v3

    goto :goto_54

    :cond_50
    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/config/global/s;->c()Lorg/json/JSONArray;

    move-result-object v7

    :goto_54
    invoke-direct {p2, v0, v5, v6, v7}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V

    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "companion_data"

    aput-object v4, v0, v1

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/flow/m;->e:Lcom/fyber/inneractive/sdk/model/vast/b;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/model/vast/b;->h:Lcom/fyber/inneractive/sdk/model/vast/c;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/model/vast/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Lcom/fyber/inneractive/sdk/network/s$a;->a([Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/network/s$a;

    invoke-virtual {p2, v3}, Lcom/fyber/inneractive/sdk/network/s$a;->a(Ljava/lang/String;)V

    :cond_6d
    iput-boolean v2, p1, Lcom/fyber/inneractive/sdk/flow/m;->g:Z

    goto/16 :goto_db

    :cond_71
    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/e;->z:Lcom/fyber/inneractive/sdk/flow/m;

    if-eqz p1, :cond_db

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/flow/m;->l:Lcom/fyber/inneractive/sdk/flow/vast/c;

    if-eqz v0, :cond_db

    iput-boolean v2, v0, Lcom/fyber/inneractive/sdk/flow/vast/a;->c:Z

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/flow/m;->b:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v4, p1, Lcom/fyber/inneractive/sdk/flow/m;->c:Lcom/fyber/inneractive/sdk/response/g;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/m;->d:Lcom/fyber/inneractive/sdk/config/global/s;

    iput p2, v0, Lcom/fyber/inneractive/sdk/flow/vast/a;->d:I

    iget-object p2, v0, Lcom/fyber/inneractive/sdk/flow/vast/e;->g:Lcom/fyber/inneractive/sdk/player/controller/c;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    instance-of v5, p2, Lcom/fyber/inneractive/sdk/web/c;

    if-eqz v5, :cond_94

    check-cast p2, Lcom/fyber/inneractive/sdk/web/c;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/web/c;->N:Lcom/fyber/inneractive/sdk/web/b;

    if-eqz p2, :cond_94

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/web/b;->b:Ljava/lang/String;

    goto :goto_95

    :cond_94
    move-object p2, v3

    :goto_95
    iput-object p2, v0, Lcom/fyber/inneractive/sdk/flow/vast/a;->e:Ljava/lang/String;

    iget-boolean p2, v0, Lcom/fyber/inneractive/sdk/flow/vast/c;->h:Z

    if-nez p2, :cond_db

    new-instance p2, Lcom/fyber/inneractive/sdk/network/s$a;

    sget-object v5, Lcom/fyber/inneractive/sdk/network/r;->FMP_COMPANION_SUCCESSFULLY_SHOWN:Lcom/fyber/inneractive/sdk/network/r;

    if-nez p1, :cond_a3

    move-object p1, v3

    goto :goto_a7

    :cond_a3
    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/config/global/s;->c()Lorg/json/JSONArray;

    move-result-object p1

    :goto_a7
    invoke-direct {p2, v5, v1, v4, p1}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V

    invoke-virtual {v0, p2}, Lcom/fyber/inneractive/sdk/flow/vast/c;->a(Lcom/fyber/inneractive/sdk/network/s$a;)V

    invoke-virtual {p2, v3}, Lcom/fyber/inneractive/sdk/network/s$a;->a(Ljava/lang/String;)V

    iput-boolean v2, v0, Lcom/fyber/inneractive/sdk/flow/vast/c;->h:Z

    goto :goto_db

    :cond_b3
    iget-boolean p1, v0, Lcom/fyber/inneractive/sdk/player/e;->A:Z

    if-nez p1, :cond_db

    new-instance p1, Lcom/fyber/inneractive/sdk/network/s$a;

    sget-object p2, Lcom/fyber/inneractive/sdk/network/r;->VAST_DEFAULT_COMPANION_DISPLAYED:Lcom/fyber/inneractive/sdk/network/r;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/c;->f:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/c;->e:Lcom/fyber/inneractive/sdk/flow/f0;

    if-eqz v4, :cond_c6

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v5, Lcom/fyber/inneractive/sdk/response/g;

    goto :goto_c7

    :cond_c6
    move-object v5, v3

    :goto_c7
    if-eqz v4, :cond_d2

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/flow/q;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v4, :cond_d2

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/config/global/s;->c()Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_d3

    :cond_d2
    move-object v4, v3

    :goto_d3
    invoke-direct {p1, p2, v1, v5, v4}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V

    invoke-virtual {p1, v3}, Lcom/fyber/inneractive/sdk/network/s$a;->a(Ljava/lang/String;)V

    iput-boolean v2, v0, Lcom/fyber/inneractive/sdk/player/e;->A:Z

    :cond_db
    :goto_db
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/controller/c;)V
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/s;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/controller/s;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/web/d;->setListener(Lcom/fyber/inneractive/sdk/web/d0;)V

    :cond_c
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/controller/w;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerT;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/enums/b;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v2, "%sonPlayerStateChanged with %s"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/player/enums/b;Z)V

    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/enums/b;Z)V
    .registers 6

    sget-object v0, Lcom/fyber/inneractive/sdk/player/controller/n$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_8c

    goto/16 :goto_8a

    :pswitch_f
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    if-eqz p1, :cond_8a

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Z)V

    goto/16 :goto_8a

    :pswitch_18
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->z:Z

    if-nez p1, :cond_8a

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->v:Z

    if-nez p1, :cond_8a

    :cond_24
    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->v:Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->v()V

    if-eqz p2, :cond_8a

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz p1, :cond_8a

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/controller/w;->onCompleted()V

    goto :goto_8a

    :pswitch_33
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->x()V

    goto :goto_8a

    :pswitch_37
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    if-eqz p1, :cond_8a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->A()V

    goto :goto_8a

    :pswitch_3f
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->j:Ljava/lang/Runnable;

    if-nez p1, :cond_8a

    if-nez p1, :cond_5a

    new-instance p1, Lcom/fyber/inneractive/sdk/player/controller/o;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/player/controller/o;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->j:Ljava/lang/Runnable;

    :cond_5a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->o()I

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "%s Starting buffering timeout with %d"

    invoke-static {v0, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->j:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8a

    :pswitch_7b
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->D()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->z()V

    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_3f
        :pswitch_37
        :pswitch_33
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/ui/l;Landroid/graphics/Bitmap;ZZ)V
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_b

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "IAVideoUIControllerBase : Unable set bitmap it is null"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    if-nez p1, :cond_15

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "IAVideoUIControllerBase : Unable set last frame"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_15
    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/player/ui/l;->setLastFrameBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_1d

    invoke-virtual {p1, p4}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    :cond_1d
    return-void
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/util/k0;)V
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->x:Lcom/fyber/inneractive/sdk/config/f0;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    if-eqz v1, :cond_15

    check-cast v1, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    const-string v2, "LAST_VAST_CLICKED_TYPE"

    invoke-virtual {v0, v1, v2, p1}, Lcom/fyber/inneractive/sdk/config/f0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public a(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_112

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-nez v0, :cond_f

    goto/16 :goto_112

    :cond_f
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "%sonVisibilityChanged: %s my video view is%s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_c3

    iput-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->f()Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_9a

    :cond_45
    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Error:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Idle:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_95

    :cond_5b
    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Start_in_progress:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq p1, v0, :cond_63

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Playing:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne p1, v0, :cond_66

    :cond_63
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->A()V

    :cond_66
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/c;->p:Z

    if-nez v0, :cond_7e

    move-object v0, p1

    check-cast v0, Lcom/fyber/inneractive/sdk/player/e;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->InvalidOrigin:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    new-array v4, v3, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v5, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CREATIVE_VIEW:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v5, v4, v2

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    invoke-virtual {v0, v2, v1, v4}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    iput-boolean v3, p1, Lcom/fyber/inneractive/sdk/player/c;->p:Z

    :cond_7e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->k()Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->m:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p1, :cond_112

    sget-object p1, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    if-eqz p1, :cond_112

    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/q;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/controller/q;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->m:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/16 :goto_112

    :cond_95
    :goto_95
    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Z)V

    goto/16 :goto_112

    :cond_9a
    :goto_9a
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->v:Z

    if-nez p1, :cond_ae

    iput-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->v:Z

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->B:Z

    if-nez p1, :cond_ae

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->v()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz p1, :cond_ae

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/controller/w;->onCompleted()V

    :cond_ae
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz p1, :cond_112

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    if-eqz v0, :cond_112

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Autoclick resumed"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/util/u0;->b()V

    goto :goto_112

    :cond_c3
    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_10f

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz p1, :cond_10f

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->d:Lcom/fyber/inneractive/sdk/player/controller/g$g;

    if-eqz p1, :cond_10f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->e:Lcom/fyber/inneractive/sdk/player/controller/g$g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10f

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%sonVisibilityChanged pausing video"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->pauseVideo()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq p1, v0, :cond_fd

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz p1, :cond_10f

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/ui/l;->f()Z

    move-result p1

    if-eqz p1, :cond_10f

    :cond_fd
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    if-eqz v0, :cond_10f

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Autoclick paused"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/ui/l;->G:Lcom/fyber/inneractive/sdk/util/u0;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/util/u0;->a()V

    :cond_10f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->l()V

    :cond_112
    :goto_112
    return-void
.end method

.method public a(ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V
    .registers 4

    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/n$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/controller/n$e;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZLcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;Lcom/fyber/inneractive/sdk/util/k0;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->m()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7a

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_7a

    check-cast p1, Lcom/fyber/inneractive/sdk/player/e;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    const/4 v3, 0x0

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/model/vast/b;->b:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object p1, v3

    :goto_1a
    invoke-interface {v0, p1, p3, v3, v1}, Lcom/fyber/inneractive/sdk/player/controller/w;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/web/b$a;Z)Lcom/fyber/inneractive/sdk/util/x$a;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    new-array p3, v1, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CLICK:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v0, p3, v2

    check-cast p1, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    goto :goto_7a

    :cond_2d
    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->VIDEO:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    if-ne p2, p1, :cond_34

    sget-object p1, Lcom/fyber/inneractive/sdk/util/e;->VIDEO_CLICK:Lcom/fyber/inneractive/sdk/util/e;

    goto :goto_3d

    :cond_34
    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->APP_INFO:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    if-ne p2, p1, :cond_3b

    sget-object p1, Lcom/fyber/inneractive/sdk/util/e;->VIDEO_APP_INFO:Lcom/fyber/inneractive/sdk/util/e;

    goto :goto_3d

    :cond_3b
    sget-object p1, Lcom/fyber/inneractive/sdk/util/e;->VIDEO_CTA:Lcom/fyber/inneractive/sdk/util/e;

    :goto_3d
    invoke-interface {v0, p3, p1}, Lcom/fyber/inneractive/sdk/player/controller/w;->a(Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/util/e;)Lcom/fyber/inneractive/sdk/util/x$a;

    move-result-object p1

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p3, :cond_73

    new-array v0, v1, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v3, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_CLICK:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v3, v0, v2

    check-cast p3, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v3, p3, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    invoke-virtual {p3, v3, p2, v0}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object p3, p3, Lcom/fyber/inneractive/sdk/player/c;->h:Lcom/fyber/inneractive/sdk/measurement/d;

    if-eqz p3, :cond_73

    iget-object v0, p3, Lcom/fyber/inneractive/sdk/measurement/d;->c:Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;

    if-eqz v0, :cond_73

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "OMVideo"

    aput-object v3, v0, v2

    const-string v3, "%s click"

    invoke-static {v3, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_67
    iget-object v0, p3, Lcom/fyber/inneractive/sdk/measurement/d;->c:Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;

    sget-object v3, Lcom/iab/omid/library/fyber/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/fyber/adsession/media/InteractionType;

    invoke-virtual {v0, v3}, Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/fyber/adsession/media/InteractionType;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v0

    invoke-virtual {p3, v0}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/util/x$a;->a:Lcom/fyber/inneractive/sdk/util/x$d;

    sget-object p3, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    if-eq p1, p3, :cond_7a

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v1, 0x0

    :goto_7b
    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->VIDEO:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    if-ne p2, p1, :cond_86

    sget-object p1, Lcom/fyber/inneractive/sdk/config/f0$b;->VIDEO:Lcom/fyber/inneractive/sdk/config/f0$b;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/f0$b;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Ljava/lang/String;)V

    :cond_86
    return v1
.end method

.method public final b(Lcom/fyber/inneractive/sdk/config/global/features/r;)Lcom/fyber/inneractive/sdk/config/global/features/r$c;
    .registers 7

    if-eqz p1, :cond_25

    sget-object v0, Lcom/fyber/inneractive/sdk/config/global/features/r;->f:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->mKey:Ljava/lang/String;

    const-string v1, "endcard_animation_type"

    invoke-virtual {p1, v1, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->values()[Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_27

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_22
    sget-object v3, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    goto :goto_27

    :cond_25
    sget-object v3, Lcom/fyber/inneractive/sdk/config/global/features/r;->f:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    :goto_27
    return-object v3
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public final c(Lcom/fyber/inneractive/sdk/config/global/features/r;)I
    .registers 4

    const/4 v0, 0x3

    if-eqz p1, :cond_19

    const-string v1, "autoClickDelay"

    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x3

    :goto_11
    if-ltz p1, :cond_19

    const/16 v1, 0xa

    if-le p1, v1, :cond_18

    goto :goto_19

    :cond_18
    move v0, p1

    :cond_19
    :goto_19
    return v0
.end method

.method public c()Lcom/fyber/inneractive/sdk/flow/vast/e;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    check-cast v0, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/e;->z:Lcom/fyber/inneractive/sdk/flow/m;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/flow/m;->l:Lcom/fyber/inneractive/sdk/flow/vast/c;

    :cond_d
    return-object v1
.end method

.method public final c(I)V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    const-class v2, Lcom/fyber/inneractive/sdk/config/global/features/c;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/c;

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-eqz v0, :cond_26

    sget-object v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/config/global/features/c;->e(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/global/features/c;->e:Lcom/fyber/inneractive/sdk/model/vast/a;

    if-eqz v0, :cond_26

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->d:Z

    if-eqz v2, :cond_26

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->c:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    if-eqz v1, :cond_40

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\[TIME\\]"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/ui/l;->setSkipText(Ljava/lang/String;)V

    goto :goto_49

    :cond_40
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/ui/l;->setSkipText(Ljava/lang/String;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public c(Z)V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    check-cast v0, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    sget-object v3, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->REWARDED:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v3

    if-eqz v3, :cond_43

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->c()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->q()I

    move-result v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/controller/g;->d()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v4, v0

    if-lez v4, :cond_44

    if-ge v0, v3, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :cond_44
    :goto_44
    if-eqz v1, :cond_60

    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/v;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->p()Lcom/fyber/inneractive/sdk/config/global/features/b;

    move-result-object v2

    new-instance v3, Lcom/fyber/inneractive/sdk/player/controller/r;

    invoke-direct {v3, p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/r;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;Z)V

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/controller/v;-><init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/config/global/features/b;Lcom/fyber/inneractive/sdk/player/controller/v$c;)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/v;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_63

    :cond_60
    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->f(Z)V

    :goto_63
    return-void
.end method

.method public d(Z)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%sinitUI"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_8b

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-nez v0, :cond_18

    goto :goto_8b

    :cond_18
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/d;->setUnitConfig(Lcom/fyber/inneractive/sdk/config/b0;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->h()I

    move-result v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/controller/g;->g()I

    move-result v3

    iget-boolean v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->n:Z

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->r:I

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->s:I

    iput-boolean v4, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->t:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->h()I

    move-result v0

    if-lez v0, :cond_60

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->g()I

    move-result v0

    if-lez v0, :cond_60

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->h()I

    move-result v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->g()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(II)V

    :cond_60
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->B()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->s()I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    goto :goto_72

    :cond_6d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    :goto_72
    if-nez p1, :cond_88

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(I)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/player/enums/b;Z)V

    :cond_88
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->E()V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->z:Z

    return v0
.end method

.method public final d(Lcom/fyber/inneractive/sdk/config/global/features/r;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    const-string v1, "shouldEnableEndCardAutoClick"

    invoke-virtual {p1, v1, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public destroy()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->m:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_b
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%sdestroy called"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v1, :cond_30

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v1, :cond_30

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_30
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->l()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->j()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->q:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3d

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    return-void
.end method

.method public e(Z)V
    .registers 2

    return-void
.end method

.method public e()Z
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    const/4 v3, 0x1

    if-nez v2, :cond_50

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz v0, :cond_2f

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->o:Landroid/widget/TextView;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2c

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    if-nez v0, :cond_50

    :cond_2f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->d()I

    move-result v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    move-object v4, v2

    check-cast v4, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/e;->y:Lcom/fyber/inneractive/sdk/config/b0;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/c;->a(Lcom/fyber/inneractive/sdk/player/c;)I

    move-result v2

    invoke-static {v0, v4, v2}, Lcom/fyber/inneractive/sdk/player/c;->a(ILcom/fyber/inneractive/sdk/config/b0;I)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    if-nez v0, :cond_51

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    if-nez v0, :cond_51

    :cond_50
    const/4 v1, 0x1

    :cond_51
    return v1
.end method

.method public f()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%sonVideoViewDetachedFromWindow"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->l()V

    return-void
.end method

.method public final f(Z)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->t:Z

    sget-object v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->x:Lcom/fyber/inneractive/sdk/config/f0;

    if-eqz p1, :cond_1e

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    if-eqz v2, :cond_1e

    check-cast v2, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz v2, :cond_1e

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    const-string v3, "LAST_VAST_SKIPED"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/config/f0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->m()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->k()V

    if-eqz p1, :cond_52

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->h:Lcom/fyber/inneractive/sdk/measurement/d;

    if-eqz v1, :cond_52

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/measurement/d;->c:Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;

    if-eqz v3, :cond_52

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "OMVideo"

    aput-object v4, v3, v2

    const-string v4, "%s skipped"

    invoke-static {v4, v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_48
    iget-object v3, v1, Lcom/fyber/inneractive/sdk/measurement/d;->c:Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;

    invoke-virtual {v3}, Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;->skipped()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v3

    invoke-virtual {v1, v3}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->f()Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->j()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->D()V

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->k:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    if-eqz v1, :cond_ab

    check-cast v1, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz v1, :cond_ab

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    sget-object v3, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->REWARDED:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne v1, v3, :cond_ab

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v1, :cond_ab

    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->t:Z

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v3, :cond_a8

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v3, :cond_a8

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/controller/g;->c()I

    move-result v1

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/controller/g;->d()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->q()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    if-lez v3, :cond_9c

    if-lt v1, v4, :cond_9d

    :cond_9c
    const/4 v2, 0x1

    :cond_9d
    if-eqz v2, :cond_a5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/controller/w;->onCompleted()V

    goto :goto_ab

    :cond_a5
    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->B:Z

    goto :goto_ab

    :cond_a8
    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/controller/w;->onCompleted()V

    :cond_ab
    :goto_ab
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v0, :cond_ce

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    if-lez v0, :cond_c9

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_ce

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_ce

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    :cond_c9
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/w;->a(Z)V

    :cond_ce
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->l()V

    return-void
.end method

.method public g()V
    .registers 3

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->r:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->l:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->l:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    :cond_12
    return-void
.end method

.method public g(Z)V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->b(Z)V

    :cond_b
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->setMuteButtonState(Z)V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->j()V

    :cond_7
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    :cond_1b
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_27
    return-void
.end method

.method public h(Z)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_1b

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/c;->j:Z

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->D()V

    goto :goto_1b

    :cond_c
    if-eqz p1, :cond_18

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz p1, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(IZ)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/c;->d()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    return-void
.end method

.method public i(Z)V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->d(Z)V

    :cond_b
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->setMuteButtonState(Z)V

    return-void
.end method

.method public final j()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->j:Ljava/lang/Runnable;

    :cond_c
    return-void
.end method

.method public k()Z
    .registers 10

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_67

    new-instance v0, Lcom/fyber/inneractive/sdk/player/ui/f;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-direct {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/f;-><init>(Lcom/fyber/inneractive/sdk/player/ui/l;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v3, :cond_67

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/c;->h:Lcom/fyber/inneractive/sdk/measurement/d;

    if-eqz v3, :cond_67

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/ui/l;->getTrackingFriendlyView()[Landroid/view/View;

    move-result-object v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    if-eqz v5, :cond_29

    :try_start_21
    invoke-virtual {v5, v0}, Lcom/iab/omid/library/fyber/adsession/AdSession;->registerAdView(Landroid/view/View;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v0

    invoke-virtual {v3, v0}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    iget-object v0, v3, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    if-eqz v0, :cond_46

    if-eqz v4, :cond_46

    array-length v0, v4

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v0, :cond_46

    aget-object v6, v4, v5

    if-eqz v6, :cond_43

    :try_start_37
    iget-object v7, v3, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    sget-object v8, Lcom/iab/omid/library/fyber/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/fyber/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v7, v6, v8, v1}, Lcom/iab/omid/library/fyber/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/fyber/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v6

    invoke-virtual {v3, v6}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_46
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->getTrackingFriendlyViewObstructionPurposeOther()[Landroid/view/View;

    move-result-object v0

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    if-eqz v4, :cond_67

    array-length v4, v0

    const/4 v5, 0x0

    :goto_52
    if-ge v5, v4, :cond_67

    aget-object v6, v0, v5

    if-eqz v6, :cond_64

    :try_start_58
    iget-object v7, v3, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    sget-object v8, Lcom/iab/omid/library/fyber/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/fyber/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v7, v6, v8, v1}, Lcom/iab/omid/library/fyber/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/fyber/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v6

    invoke-virtual {v3, v6}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->getTextureHost()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "%sconnectToTextureView called %s"

    invoke-static {v3, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->getTextureHost()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    invoke-virtual {v3}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%sconnectToTextureView called but already connected"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15e

    :cond_a3
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_115

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_115

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-eq v5, v3, :cond_115

    if-eqz v5, :cond_b6

    invoke-virtual {v5, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_b6
    iput-object v3, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->m:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_bd

    goto :goto_c4

    :cond_bd
    new-instance v1, Lcom/fyber/inneractive/sdk/player/controller/f;

    invoke-direct {v1, v0}, Lcom/fyber/inneractive/sdk/player/controller/f;-><init>(Lcom/fyber/inneractive/sdk/player/controller/g;)V

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->m:Landroid/view/TextureView$SurfaceTextureListener;

    :goto_c4
    if-eqz v3, :cond_cb

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->m:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v3, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_cb
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_115

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "%scalling setSurfaceTexture with cached texture"

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_101

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f3

    goto :goto_101

    :cond_f3
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%scalling setSurfaceTexture with cached texture failed"

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_115

    :cond_101
    :goto_101
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "%scalling setSurfaceTexture with cached texture success"

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_115
    :goto_115
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    if-eqz v0, :cond_11e

    sget v1, Lcom/fyber/inneractive/sdk/R$id;->inn_texture_view:I

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setId(I)V

    :cond_11e
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%supdateView adding texture to parent"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    invoke-virtual {v1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_14b

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->getTextureHost()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14b
    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->l:Z

    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/m;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/controller/m;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->e:Lcom/fyber/inneractive/sdk/player/controller/g$g;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v1, :cond_15e

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v1, :cond_15e

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->d:Lcom/fyber/inneractive/sdk/player/controller/g$g;

    :cond_15e
    :goto_15e
    return v4
.end method

.method public l()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->x:Lcom/fyber/inneractive/sdk/player/ui/f;

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%sdestroyTextureView"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->p:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_23

    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/n$c;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/controller/n$c;-><init>(Lcom/fyber/inneractive/sdk/player/controller/n;)V

    invoke-virtual {p0, v3, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V

    :cond_23
    return-void
.end method

.method public final m()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->g()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->H:Z

    :cond_a
    return-void
.end method

.method public n()V
    .registers 4

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->B()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-class v2, Lcom/fyber/inneractive/sdk/config/global/features/c;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/c;

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    if-eqz v0, :cond_28

    sget-object v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/config/global/features/c;->e(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/global/features/c;->e:Lcom/fyber/inneractive/sdk/model/vast/a;

    if-eqz v0, :cond_28

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->d:Z

    if-eqz v2, :cond_28

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/model/vast/a;->b:Ljava/lang/String;

    :cond_28
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz v1, :cond_38

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->setSkipText(Ljava/lang/String;)V

    goto :goto_47

    :cond_38
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fyber/inneractive/sdk/R$string;->ia_video_skip_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->setSkipText(Ljava/lang/String;)V

    :goto_47
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v0, :cond_56

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/controller/w;->e()V

    :cond_56
    return-void
.end method

.method public abstract o()I
.end method

.method public p()Lcom/fyber/inneractive/sdk/config/global/features/b;
    .registers 3

    const-class v0, Lcom/fyber/inneractive/sdk/config/global/features/b;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v1, :cond_22

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/features/b;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/config/global/features/g;->c()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/b;

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return-object v0
.end method

.method public pauseVideo()V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_5d

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_5d

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Paused:Lcom/fyber/inneractive/sdk/player/enums/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_48

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    aput-object v1, v0, v2

    const-string v1, "%spauseVideo %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->getTextureHost()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->k()V

    goto :goto_5d

    :cond_48
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    aput-object v1, v0, v2

    const-string v1, "%spauseVideo called in bad state! %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public q()I
    .registers 6

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/config/i;->a:Ljava/util/Map;

    const-string v4, "max_rv_tsec"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/i;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_1f
    :try_start_1f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    const/16 v0, 0x1e

    :goto_26
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v0

    :goto_2b
    return v1
.end method

.method public final r()F
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_15

    int-to-float v0, v0

    goto :goto_17

    :catchall_15
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_17
    return v0
.end method

.method public abstract s()I
.end method

.method public t()Z
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->i()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->r()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public abstract u()V
.end method

.method public v()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->f()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->j()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->D()V

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    :cond_19
    return-void
.end method

.method public abstract w()V
.end method

.method public x()V
    .registers 3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->j()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->D()V

    return-void
.end method

.method public abstract y()V
.end method

.method public z()V
    .registers 1

    return-void
.end method
