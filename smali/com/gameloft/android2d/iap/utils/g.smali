###### Class com.gameloft.android2d.iap.utils.g (com.gameloft.android2d.iap.utils.g)
.class public Lcom/gameloft/android2d/iap/utils/g;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/gameloft/android2d/iap/utils/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/gameloft/android2d/iap/wrapper/Image;

.field private g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gameloft/android2d/iap/billings/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->f:Lcom/gameloft/android2d/iap/wrapper/Image;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    const-string v0, "item_json"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .registers 2

    const-string v0, "end_date"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .registers 2

    const-string v0, "managed"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .registers 2

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 2

    const-string v0, "position"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const-string v0, "0"

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const-string v0, "old_formatted_price"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const-string v0, "old_price"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .registers 2

    const-string v0, "sku"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    const-string v0, "subscription_rewards"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    const-string v0, "tracking_uid"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public M()Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->f:Lcom/gameloft/android2d/iap/wrapper/Image;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public O(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public P(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/g;->d:Ljava/lang/String;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/g;->c:Ljava/lang/String;

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/g;->b:Ljava/lang/String;

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/g;->a:Ljava/lang/String;

    return-void
.end method

.method public T(Lcom/gameloft/android2d/iap/wrapper/Image;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/g;->f:Lcom/gameloft/android2d/iap/wrapper/Image;

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/g;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/utils/g;->l(Lcom/gameloft/android2d/iap/utils/g;)I

    move-result p1

    return p1
.end method

.method public e()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "replaced_content_id"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public h(Lcom/gameloft/android2d/iap/billings/a;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public i(J)J
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gameloft/android2d/iap/utils/g;->j(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public j(JZ)J
    .registers 4

    return-wide p1
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->i:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public l(Lcom/gameloft/android2d/iap/utils/g;)I
    .registers 3

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

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

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "en"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_61
    return-object v0

    :cond_62
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gameloft/android2d/iap/billings/a;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public o()I
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public p()Ljava/lang/String;
    .registers 11

    const-string v0, "quantity"

    const-string v1, "replaced_quantity"

    const-string v2, "bundle"

    invoke-virtual {p0, v2}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_70

    :try_start_e
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_19
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6b

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "consumable"

    invoke-static {v7, v8}, Lcom/gameloft/android2d/iap/IAPLib;->GetParamIAPObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "multiplier"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_65

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9, v7}, Lcom/gameloft/android2d/iap/utils/g;->j(JZ)J

    move-result-wide v8

    invoke-virtual {v6, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9, v7}, Lcom/gameloft/android2d/iap/utils/g;->j(JZ)J

    move-result-wide v7

    invoke-virtual {v6, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_65
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_6b
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_6f} :catch_70

    return-object v0

    :catch_70
    :cond_70
    return-object v3
.end method

.method public q()Ljava/lang/String;
    .registers 2

    const-string v0, "cid"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()J
    .registers 4

    const-string v0, "amount"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202cd

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202d0

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_4b

    :cond_29
    sget-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    if-eqz v1, :cond_3d

    const-string v1, "old_amount"

    invoke-virtual {p0, v1}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p0, v1}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3d
    if-eqz v0, :cond_48

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseLongNumber(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/g;->i(J)J

    move-result-wide v0

    return-wide v0

    :cond_48
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_4b
    :goto_4b
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public t()J
    .registers 5

    const-string v0, "old_amount"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_d

    return-wide v2

    :cond_d
    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseLongNumber(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/g;->i(J)J

    move-result-wide v0

    return-wide v0

    :cond_18
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******Item********\nId: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Type_pref: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nName: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_66
    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_aa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n-----Billing-------"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/g;->h:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gameloft/android2d/iap/billings/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    :cond_aa
    return-object v0
.end method

.method public u()Lcom/gameloft/android2d/iap/billings/a;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->n(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    const-string v0, "group"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method
