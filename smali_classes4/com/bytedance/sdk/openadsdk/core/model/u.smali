###### Class com.bytedance.sdk.openadsdk.core.model.u (com.bytedance.sdk.openadsdk.core.model.u)
.class public Lcom/bytedance/sdk/openadsdk/core/model/u;
.super Lcom/bytedance/sdk/openadsdk/core/model/q;
.source "SingleMaterialMeta.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private E:I

.field private F:J

.field private G:I

.field private H:I

.field private I:Lcom/bykv/vk/openvk/component/video/api/c/b;

.field private J:Lcom/bykv/vk/openvk/component/video/api/c/b;

.field private K:Lcom/bykv/vk/openvk/component/video/api/c/b;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:I

.field private R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lcom/bytedance/sdk/openadsdk/core/model/q$a;

.field private T:Ljava/lang/String;

.field private U:Lorg/json/JSONObject;

.field private V:I

.field private W:I

.field private X:Lcom/bytedance/sdk/openadsdk/core/model/h;

.field private Y:I

.field private Z:I

.field public a:Z

.field private aA:Lcom/bytedance/sdk/openadsdk/core/g/a;

.field private aB:Ljava/lang/String;

.field private aC:Lorg/json/JSONObject;

.field private aD:I

.field private volatile aE:Z

.field private aF:I

.field private aG:J

.field private aH:Ljava/lang/String;

.field private aI:I

.field private aJ:I

.field private aK:I

.field private aL:[Ljava/lang/String;

.field private aM:Lcom/bytedance/sdk/openadsdk/core/model/l;

.field private aN:Ljava/lang/String;

.field private aO:Ljava/lang/String;

.field private aP:Lcom/bytedance/sdk/openadsdk/core/model/d;

.field private aQ:Z

.field private aR:Ljava/lang/String;

.field private aS:I

.field private aT:I

.field private aU:Ljava/lang/String;

.field private aV:Ljava/lang/String;

.field private aW:Z

.field private aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private ab:I

.field private ac:I

.field private ad:Ljava/lang/String;

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Lorg/json/JSONObject;

.field private ai:I

.field private aj:I

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Lcom/bytedance/sdk/openadsdk/core/model/k;

.field private an:I

.field private ao:F

.field private ap:Ljava/lang/String;

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

.field private az:Lcom/bytedance/sdk/openadsdk/core/model/t;

.field public b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bytedance/sdk/openadsdk/utils/ab;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/bytedance/sdk/openadsdk/core/model/n;

.field private k:Lcom/bytedance/sdk/openadsdk/core/model/n;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Lcom/bytedance/sdk/openadsdk/core/model/c;

.field private w:Lcom/bytedance/sdk/openadsdk/core/model/j;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->e:Ljava/util/List;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b()Lcom/bytedance/sdk/openadsdk/utils/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->f:Lcom/bytedance/sdk/openadsdk/utils/ab;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->a:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->n:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->o:Ljava/util/List;

    const-string v1, "0"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->u:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->B:Ljava/lang/String;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->C:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->D:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->E:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->V:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->W:I

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/h;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/model/h;-><init>()V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->X:Lcom/bytedance/sdk/openadsdk/core/model/h;

    const/16 v3, -0xc8

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Y:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Z:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ac:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ae:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->af:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ag:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ai:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->an:I

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ao:F

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->au:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->av:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aw:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aF:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aG:J

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aK:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS:I

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_selected"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getIsSelected()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v2

    if-eqz v2, :cond_5c

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/u;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3d

    :cond_51
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_5c

    const-string p1, "options"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5d

    :cond_5c
    return-object v1

    :catchall_5d
    :cond_5d
    return-object v0
.end method

.method private static e(Lorg/json/JSONObject;)D
    .registers 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_a

    const-string v2, "pack_time"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :cond_a
    return-wide v0
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->af:I

    return v0
.end method

.method public A(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aD:I

    return-void
.end method

.method public A(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aH:Ljava/lang/String;

    return-void
.end method

.method public B()I
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->at()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->al()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->u()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    goto :goto_1d

    :cond_1a
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Z:I

    return v0

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public B(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aI:I

    return-void
.end method

.method public C()Lcom/bytedance/sdk/openadsdk/core/model/h;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->X:Lcom/bytedance/sdk/openadsdk/core/model/h;

    return-object v0
.end method

.method public C(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aJ:I

    return-void
.end method

.method public D()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method

.method public D(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aK:I

    return-void
.end method

.method public E()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Y:I

    return v0
.end method

.method public E(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->O:I

    return-void
.end method

.method public F()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->T:Ljava/lang/String;

    return-object v0
.end method

.method public F(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aw:I

    return-void
.end method

.method public G(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ax:I

    return-void
.end method

.method public G()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bB()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public H()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Q:I

    return v0
.end method

.method public H(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->t:I

    return-void
.end method

.method public I()Lcom/bytedance/sdk/openadsdk/core/model/q$a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->S:Lcom/bytedance/sdk/openadsdk/core/model/q$a;

    return-object v0
.end method

.method public I(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS:I

    return-void
.end method

.method public J()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->am:Lcom/bytedance/sdk/openadsdk/core/model/k;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/k;->a()I

    move-result v0

    :goto_a
    return v0
.end method

.method public J(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aT:I

    return-void
.end method

.method public K()Lcom/bykv/vk/openvk/component/video/api/c/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->I:Lcom/bykv/vk/openvk/component/video/api/c/b;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->y:Ljava/lang/String;

    return-object v0
.end method

.method public M()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->g:I

    return v0
.end method

.method public N()Lcom/bytedance/sdk/openadsdk/core/model/n;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->j:Lcom/bytedance/sdk/openadsdk/core/model/n;

    return-object v0
.end method

.method public O()Lcom/bytedance/sdk/openadsdk/core/model/n;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->k:Lcom/bytedance/sdk/openadsdk/core/model/n;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->l:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->c:Ljava/util/List;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->m:Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->n:Ljava/util/List;

    return-object v0
.end method

.method public T()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->o:Ljava/util/List;

    return-object v0
.end method

.method public U()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->d:Ljava/util/List;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->p:Ljava/lang/String;

    return-object v0
.end method

.method public W()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->q:Ljava/lang/String;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->r:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->M()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->r:Ljava/lang/String;

    return-object v0

    :cond_1f
    if-eqz v0, :cond_28

    const-string v1, "tt_video_download_apk"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->r:Ljava/lang/String;

    return-object v0

    :cond_2b
    if-eqz v0, :cond_34

    const-string v1, "tt_video_mobile_go_detail"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->r:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->u:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->z:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .registers 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_10

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->av:I

    return-void

    :cond_10
    double-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->av:I

    return-void
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ao:F

    return-void
.end method

.method public a(I)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->a(II)V

    return-void
.end method

.method public a(II)V
    .registers 9

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void

    :cond_c
    if-gtz p2, :cond_12

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS()I

    move-result p2

    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    if-eq v0, v2, :cond_e9

    if-ne p2, v2, :cond_27

    goto/16 :goto_e9

    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v0

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/4 v5, 0x7

    if-eq v0, v5, :cond_87

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v0

    if-eq v0, v4, :cond_87

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    if-eq v0, v5, :cond_87

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    if-eq v0, v4, :cond_87

    if-eq p2, v5, :cond_87

    if-ne p2, v4, :cond_50

    goto :goto_87

    :cond_50
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result p2

    const/4 v0, 0x4

    if-eqz p2, :cond_5a

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void

    :cond_5a
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    if-ne p2, v0, :cond_66

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result p2

    if-nez p2, :cond_66

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    :cond_66
    if-lt p1, v3, :cond_6b

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void

    :cond_6b
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_79

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->M()I

    move-result p2

    if-eq p2, v2, :cond_79

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void

    :cond_79
    if-eqz p1, :cond_84

    const/4 p2, 0x1

    if-ne p1, p2, :cond_e8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->M()I

    move-result p1

    if-eq p1, v2, :cond_e8

    :cond_84
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void

    :cond_87
    :goto_87
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->k(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result p2

    if-eqz p2, :cond_92

    const/16 p1, 0xc

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void

    :cond_92
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result p2

    if-eqz p2, :cond_9d

    const/16 p1, 0x9

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void

    :cond_9d
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    if-ne p2, v3, :cond_a9

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/o;->c(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result p2

    if-nez p2, :cond_a9

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    :cond_a9
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    const/4 v0, 0x6

    if-ne p2, v0, :cond_b6

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/o;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result p2

    if-nez p2, :cond_b6

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    :cond_b6
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    if-ne p2, v4, :cond_c4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bB()I

    move-result p2

    const/16 v0, 0x64

    if-eq p2, v0, :cond_c4

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    :cond_c4
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    const/16 v0, 0x13

    if-ne p2, v0, :cond_d4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->l:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d4

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    :cond_d4
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    const/16 v0, 0x14

    if-ne p2, v0, :cond_e4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->l:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e4

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    :cond_e4
    if-ge p1, v3, :cond_e8

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    :cond_e8
    return-void

    :cond_e9
    :goto_e9
    const/16 p1, 0xe

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->I:Lcom/bykv/vk/openvk/component/video/api/c/b;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/g/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aA:Lcom/bytedance/sdk/openadsdk/core/g/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->v:Lcom/bytedance/sdk/openadsdk/core/model/c;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/d;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aP:Lcom/bytedance/sdk/openadsdk/core/model/d;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->X:Lcom/bytedance/sdk/openadsdk/core/model/h;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/j;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->w:Lcom/bytedance/sdk/openadsdk/core/model/j;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/k;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->am:Lcom/bytedance/sdk/openadsdk/core/model/k;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aM:Lcom/bytedance/sdk/openadsdk/core/model/l;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/n;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->j:Lcom/bytedance/sdk/openadsdk/core/model/n;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/p;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/q$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->S:Lcom/bytedance/sdk/openadsdk/core/model/q$a;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bC()Lcom/bytedance/sdk/component/adexpress/a/c/c;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->a(Lcom/bytedance/sdk/component/adexpress/a/c/c;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/t;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->az:Lcom/bytedance/sdk/openadsdk/core/model/t;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->R:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->L:Z

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aL:[Ljava/lang/String;

    return-void
.end method

.method public aA()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aE:Z

    return-void
.end method

.method public aB()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aE:Z

    return v0
.end method

.method public aC()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aI:I

    return v0
.end method

.method public aD()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aJ:I

    return v0
.end method

.method public aE()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aK:I

    return v0
.end method

.method public aF()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa()Lcom/bytedance/sdk/openadsdk/core/model/c;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa()Lcom/bytedance/sdk/openadsdk/core/model/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa()Lcom/bytedance/sdk/openadsdk/core/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/c;->b()Ljava/lang/String;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public aG()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aL:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-gtz v0, :cond_1c

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->V()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aL:[Ljava/lang/String;

    return-object v0
.end method

.method public aH()Lcom/bytedance/sdk/openadsdk/core/model/l;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aM:Lcom/bytedance/sdk/openadsdk/core/model/l;

    return-object v0
.end method

.method public aI()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->O:I

    return v0
.end method

.method public aJ()Lcom/bytedance/sdk/component/widget/b/a;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/widget/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/b/a;-><init>()V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Q:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/b/a;->a(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/b/a;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public aK()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aw:I

    return v0
.end method

.method public aL()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ax:I

    return v0
.end method

.method public aM()Lcom/bykv/vk/openvk/component/video/api/c/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->K:Lcom/bykv/vk/openvk/component/video/api/c/b;

    return-object v0
.end method

.method public aN()Lcom/bykv/vk/openvk/component/video/api/c/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->J:Lcom/bykv/vk/openvk/component/video/api/c/b;

    return-object v0
.end method

.method public aO()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->s:Ljava/lang/String;

    return-object v0
.end method

.method public aP()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->t:I

    return v0
.end method

.method public aQ()Z
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->I:Lcom/bykv/vk/openvk/component/video/api/c/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->s()I

    move-result v0

    if-eq v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public aR()Lorg/json/JSONObject;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->U:Lorg/json/JSONObject;

    if-nez v0, :cond_20

    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->U:Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_20

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaterialMeta"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->U:Lorg/json/JSONObject;

    return-object v0
.end method

.method public aS()I
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aF:I

    if-gez v0, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string v2, "ad_slot_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aF:I

    goto :goto_16

    :cond_14
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aF:I

    :cond_16
    :goto_16
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aF:I

    return v0
.end method

.method public aT()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aF:I

    return v0
.end method

.method public aU()J
    .registers 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aG:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_19

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "ad_id"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aG:J

    goto :goto_19

    :cond_17
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aG:J

    :cond_19
    :goto_19
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aG:J

    return-wide v0
.end method

.method public aV()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public aW()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public aX()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public aY()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public aZ()I
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string v2, "rit"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_e
    return v1
.end method

.method public aa()Lcom/bytedance/sdk/openadsdk/core/model/c;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->v:Lcom/bytedance/sdk/openadsdk/core/model/c;

    return-object v0
.end method

.method public ab()Lcom/bytedance/sdk/openadsdk/core/model/j;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->w:Lcom/bytedance/sdk/openadsdk/core/model/j;

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->A:Ljava/lang/String;

    return-object v0
.end method

.method public ad()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->x:I

    return v0
.end method

.method public ae()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->e:Ljava/util/List;

    return-object v0
.end method

.method public af()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->al:Ljava/lang/String;

    return-object v0
.end method

.method public ag()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->F:J

    return-wide v0
.end method

.method public ah()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->P:Z

    return v0
.end method

.method public ai()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->R:Ljava/util/Map;

    return-object v0
.end method

.method public aj()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ah:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ak()I
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->an:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->an:I

    :cond_8
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->an:I

    return v0
.end method

.method public al()F
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ao:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ao:F

    :cond_b
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ao:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public am()Z
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->x:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_19

    return v1

    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/n;->e()Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method public an()Z
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->at()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bF()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public ao()Lorg/json/JSONObject;
    .registers 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "interaction_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->M()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "interaction_method"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "target_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_log_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gecko_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->af()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extension"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "screenshot"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ah()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "dislike_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bF()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_bar_show_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->E()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_bar_style"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->B()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "if_block_lp"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bv()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cache_sort"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bz()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "if_sp_cache"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bA()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "render_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->u()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mrc_report"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aD:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isMrcReportFinish"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aE:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cta"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->r()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "other"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->q()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "set_click_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "reward_name"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reward_amount"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->t()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "reward_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "adchoices_icon"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adchoices_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dsp_adchoices"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->N()Lcom/bytedance/sdk/openadsdk/core/model/n;

    move-result-object v1
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10f} :catch_5d2

    const-string v2, "width"

    const-string v3, "height"

    const-string v4, "url"

    if-eqz v1, :cond_140

    :try_start_117
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_140

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->c()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->b()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "icon"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_140
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->O()Lcom/bytedance/sdk/openadsdk/core/model/n;

    move-result-object v1

    if-eqz v1, :cond_16f

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16f

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->c()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/n;->b()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cover_image"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aj()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_17a

    const-string v5, "session_params"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->C()Lcom/bytedance/sdk/openadsdk/core/model/h;

    move-result-object v1

    if-eqz v1, :cond_1b4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "click_upper_content_area"

    iget-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/core/model/h;->a:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "click_upper_non_content_area"

    iget-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/core/model/h;->b:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "click_lower_content_area"

    iget-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/core/model/h;->c:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "click_lower_non_content_area"

    iget-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/core/model/h;->d:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "click_button_area"

    iget-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/core/model/h;->e:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "click_video_area"

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/h;->f:Z

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "click_area"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->D()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    if-eqz v1, :cond_1c3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->toJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "adslot"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->Q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_213

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/model/n;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/n;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/n;->c()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/n;->b()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "image_preview"

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/n;->f()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "image_key"

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/n;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1d2

    :cond_20e
    const-string v1, "image"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_213
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->S()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_237

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_222
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_232

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_222

    :cond_232
    const-string v1, "show_url"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_237
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->T()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_25b

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_246
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_256

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_246

    :cond_256
    const-string v1, "click_url"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_25b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->U()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_27f

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_26a

    :cond_27a
    const-string v1, "play_start"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27f
    const-string v1, "phone_num"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ext"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "image_mode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ad()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cover_click_area"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bB()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "intercept_flag"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->by()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "button_text"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_logo"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bx()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_adaptation"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "feed_video_opentype"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "orientation"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ak()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "aspect_ratio"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->al()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa()Lcom/bytedance/sdk/openadsdk/core/model/c;

    move-result-object v1

    if-eqz v1, :cond_33b

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_name"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "package_name"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "download_url"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "score"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->d()D

    move-result-wide v5

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "comment_num"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->e()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "app_size"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->f()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "app"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_33b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ab()Lcom/bytedance/sdk/openadsdk/core/model/j;

    move-result-object v1

    if-eqz v1, :cond_366

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "deeplink_url"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fallback_url"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fallback_type"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/j;->c()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deep_link"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_366
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ae()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_390

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_375
    :goto_375
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/u;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_375

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_375

    :cond_38b
    const-string v1, "filter_words"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_390
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->n()Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->a(Lorg/json/JSONObject;)V

    const-string v1, "count_down"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bD()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "expiration_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ag()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aM()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-eqz v1, :cond_3b8

    const-string v2, "video"

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->r()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aN()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-eqz v1, :cond_3c7

    const-string v2, "h265_video"

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->r()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3c7
    const-string v1, "video_encode_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aL()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "if_send_click"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->J()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "download_conf"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ai()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_41f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ai()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41a

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_400
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_400

    :cond_41a
    const-string v2, "media_ext"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->I()Lcom/bytedance/sdk/openadsdk/core/model/q$a;

    move-result-object v1

    if-eqz v1, :cond_46c

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "md5"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "diff_data"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dynamic_creative"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tpl_info"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_46c
    const-string v1, "creative_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "market_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "auction_price"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_info"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_package_open"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ap()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playable_duration_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aq()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playable_endcard_close_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->ar()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "endcard_close_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->as()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "render_sequence"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->x()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "backup_render_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->y()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "reserve_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aC()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "render_thread"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aD()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "render"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    if-nez v1, :cond_500

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/p;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/p;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/p;->a(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/p;->b(J)V

    :cond_500
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "onlylp_loading_maxtime"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/p;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "straight_lp_showtime"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/p;->b()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "loading_text"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "interaction_method_params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "splash_clickarea"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->k()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "splash_layout_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->l()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "load_wait_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->m()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "splash_control"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->av()Z

    move-result v1

    if-eqz v1, :cond_55d

    const-string v1, "dsp_html"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_55d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->at()Z

    move-result v1

    if-eqz v1, :cond_56e

    const-string v1, "vast_json"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aA:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->j()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_56e
    const-string v1, "dsp_material_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->be()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "loading_landingpage_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aE()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aL:[Ljava/lang/String;

    if-eqz v2, :cond_5a4

    array-length v2, v2

    if-lez v2, :cond_5a4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aL:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_595
    if-ge v5, v4, :cond_59f

    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_595

    :cond_59f
    const-string v3, "landingpage_text"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5a4
    const-string v2, "loading_page"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deep_link_appname"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "landing_page_download_clicktype"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aM:Lcom/bytedance/sdk/openadsdk/core/model/l;

    if-eqz v1, :cond_5c4

    const-string v2, "dsp_style"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/l;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5c4
    const-string v1, "jump_probability"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "identificationOverlayContent"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d2
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_5d2} :catch_5d2

    :catch_5d2
    return-object v0
.end method

.method public ap()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aq:I

    return v0
.end method

.method public aq()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ar:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    const/16 v0, 0x14

    return v0
.end method

.method public ar()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->as:I

    return v0
.end method

.method public as()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->at:I

    return v0
.end method

.method public at()Z
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->au()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public au()Lcom/bytedance/sdk/openadsdk/core/g/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aA:Lcom/bytedance/sdk/openadsdk/core/g/a;

    return-object v0
.end method

.method public av()Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public aw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aB:Ljava/lang/String;

    return-object v0
.end method

.method public ax()I
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aC:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const-string v2, "easy_playable_skip_duration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_c
    return v1
.end method

.method public ay()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aC:Lorg/json/JSONObject;

    return-object v0
.end method

.method public az()Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aD:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public b(D)V
    .registers 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_10

    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->au:I

    return-void

    :cond_10
    double-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->au:I

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->F:J

    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->K:Lcom/bykv/vk/openvk/component/video/api/c/b;

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/model/n;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->k:Lcom/bytedance/sdk/openadsdk/core/model/n;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ah:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->M:Z

    return-void
.end method

.method public bA()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aj:I

    return v0
.end method

.method public bB()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->H:I

    return v0
.end method

.method public bC()Lcom/bytedance/sdk/component/adexpress/a/c/c;
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->I()Lcom/bytedance/sdk/openadsdk/core/model/q$a;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aZ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q$a;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public bD()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->G:I

    return v0
.end method

.method public bE()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public bF()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->E:I

    return v0
.end method

.method public ba()D
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->e(Lorg/json/JSONObject;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bb()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aa()Lcom/bytedance/sdk/openadsdk/core/model/c;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public bc()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string v0, "req_id"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->A(Ljava/lang/String;)V

    :cond_19
    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v2, v0

    :goto_1d
    return-object v2
.end method

.method public bd()Z
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->D()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->D()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->av()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public be()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aS:I

    return v0
.end method

.method public bf()Z
    .registers 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_e

    :cond_8
    const/4 v0, 0x3

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->g:I

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public bg()Z
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->at()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bj()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aM:Lcom/bytedance/sdk/openadsdk/core/model/l;

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/l;->a()I

    move-result v0

    if-ne v0, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public bh()Z
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bj()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->at()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aM:Lcom/bytedance/sdk/openadsdk/core/model/l;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/l;->b()I

    move-result v2

    goto :goto_2b

    :cond_21
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aT:I

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    if-ge v0, v2, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public bi()Z
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->at()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bj()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aM:Lcom/bytedance/sdk/openadsdk/core/model/l;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/l;->c()I

    move-result v2

    if-ge v0, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public bj()Z
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->f:Lcom/bytedance/sdk/openadsdk/utils/ab;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public bk()Lcom/bytedance/sdk/openadsdk/utils/ab;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->f:Lcom/bytedance/sdk/openadsdk/utils/ab;

    return-object v0
.end method

.method public bl()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->f:Lcom/bytedance/sdk/openadsdk/utils/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->f(Z)V

    return-void
.end method

.method public bm()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->b:J

    return-wide v0
.end method

.method public bn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->a:Z

    return v0
.end method

.method public bo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aQ:Z

    return v0
.end method

.method public bp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR:Ljava/lang/String;

    return-object v0
.end method

.method public bq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aU:Ljava/lang/String;

    return-object v0
.end method

.method public br()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->I()Lcom/bytedance/sdk/openadsdk/core/model/q$a;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->I()Lcom/bytedance/sdk/openadsdk/core/model/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/q$a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public bs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aV:Ljava/lang/String;

    return-object v0
.end method

.method public bt()V
    .registers 4

    const-string v0, "style_id"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->I:Lcom/bykv/vk/openvk/component/video/api/c/b;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    :try_start_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->I:Lcom/bykv/vk/openvk/component/video/api/c/b;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aW:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->I:Lcom/bykv/vk/openvk/component/video/api/c/b;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aV:Ljava/lang/String;

    goto :goto_42

    :cond_37
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aW:Z
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_3a

    goto :goto_42

    :catchall_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public bu()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aW:Z

    return v0
.end method

.method public bv()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ae:I

    return v0
.end method

.method public bw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public bx()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ac:I

    return v0
.end method

.method public by()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ab:I

    return v0
.end method

.method public bz()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ai:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->C:I

    return-void
.end method

.method public c(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->b:J

    return-void
.end method

.method public c(Lcom/bykv/vk/openvk/component/video/api/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->J:Lcom/bykv/vk/openvk/component/video/api/c/b;

    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/model/n;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->g:I

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->u:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->y:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->v:Lcom/bytedance/sdk/openadsdk/core/model/c;

    const-string v1, "pkg_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->v:Lcom/bytedance/sdk/openadsdk/core/model/c;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->v:Lcom/bytedance/sdk/openadsdk/core/model/c;

    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->N:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->L:Z

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->D:I

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aC:Lorg/json/JSONObject;

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->P:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->M:Z

    return v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ae:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aN:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->a:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->N:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    :cond_12
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->A:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aN:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ag:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aO:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aQ:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aO:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->V:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->B:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->W:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ap:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public i()Lcom/bytedance/sdk/openadsdk/core/model/p;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ay:Lcom/bytedance/sdk/openadsdk/core/model/p;

    return-object v0
.end method

.method public i(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->af:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ak:Ljava/lang/String;

    return-void
.end method

.method public j()Lcom/bytedance/sdk/openadsdk/core/model/d;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aP:Lcom/bytedance/sdk/openadsdk/core/model/d;

    return-object v0
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ac:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->T:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aP:Lcom/bytedance/sdk/openadsdk/core/model/d;

    if-nez v0, :cond_6

    const/4 v0, 0x2

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/d;->a()I

    move-result v0

    :goto_a
    return v0
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Z:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->y:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .registers 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->at()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->av()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    return v0

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aP:Lcom/bytedance/sdk/openadsdk/core/model/d;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/d;->b()I

    move-result v0

    :goto_1a
    return v0
.end method

.method public l(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ab:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->l:Ljava/lang/String;

    return-void
.end method

.method public m()J
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aP:Lcom/bytedance/sdk/openadsdk/core/model/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/d;->c()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public m(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Y:I

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->m:Ljava/lang/String;

    return-void
.end method

.method public n()Lcom/bytedance/sdk/openadsdk/core/model/t;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->az:Lcom/bytedance/sdk/openadsdk/core/model/t;

    return-object v0
.end method

.method public n(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ai:I

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->p:Ljava/lang/String;

    return-void
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    return v0
.end method

.method public o(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aj:I

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->q:Ljava/lang/String;

    return-void
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->i:I

    return v0
.end method

.method public p(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->H:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->r:Ljava/lang/String;

    return-void
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->av:I

    return v0
.end method

.method public q(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->Q:I

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->u:Ljava/lang/String;

    return-void
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->au:I

    return v0
.end method

.method public r(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->g:I

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->z:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->B:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->x:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->A:Ljava/lang/String;

    return-void
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->C:I

    return v0
.end method

.method public t(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->G:I

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->al:Ljava/lang/String;

    return-void
.end method

.method public u()I
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->h:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    goto :goto_14

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->bd()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    return v0

    :cond_11
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->D:I

    return v0

    :cond_14
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method public u(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->an:I

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ad:Ljava/lang/String;

    return-void
.end method

.method public v(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->E:I

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aB:Ljava/lang/String;

    return-void
.end method

.method public v()Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ae:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ag:I

    return v0
.end method

.method public w(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aq:I

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->s:Ljava/lang/String;

    return-void
.end method

.method public x()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->V:I

    return v0
.end method

.method public x(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "rit"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public x(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ar:I

    return-void
.end method

.method public y()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->W:I

    return v0
.end method

.method public y(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->as:I

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aR:Ljava/lang/String;

    return-void
.end method

.method public z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public z(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->at:I

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/u;->aU:Ljava/lang/String;

    return-void
.end method
