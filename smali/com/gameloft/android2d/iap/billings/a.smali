###### Class com.gameloft.android2d.iap.billings.a (com.gameloft.android2d.iap.billings.a)
.class public abstract Lcom/gameloft/android2d/iap/billings/a;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->f:Ljava/util/Hashtable;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/gameloft/android2d/iap/billings/a;->m:I

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/gameloft/android2d/iap/billings/a;->s:Z

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->E:Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->K:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->P:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->Q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->W()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "old_price"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public A0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->l:Ljava/lang/String;

    return-void
.end method

.method public B()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public B0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->G:Ljava/lang/String;

    return-void
.end method

.method public C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public C0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->p:Ljava/lang/String;

    return-void
.end method

.method public D()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->M:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .registers 2

    const-string v0, "tnc"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_19
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_60
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "en"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_9f
    const/4 p1, 0x0

    return-object p1
.end method

.method public J()Ljava/lang/String;
    .registers 2

    const-string v0, "purchase_confirm"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    const-string v0, "purchase_confirm_above_buttons"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    const-string v0, "purchase_confirm_below_buttons"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .registers 3

    const-string v0, "direct_iap_purchase_confirm"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v0, "purchase_confirm"

    :cond_a
    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .registers 2

    const-string v0, "later"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .registers 2

    const-string v0, "ok"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .registers 2

    const-string v0, "back_wp8"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .registers 2

    const-string v0, "confirm_wp8"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .registers 2

    const-string v0, "hint_wp8"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .registers 2

    const-string v0, "phone_account_notification_wp8"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .registers 2

    const-string v0, "send_sms_wp8"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->G:Ljava/lang/String;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public W()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public X()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Y()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Z()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b0()V
    .registers 1

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "carrier_name"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->u:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public d0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->P:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "replaced_content_id"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->y:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 4

    const-string v0, "build_price_postfix"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    const-string v0, ""

    :goto_20
    return-object v0
.end method

.method public f0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->g:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->O:Ljava/lang/String;

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->i:Ljava/lang/String;

    return-void
.end method

.method public i(Lcom/gameloft/android2d/iap/utils/g;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public i0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->A:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->B:Ljava/lang/String;

    return-void
.end method

.method public k(Z)V
    .registers 2

    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->E:Ljava/lang/String;

    return-void
.end method

.method public l()V
    .registers 1

    return-void
.end method

.method public l0(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android2d/iap/billings/a;->m:I

    return-void
.end method

.method public m(J)V
    .registers 3

    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->j:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public n0(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/a;->s:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/billings/a;->s:Z

    :cond_12
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->F:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->H:Ljava/lang/String;

    return-void
.end method

.method public abstract p(Ljava/lang/String;)V
.end method

.method public p0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->J:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public q0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->h:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->isBillTypeMOEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f12029a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->d0(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method public r0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->o:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public s0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->n:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public t0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->r:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfID: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' BillingType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Price: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Currency: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\' Formatted Price: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\' TNC: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' URL: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Proxy Server: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Proxy Port: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Alias: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ServerNumber: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->O:Ljava/lang/String;

    return-object v0
.end method

.method public u0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->q:Ljava/lang/String;

    return-void
.end method

.method public v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public v0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->t:Ljava/lang/String;

    return-void
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android2d/iap/billings/a;->m:I

    return v0
.end method

.method public w0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->v:Ljava/lang/String;

    return-void
.end method

.method public x()Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->W()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "old_formatted_price"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->w:Ljava/lang/String;

    return-void
.end method

.method public y()Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->W()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "old_formatted_price"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->k:Ljava/lang/String;

    return-void
.end method

.method public z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public z0(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/a;->x:Ljava/lang/String;

    return-void
.end method
