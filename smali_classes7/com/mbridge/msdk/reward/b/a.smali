###### Class com.mbridge.msdk.reward.b.a (com.mbridge.msdk.reward.b.a)
.class public Lcom/mbridge/msdk/reward/b/a;
.super Ljava/lang/Object;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/reward/b/a$b;,
        Lcom/mbridge/msdk/reward/b/a$a;,
        Lcom/mbridge/msdk/reward/b/a$c;,
        Lcom/mbridge/msdk/reward/b/a$d;
    }
.end annotation


# static fields
.field private static S:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static T:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static f:Ljava/lang/String; = null

.field public static g:Ljava/lang/String; = ""

.field public static h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/reward/b/a$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Landroid/os/Handler;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:Z

.field private final Q:Ljava/lang/Object;

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private V:Ljava/lang/String;

.field private W:Lcom/mbridge/msdk/foundation/db/h;

.field private volatile X:Z

.field private volatile Y:Z

.field private volatile Z:Z

.field a:Lcom/mbridge/msdk/reward/b/a$b;

.field private volatile aa:Z

.field private volatile ab:Z

.field private volatile ac:Z

.field private volatile ad:Z

.field private ae:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z

.field volatile l:Z

.field volatile m:Z

.field private n:Landroid/content/Context;

.field private o:I

.field private p:Lcom/mbridge/msdk/reward/adapter/c;

.field private q:Lcom/mbridge/msdk/videocommon/d/c;

.field private r:Lcom/mbridge/msdk/videocommon/d/a;

.field private volatile s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

.field private volatile t:Lcom/mbridge/msdk/reward/b/a$c;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/mbridge/msdk/out/MBridgeIds;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/reward/b/a;->S:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/reward/b/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/reward/b/a;->C:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/reward/b/a;->E:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->K:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->L:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->N:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->O:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->P:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->Q:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->R:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->X:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->Y:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->Z:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->aa:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->ab:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->ac:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->k:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->l:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->m:Z

    new-instance v0, Lcom/mbridge/msdk/reward/b/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/reward/b/a$1;-><init>(Lcom/mbridge/msdk/reward/b/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->ac:Z

    return p0
.end method

.method static synthetic B(Lcom/mbridge/msdk/reward/b/a;)Lcom/mbridge/msdk/foundation/db/h;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;

    return-object p0
.end method

.method static synthetic C(Lcom/mbridge/msdk/reward/b/a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/reward/b/a;->o:I

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->S:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->S:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/foundation/db/h;)Lcom/mbridge/msdk/foundation/db/h;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/b/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/b/a;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p2, :cond_eb

    :try_start_11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_eb

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_1d
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVcn()I

    move-result v6

    if-le v6, v4, :cond_35

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVcn()I

    move-result v4

    :cond_35
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTokenRule()I

    move-result v6

    if-ne v6, v3, :cond_61

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_55
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_61
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_7b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_87
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr p2, v2

    if-lt p2, v4, :cond_eb

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_eb

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_eb

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    if-eqz p2, :cond_eb

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_eb

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_eb

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-static {p2, p1, v4}, Lcom/mbridge/msdk/foundation/same/a/d;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_eb
    :goto_eb
    return-object v0
.end method

.method private a(IIZLjava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "local_rid"

    :try_start_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/adapter/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    :cond_12
    new-instance v1, Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/mbridge/msdk/reward/adapter/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->b(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->c(Z)V

    :cond_2b
    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v2, p0, Lcom/mbridge/msdk/reward/b/a;->F:I

    iget v3, p0, Lcom/mbridge/msdk/reward/b/a;->G:I

    iget v4, p0, Lcom/mbridge/msdk/reward/b/a;->H:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/mbridge/msdk/reward/adapter/c;->a(III)V

    :cond_3a
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v2, p0, Lcom/mbridge/msdk/reward/b/a;->E:I

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/videocommon/d/c;)V

    new-instance v1, Lcom/mbridge/msdk/reward/b/a$a;

    iget-object v5, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    move-object v3, v1

    move-object v4, p0

    move v6, p1

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/mbridge/msdk/reward/b/a$a;-><init>(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/reward/adapter/c;IZLjava/lang/String;)V

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/reward/b/a$a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/mbridge/msdk/reward/b/a$a;->a(I)V

    new-instance v2, Lcom/mbridge/msdk/reward/b/a$b;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-direct {v2, p0, v3, p3}, Lcom/mbridge/msdk/reward/b/a$b;-><init>(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/reward/adapter/c;Z)V

    iput-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->a:Lcom/mbridge/msdk/reward/b/a$b;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/reward/b/a$b;->a(Lcom/mbridge/msdk/reward/b/a$a;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->a:Lcom/mbridge/msdk/reward/b/a$b;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/a;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/out/MBridgeIds;->setLocalRequestId(Ljava/lang/String;)V

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v7, p0, Lcom/mbridge/msdk/reward/b/a;->N:Z

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/mbridge/msdk/reward/adapter/c;->a(IIZLjava/lang/String;ZLjava/util/Map;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9a} :catch_9b

    goto :goto_cd

    :catch_9b
    move-exception p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_c6

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lez p2, :cond_c6

    new-instance v2, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v2, p3, p2}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_c6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->b(Ljava/lang/String;)V

    :goto_cd
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/b/a;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    if-eqz p2, :cond_2a

    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->aa:Z

    if-nez p0, :cond_2a

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/db/f;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/f;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/mbridge/msdk/foundation/db/f;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    goto :goto_2a

    :catchall_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RewardVideoController"

    invoke-static {p1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/b/a;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->S:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->S:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_18
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->R:Ljava/util/List;

    :cond_a
    return-void
.end method

.method private a(Ljava/util/Queue;ZLjava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x19

    const/4 v2, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_18

    :try_start_6
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_18

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_1a

    :cond_18
    const/16 v3, 0x19

    :goto_1a
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v0, "local_rid"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/out/MBridgeIds;->setLocalRequestId(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_84

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_2b
    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/reward/b/a;->a(IIZLjava/lang/String;Ljava/util/Map;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_30

    goto/16 :goto_b6

    :catch_30
    move-exception p1

    :try_start_31
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_84

    const-string p3, "load mv api error:"

    if-eqz p2, :cond_6d

    :try_start_37
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6d

    new-instance v2, Lcom/mbridge/msdk/foundation/entity/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v7, p2}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_6d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->b(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_83} :catch_84

    goto :goto_b6

    :catch_84
    move-exception p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string p3, "can\'t show because unknow error"

    if-eqz p2, :cond_ac

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lez p2, :cond_ac

    new-instance v2, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v2, v7, p3}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_ac
    invoke-direct {p0, p3}, Lcom/mbridge/msdk/reward/b/a;->b(Ljava/lang/String;)V

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_b6

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b6
    :goto_b6
    return-void
.end method

.method private a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/c;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lcom/mbridge/msdk/reward/adapter/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v0, 0x0

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v14, v1, 0x1

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v13

    iput-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->i:Z

    iput-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->j:Z

    iput-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->k:Z

    iput-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->l:Z

    iput-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->m:Z

    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lcom/mbridge/msdk/reward/adapter/b;

    move-result-object v8

    iget-object v9, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-boolean v12, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    iget-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz v0, :cond_35

    const/16 v0, 0x11f

    const/16 v16, 0x11f

    goto :goto_39

    :cond_35
    const/16 v0, 0x5e

    const/16 v16, 0x5e

    :goto_39
    iget-object v11, v7, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v10, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/mbridge/msdk/reward/b/a$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/reward/b/a$4;-><init>(Lcom/mbridge/msdk/reward/b/a;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/c;I)V

    new-instance v0, Lcom/mbridge/msdk/reward/b/a$5;

    invoke-direct {v0, v7, v14, v15, v13}, Lcom/mbridge/msdk/reward/b/a$5;-><init>(Lcom/mbridge/msdk/reward/b/a;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    move-object v1, v10

    move v10, v14

    move-object v2, v11

    move v11, v13

    move/from16 v20, v13

    move/from16 v13, v16

    move v5, v14

    move-object v14, v2

    move-object/from16 v21, v15

    move-object v15, v1

    move-object/from16 v16, v17

    move-object/from16 v17, p1

    move-object/from16 v19, v0

    invoke-virtual/range {v8 .. v19}, Lcom/mbridge/msdk/reward/adapter/b;->a(Landroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/b$c;Lcom/mbridge/msdk/reward/adapter/b$i;)V

    if-eqz v5, :cond_8f

    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lcom/mbridge/msdk/reward/adapter/b;

    move-result-object v8

    iget-object v9, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v11, v7, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v12, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/mbridge/msdk/reward/b/a$6;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/reward/b/a$6;-><init>(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/c;ZI)V

    move-object/from16 v10, v21

    invoke-virtual/range {v8 .. v14}, Lcom/mbridge/msdk/reward/adapter/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$i;)V

    :cond_8f
    return-void
.end method

.method private a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_be

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_be

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-boolean v3, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Z)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/reward/b/a$c;->e(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v4, :cond_52

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v3

    invoke-virtual {v4, p1, v5, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZI)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/List;)V

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/mbridge/msdk/reward/b/a$c;->b(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_52
    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-direct {p0, p1, v3}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/c;)V

    :goto_57
    :try_start_57
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v4

    iget-object v6, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    move-object v5, p3

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "cache"

    const-string v3, "1"

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object p2

    const-string v3, "2000127"

    invoke-virtual {p2, p3, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object p2

    const-string v3, "2000048"

    invoke-virtual {p2, p3, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-le p2, v1, :cond_a6

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/m;->b(Ljava/util/List;)V

    goto :goto_be

    :cond_a6
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object p2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_b3} :catch_b4

    goto :goto_be

    :catch_b4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RewardVideoController"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->P:Z

    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/b;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/b;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/mbridge/msdk/reward/adapter/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/adapter/c;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_3a
    return v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/b/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->af:Ljava/util/List;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-eqz p2, :cond_33

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_33
    return-object v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/b/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->ac:Z

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v1, p1, v0}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method private b(ZLjava/lang/String;Ljava/util/Map;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v0, "1"

    const-string v3, ""

    const-string v12, "2"

    const-string v4, "local_rid"

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v5, :cond_61e

    :try_start_14
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v1, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz v6, :cond_32

    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/d/c;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_32

    const-string v6, "rus_rid"

    iget-object v7, v1, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/d/c;->l()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-object v6, v1, Lcom/mbridge/msdk/reward/b/a;->r:Lcom/mbridge/msdk/videocommon/d/a;

    if-eqz v6, :cond_4b

    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/d/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string v6, "rs_rid"

    iget-object v7, v1, Lcom/mbridge/msdk/reward/b/a;->r:Lcom/mbridge/msdk/videocommon/d/a;

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/d/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    const-string v6, "r_stid"

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/d/b;->b()Lcom/mbridge/msdk/videocommon/d/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/d/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_71

    const-string v6, "isDev"

    if-eqz v2, :cond_64

    move-object v7, v12

    goto :goto_65

    :cond_64
    move-object v7, v0

    :goto_65
    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6e} :catch_7a

    :try_start_6e
    iput-object v6, v1, Lcom/mbridge/msdk/reward/b/a;->y:Ljava/lang/String;

    goto :goto_72

    :cond_71
    move-object v6, v3

    :goto_72
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_79} :catch_7b

    goto :goto_7b

    :catch_7a
    move-object v6, v3

    :catch_7b
    :goto_7b
    move-object v13, v6

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iget-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const/16 v6, 0x13

    const-string v15, "2000048"

    const-string v9, "2000127"

    const-string v8, "cache"

    const/16 v16, 0x0

    const-string v7, "checkOverCap failed"

    move-object/from16 v17, v12

    const/4 v12, 0x0

    if-nez v5, :cond_298

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-direct {v1, v5, v13}, Lcom/mbridge/msdk/reward/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iget-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    if-eqz v5, :cond_1ff

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->k()Z

    move-result v5

    if-nez v5, :cond_16a

    iget-object v7, v1, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_61e

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_61e

    :try_start_b0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v4

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "0"
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_d1} :catch_114

    move-object v3, v4

    move-object v4, v13

    move-object/from16 v16, v7

    move-object v7, v12

    move-object v12, v8

    move-object/from16 v8, p2

    :try_start_d9
    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v15, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_fe

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f8} :catch_111

    move-object/from16 v3, v16

    :try_start_fa
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/same/report/m;->b(Ljava/util/List;)V

    goto :goto_115

    :cond_fe
    move-object/from16 v3, v16

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10e} :catch_10f

    goto :goto_115

    :catch_10f
    nop

    goto :goto_115

    :catch_111
    move-object/from16 v3, v16

    goto :goto_115

    :catch_114
    move-object v3, v7

    :goto_115
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/mbridge/msdk/reward/b/a$c;->e(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/b/a$c;->a(Z)V

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v4, :cond_151

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v0

    invoke-virtual {v4, v3, v5, v0}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZI)Z

    move-result v0

    if-eqz v0, :cond_151

    invoke-direct {v1, v3}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/List;)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/mbridge/msdk/reward/b/a$c;->b(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_156

    :cond_151
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-direct {v1, v3, v0}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/c;)V

    :goto_156
    iget-boolean v0, v1, Lcom/mbridge/msdk/reward/b/a;->X:Z

    if-eqz v0, :cond_61e

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_163

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    :cond_163
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->U:Ljava/util/Queue;

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_61e

    :cond_16a
    move-object v12, v8

    const-string v0, "RewardVideoController"

    const-string v3, "\u975eBID\uff0c\u672c\u5730\u5b58\u5728\u53ef\u7528\u7684\u7f13\u5b58\uff0c\u8d85\u8fc7\u4e0a\u9650"

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_198

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_198

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_182
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_198

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v5

    iget-object v8, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v5, v3, v8}, Lcom/mbridge/msdk/videocommon/a/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    goto :goto_182

    :cond_198
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_1a1

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    :cond_1a1
    if-eqz v2, :cond_1db

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v0, :cond_1da

    new-instance v10, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v10, v6, v7}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_1bc

    :try_start_1ae
    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_1bc
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v11, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v13, ""

    const-string v14, ""

    invoke-static/range {v8 .. v14}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1ca} :catch_1cb

    goto :goto_1d3

    :catch_1cb
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_1d3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d3
    :goto_1d3
    move-object/from16 v0, v16

    iget-object v2, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v2, v7, v0}, Lcom/mbridge/msdk/reward/b/a$c;->d(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1da
    return-void

    :cond_1db
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Z)V

    move-object/from16 v8, v17

    invoke-interface {v14, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v15, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->U:Ljava/util/Queue;

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_61e

    :cond_1ff
    move-object v12, v8

    move-object/from16 v8, v17

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_233

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_214

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    :cond_214
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Z)V

    invoke-interface {v14, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v15, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->U:Ljava/util/Queue;

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_61e

    :cond_233
    if-eqz v2, :cond_26d

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v0, :cond_26c

    new-instance v10, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v10, v6, v7}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_24e

    :try_start_240
    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_24e
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v11, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v13, ""

    const-string v14, ""

    invoke-static/range {v8 .. v14}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_25c} :catch_25d

    goto :goto_265

    :catch_25d
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_265

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_265
    :goto_265
    move-object/from16 v0, v16

    iget-object v2, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v2, v7, v0}, Lcom/mbridge/msdk/reward/b/a$c;->d(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26c
    return-void

    :cond_26d
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_279

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    :cond_279
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Z)V

    invoke-interface {v14, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v15, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->U:Ljava/util/Queue;

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_61e

    :cond_298
    move-object v12, v8

    move-object/from16 v8, v17

    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    move-object/from16 v18, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v5, v8, v6, v3}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    const-string v3, "cb is open"

    const/16 v5, 0x15

    if-eqz v0, :cond_46a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_46a

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->k()Z

    move-result v6

    if-nez v6, :cond_424

    invoke-direct {v1, v10, v0}, Lcom/mbridge/msdk/reward/b/a;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v4, :cond_2cc

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2cc

    invoke-direct {v1, v4, v10, v13}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2cc
    new-instance v12, Lcom/mbridge/msdk/reward/a/a;

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-direct {v12, v4, v6}, Lcom/mbridge/msdk/reward/a/a;-><init>(Ljava/lang/String;Z)V

    :try_start_2d5
    new-instance v4, Lcom/mbridge/msdk/foundation/b/c;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/b/c;-><init>()V

    invoke-virtual {v12, v10}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3bd

    const/4 v6, 0x0

    new-instance v7, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v7, v5, v3}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    const/4 v8, 0x2

    iget-object v9, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    move-object v3, v12

    move-object/from16 v4, p2

    move-object v5, v13

    invoke-virtual/range {v3 .. v9}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/entity/e;ILcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/foundation/b/c;

    move-result-object v3

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-nez v4, :cond_30e

    new-instance v4, Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v6, v1, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/mbridge/msdk/reward/adapter/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->b(Z)V

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->c(Z)V

    :cond_30e
    iget-boolean v4, v1, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz v4, :cond_31d

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v5, v1, Lcom/mbridge/msdk/reward/b/a;->F:I

    iget v6, v1, Lcom/mbridge/msdk/reward/b/a;->G:I

    iget v7, v1, Lcom/mbridge/msdk/reward/b/a;->H:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(III)V

    :cond_31d
    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v5, v1, Lcom/mbridge/msdk/reward/b/a;->E:I

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(I)V

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/videocommon/d/c;)V

    if-eqz v3, :cond_3bb

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->e()I

    move-result v4

    sget v5, Lcom/mbridge/msdk/foundation/b/c;->c:I

    if-ne v4, v5, :cond_3bb

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v4, :cond_3bb

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3bb

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v4, :cond_3bb

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_356
    :goto_356
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v6, :cond_356

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_36f

    goto :goto_356

    :cond_36f
    const/4 v0, 0x0

    :goto_370
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_397

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v8, :cond_394

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_389

    goto :goto_397

    :cond_389
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v0, v8, :cond_394

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_394
    add-int/lit8 v0, v0, 0x1

    goto :goto_370

    :cond_397
    :goto_397
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3a0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a0
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/concurrent/CopyOnWriteArrayList;ZZ)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v0

    :cond_3bb
    move-object v6, v3

    goto :goto_3e3

    :cond_3bd
    invoke-direct {v1, v10, v0}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3
    :try_end_3c1
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_3c1} :catch_3f3

    :try_start_3c1
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d6

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/b;

    move-result-object v0

    invoke-virtual {v0, v10, v3}, Lcom/mbridge/msdk/foundation/db/b;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_3d6
    const-string v0, "cb is closed"

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/foundation/b/c;->e(Ljava/lang/String;)V

    sget v0, Lcom/mbridge/msdk/foundation/b/c;->d:I

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/foundation/b/c;->a(I)V
    :try_end_3e0
    .catch Ljava/lang/Exception; {:try_start_3c1 .. :try_end_3e0} :catch_3ef

    move-object/from16 v16, v3

    move-object v6, v4

    :goto_3e3
    :try_start_3e3
    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->x:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v12

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/b/c;Ljava/util/List;Lorg/json/JSONObject;I)V
    :try_end_3ee
    .catch Ljava/lang/Exception; {:try_start_3e3 .. :try_end_3ee} :catch_3f3

    goto :goto_3f7

    :catch_3ef
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_3f4

    :catch_3f3
    move-exception v0

    :goto_3f4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f7
    move-object/from16 v0, v16

    if-eqz v0, :cond_413

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_413

    invoke-direct {v1, v0, v10, v13}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v3, :cond_413

    invoke-virtual {v12, v10}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_413

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    :cond_413
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Z)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->U:Ljava/util/Queue;

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_61e

    :cond_424
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v3, v10}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_61e

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v0, :cond_61e

    new-instance v10, Lcom/mbridge/msdk/foundation/entity/e;

    const/16 v0, 0x13

    invoke-direct {v10, v0, v7}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_44a

    :try_start_43c
    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44a

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_44a
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v11, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v13, ""

    const-string v14, ""

    invoke-static/range {v8 .. v14}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_458
    .catch Ljava/lang/Exception; {:try_start_43c .. :try_end_458} :catch_459

    goto :goto_461

    :catch_459
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_461

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_461
    :goto_461
    move-object/from16 v0, v16

    iget-object v2, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v2, v7, v0}, Lcom/mbridge/msdk/reward/b/a$c;->d(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61e

    :cond_46a
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->k()Z

    move-result v6

    if-nez v6, :cond_5da

    new-instance v8, Lcom/mbridge/msdk/reward/a/a;

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-direct {v8, v4, v6}, Lcom/mbridge/msdk/reward/a/a;-><init>(Ljava/lang/String;Z)V

    :try_start_479
    new-instance v4, Lcom/mbridge/msdk/foundation/b/c;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/b/c;-><init>()V

    invoke-virtual {v8, v10}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56f

    const/4 v6, 0x0

    new-instance v7, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v7, v5, v3}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    const/16 v17, 0x2

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;
    :try_end_48e
    .catch Ljava/lang/Exception; {:try_start_479 .. :try_end_48e} :catch_58e

    move-object v3, v8

    move-object/from16 v4, p2

    move-object/from16 v19, v5

    move-object v5, v13

    move-object/from16 v20, v8

    move-object/from16 v21, v18

    move/from16 v8, v17

    move-object v2, v9

    move-object/from16 v9, v19

    :try_start_49d
    invoke-virtual/range {v3 .. v9}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/entity/e;ILcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/foundation/b/c;

    move-result-object v3

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-nez v4, :cond_4be

    new-instance v4, Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v6, v1, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/mbridge/msdk/reward/adapter/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->b(Z)V

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v5, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->c(Z)V

    :cond_4be
    iget-boolean v4, v1, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz v4, :cond_4cd

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v5, v1, Lcom/mbridge/msdk/reward/b/a;->F:I

    iget v6, v1, Lcom/mbridge/msdk/reward/b/a;->G:I

    iget v7, v1, Lcom/mbridge/msdk/reward/b/a;->H:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(III)V

    :cond_4cd
    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v5, v1, Lcom/mbridge/msdk/reward/b/a;->E:I

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(I)V

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/videocommon/d/c;)V

    if-eqz v3, :cond_56d

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->e()I

    move-result v4

    sget v5, Lcom/mbridge/msdk/foundation/b/c;->c:I

    if-ne v4, v5, :cond_56d

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v4, :cond_56d

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_56d

    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v4, :cond_56d

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v0, :cond_557

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_508
    :goto_508
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_552

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v6, :cond_508

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_521

    goto :goto_508

    :cond_521
    const/4 v0, 0x0

    :goto_522
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_549

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v8, :cond_546

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53b

    goto :goto_549

    :cond_53b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v0, v8, :cond_546

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_546
    add-int/lit8 v0, v0, 0x1

    goto :goto_522

    :cond_549
    :goto_549
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_552

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_552
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    :cond_557
    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/concurrent/CopyOnWriteArrayList;ZZ)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/b/c;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v0

    :cond_56d
    move-object v6, v3

    goto :goto_57f

    :cond_56f
    move-object/from16 v20, v8

    move-object v2, v9

    move-object/from16 v21, v18

    const-string v0, "cb is closed 2"

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/foundation/b/c;->e(Ljava/lang/String;)V

    sget v0, Lcom/mbridge/msdk/foundation/b/c;->d:I

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/foundation/b/c;->a(I)V

    move-object v6, v4

    :goto_57f
    iget-object v4, v1, Lcom/mbridge/msdk/reward/b/a;->x:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, v20

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/b/c;Ljava/util/List;Lorg/json/JSONObject;I)V
    :try_end_58b
    .catch Ljava/lang/Exception; {:try_start_49d .. :try_end_58b} :catch_58c

    goto :goto_597

    :catch_58c
    move-exception v0

    goto :goto_594

    :catch_58e
    move-exception v0

    move-object/from16 v20, v8

    move-object v2, v9

    move-object/from16 v21, v18

    :goto_594
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_597
    move-object/from16 v0, v16

    if-eqz v0, :cond_5b5

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5b5

    invoke-direct {v1, v0, v10, v13}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v3, :cond_5b5

    move-object/from16 v3, v20

    invoke-virtual {v3, v10}, Lcom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b5

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;)V

    :cond_5b5
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    iget-boolean v3, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Z)V

    move-object/from16 v3, v21

    invoke-interface {v14, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v2, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v0

    invoke-virtual {v0, v13, v15, v14}, Lcom/mbridge/msdk/foundation/same/report/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->U:Ljava/util/Queue;

    move/from16 v2, p1

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_61e

    :cond_5da
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v3, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v3, v10}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_61e

    iget-object v0, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v0, :cond_61e

    new-instance v10, Lcom/mbridge/msdk/foundation/entity/e;

    const/16 v0, 0x13

    invoke-direct {v10, v0, v7}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_600

    :try_start_5f2
    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_600

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_600
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v11, v1, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v13, ""

    const-string v14, ""

    invoke-static/range {v8 .. v14}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_60e
    .catch Ljava/lang/Exception; {:try_start_5f2 .. :try_end_60e} :catch_60f

    goto :goto_617

    :catch_60f
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_617

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_617
    :goto_617
    move-object/from16 v0, v16

    iget-object v2, v1, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v2, v7, v0}, Lcom/mbridge/msdk/reward/b/a$c;->d(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61e
    :goto_61e
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->Z:Z

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/reward/b/a;)Lcom/mbridge/msdk/reward/adapter/c;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .registers 16

    const-string v0, "local_rid"

    const-string v1, "1"

    const-string v2, "_"

    const-string v3, "RewardVideoController"

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_c
    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->r:Lcom/mbridge/msdk/videocommon/d/a;

    if-eqz v8, :cond_27

    invoke-virtual {v8}, Lcom/mbridge/msdk/videocommon/d/a;->j()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_27

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6e

    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/mbridge/msdk/reward/b/a;->o:I

    :cond_6e
    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-nez v8, :cond_75

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->j()V

    :cond_75
    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v8, :cond_f9

    const-string v8, "controller 819"

    invoke-static {v3, v8}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-eqz v8, :cond_87

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->h()Z

    move-result v8

    goto :goto_8d

    :cond_87
    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v8}, Lcom/mbridge/msdk/reward/adapter/c;->c()Z

    move-result v8

    :goto_8d
    if-eqz v8, :cond_c0

    iget v2, p0, Lcom/mbridge/msdk/reward/b/a;->o:I

    if-lt v2, v1, :cond_98

    if-lez v1, :cond_98

    iput-boolean v7, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    return-void

    :cond_98
    const-string v1, "invoke adapter show isReady"

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mbridge/msdk/reward/b/a$d;

    iget-object v12, p0, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v11, 0x1

    move-object v8, v1

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/mbridge/msdk/reward/b/a$d;-><init>(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/reward/b/a;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/b/a$1;)V

    sget-object v2, Lcom/mbridge/msdk/reward/b/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v11, p0, Lcom/mbridge/msdk/reward/b/a;->u:Ljava/lang/String;

    iget v12, p0, Lcom/mbridge/msdk/reward/b/a;->E:I

    iget-object v13, p0, Lcom/mbridge/msdk/reward/b/a;->z:Ljava/lang/String;

    move-object v9, v1

    move-object v10, p1

    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v7, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    return-void

    :cond_c0
    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-eqz v1, :cond_c9

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->i()Z

    move-result v1

    goto :goto_cf

    :cond_c9
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/adapter/c;->d()Z

    move-result v1

    :goto_cf
    if-eqz v1, :cond_f9

    const-string v1, "invoke adapter show isSpareOfferReady"

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mbridge/msdk/reward/b/a$d;

    iget-object v12, p0, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v11, 0x1

    move-object v8, v1

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/mbridge/msdk/reward/b/a$d;-><init>(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/reward/b/a;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/b/a$1;)V

    sget-object v2, Lcom/mbridge/msdk/reward/b/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v11, p0, Lcom/mbridge/msdk/reward/b/a;->u:Ljava/lang/String;

    iget v12, p0, Lcom/mbridge/msdk/reward/b/a;->E:I

    iget-object v13, p0, Lcom/mbridge/msdk/reward/b/a;->z:Ljava/lang/String;

    move-object v9, v1

    move-object v10, p1

    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v7, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    return-void

    :cond_f9
    iget v1, p0, Lcom/mbridge/msdk/reward/b/a;->o:I

    if-eqz v1, :cond_11e

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1, v2, v8}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->c(Ljava/lang/String;)V

    return-void

    :cond_11e
    iput-boolean v7, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_122} :catch_17e

    if-eqz p1, :cond_138

    :try_start_124
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object v1, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v8, "can\'t show because load is failed"

    invoke-interface {p1, v1, v2, v8}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12f} :catch_130

    goto :goto_138

    :catch_130
    move-exception p1

    :try_start_131
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_138

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_138
    :goto_138
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-nez p1, :cond_1e9

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-nez p1, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_1e9

    invoke-virtual {p1, v5}, Lcom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p1, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v6, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v4, :cond_1e9

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_163} :catch_17e

    :try_start_163
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "2000123"

    iget-object v9, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const-string v11, "auto_load"

    const/16 v12, 0x5e

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/mbridge/msdk/reward/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_17a} :catch_17a

    :catch_17a
    :try_start_17a
    invoke-virtual {p0, v7, p1}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/util/Map;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_17d} :catch_17e

    goto :goto_1e9

    :catch_17e
    move-exception p1

    iput-boolean v7, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_18c

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18c
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v1, :cond_1a4

    :try_start_190
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object v2, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v8, "show exception"

    invoke-interface {v1, v2, v3, v8}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_19b} :catch_19c

    goto :goto_1a4

    :catch_19c
    nop

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1a4

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a4
    :goto_1a4
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-nez p1, :cond_1e9

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-nez p1, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_1e9

    invoke-virtual {p1, v5}, Lcom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p1, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v6, :cond_1e9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v4, :cond_1e9

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :try_start_1cf
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "2000123"

    iget-object v9, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const-string v11, "auto_load"

    const/16 v12, 0x5e

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/mbridge/msdk/reward/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1e6} :catch_1e6

    :catch_1e6
    invoke-virtual {p0, v7, p1}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/util/Map;)V

    :cond_1e9
    :goto_1e9
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/reward/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->aa:Z

    return p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/adapter/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_e
    new-instance v0, Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/mbridge/msdk/reward/adapter/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->b(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->c(Z)V

    :cond_25
    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v1, p0, Lcom/mbridge/msdk/reward/b/a;->E:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->a(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/videocommon/d/c;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    nop

    :goto_35
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v1, p1, v2, v3}, Lcom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->af:Ljava/util/List;

    if-eqz v0, :cond_89

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_89

    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p1, :cond_67

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_6a

    :cond_67
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :goto_6a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setLocalRequestId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_83
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/List;)V

    return v2

    :cond_89
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_90
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic d(Lcom/mbridge/msdk/reward/b/a;)Lcom/mbridge/msdk/reward/b/a$c;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    return-object p0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/f;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/db/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/reward/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->ab:Z

    return p1
.end method

.method private e()V
    .registers 6

    const-string v0, "_"

    :try_start_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/f;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/db/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ab

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ab

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_a2
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a9} :catch_ab

    goto/16 :goto_1e

    :catch_ab
    :cond_ab
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->M:Z

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/reward/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->ac:Z

    return p1
.end method

.method static synthetic f(Lcom/mbridge/msdk/reward/b/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/d/c;->y()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_46

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/videocommon/b/b;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_42

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_46
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/reward/b/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .registers 11

    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/d/c;->y()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->r:Lcom/mbridge/msdk/videocommon/d/a;

    if-nez v2, :cond_16

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/d/b;->b()Lcom/mbridge/msdk/videocommon/d/a;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->r:Lcom/mbridge/msdk/videocommon/d/a;

    :cond_16
    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->r:Lcom/mbridge/msdk/videocommon/d/a;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/d/a;->j()Ljava/util/Map;

    move-result-object v2

    if-eqz v1, :cond_ab

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ab

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_ab

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/videocommon/b/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_6a

    :cond_69
    const/4 v6, 0x0

    :goto_6a
    iget-object v7, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_97

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_96} :catch_9e

    goto :goto_98

    :cond_97
    const/4 v5, 0x0

    :goto_98
    if-ge v5, v6, :cond_9b

    return v3

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardVideoController"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic h(Lcom/mbridge/msdk/reward/b/a;)Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    return-object p0
.end method

.method private h()Z
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->j()V

    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_58

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-direct {p0, v0, v2}, Lcom/mbridge/msdk/reward/b/a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    :cond_2a
    if-nez v1, :cond_58

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/b;

    if-eqz v2, :cond_30

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/b;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mbridge/msdk/reward/adapter/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/reward/adapter/c;->c()Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    :cond_58
    return v1
.end method

.method private i()Z
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->j()V

    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/b;

    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mbridge/msdk/reward/adapter/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/reward/adapter/c;->d()Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v0, 0x1

    return v0

    :cond_46
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_54
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic i(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    return p0
.end method

.method public static insertExcludeId(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz p1, :cond_3b

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/j;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/entity/f;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/entity/f;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/entity/f;->a(J)V

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/foundation/entity/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/foundation/entity/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/db/j;->a(Lcom/mbridge/msdk/foundation/entity/f;)V

    :cond_3b
    return-void
.end method

.method private j()V
    .registers 5

    new-instance v0, Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mbridge/msdk/reward/adapter/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->b(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->c(Z)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget v1, p0, Lcom/mbridge/msdk/reward/b/a;->F:I

    iget v2, p0, Lcom/mbridge/msdk/reward/b/a;->G:I

    iget v3, p0, Lcom/mbridge/msdk/reward/b/a;->H:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(III)V

    :cond_28
    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/videocommon/d/c;)V

    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/reward/b/a;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->P:Z

    if-nez v0, :cond_9

    goto :goto_34

    :cond_9
    invoke-virtual {p0}, Lcom/mbridge/msdk/reward/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_34

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_36

    :cond_34
    :goto_34
    const-string v0, ""

    :goto_36
    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/out/MBridgeIds;->setBidToken(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/reward/b/a;)Lcom/mbridge/msdk/out/MBridgeIds;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    return-object p0
.end method

.method private k()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;

    if-nez v1, :cond_13

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;

    :cond_13
    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/i;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/i;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-nez v2, :cond_33

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/d/c;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    :cond_33
    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/d/c;->d()I

    move-result v2

    if-eqz v1, :cond_4c

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/mbridge/msdk/foundation/db/i;->a(Ljava/lang/String;I)Z

    move-result v1
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_45

    if-eqz v1, :cond_4c

    const/4 v0, 0x1

    goto :goto_4c

    :catchall_45
    const-string v1, "RewardVideoController"

    const-string v2, "cap check error"

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return v0
.end method

.method static synthetic l(Lcom/mbridge/msdk/reward/b/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->R:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/reward/b/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/reward/b/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/reward/b/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/mbridge/msdk/reward/b/a;)Lcom/mbridge/msdk/videocommon/d/c;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    return-object p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/reward/b/a;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->O:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic r(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    return p0
.end method

.method static synthetic s(Lcom/mbridge/msdk/reward/b/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t(Lcom/mbridge/msdk/reward/b/a;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic u(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->N:Z

    return p0
.end method

.method static synthetic v(Lcom/mbridge/msdk/reward/b/a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/reward/b/a;->E:I

    return p0
.end method

.method static synthetic w(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->Z:Z

    return p0
.end method

.method static synthetic x(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->aa:Z

    return p0
.end method

.method static synthetic y(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->ab:Z

    return p0
.end method

.method static synthetic z(Lcom/mbridge/msdk/reward/b/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/reward/b/a;->ad:Z

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/b/a;->P:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/reward/b/a;->E:I

    return-void
.end method

.method public final a(III)V
    .registers 9

    iput p1, p0, Lcom/mbridge/msdk/reward/b/a;->F:I

    iput p2, p0, Lcom/mbridge/msdk/reward/b/a;->G:I

    sget v0, Lcom/mbridge/msdk/foundation/same/a;->r:I

    if-ne p2, v0, :cond_f

    if-gez p3, :cond_c

    const/4 v0, 0x5

    goto :goto_d

    :cond_c
    move v0, p3

    :goto_d
    iput v0, p0, Lcom/mbridge/msdk/reward/b/a;->H:I

    :cond_f
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->q:I

    if-ne p2, v0, :cond_1b

    if-gez p3, :cond_18

    const/16 v0, 0x50

    goto :goto_19

    :cond_18
    move v0, p3

    :goto_19
    iput v0, p0, Lcom/mbridge/msdk/reward/b/a;->H:I

    :cond_1b
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ivRewardEnable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ivRewardMode"

    sget v3, Lcom/mbridge/msdk/foundation/same/a;->o:I

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2f

    const/4 p1, 0x0

    goto :goto_30

    :cond_2f
    const/4 p1, 0x1

    :goto_30
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ivRewardPlayValueMode"

    sget v1, Lcom/mbridge/msdk/foundation/same/a;->q:I

    if-ne p2, v1, :cond_3a

    const/4 v2, 0x0

    :cond_3a
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ivRewardPlayValue"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ivreward_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_63} :catch_64

    goto :goto_6b

    :catch_64
    const-string p1, "RewardVideoController"

    const-string p2, "setIVRewardEnable to SP was ERROR"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V
    .registers 9

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    new-instance v6, Lcom/mbridge/msdk/reward/b/a$c;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/reward/b/a$c;-><init>(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;Ljava/lang/String;Lcom/mbridge/msdk/reward/b/a$1;)V

    iput-object v6, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->B:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/b/a;->z:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/MBridgeIds;->getLocalRequestId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    :cond_14
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->Q:Ljava/lang/Object;

    monitor-enter p2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_24e

    :try_start_17
    iget-boolean p3, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    if-eqz p3, :cond_35

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_24b

    if-eqz p1, :cond_33

    :try_start_1f
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object p3, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v5, "campaing is show progressing "

    invoke-interface {p1, p3, v4, v5}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_24b

    goto :goto_33

    :catch_2b
    move-exception p1

    :try_start_2c
    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p3, :cond_33

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    monitor-exit p2

    return-void

    :cond_35
    iput-boolean v2, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_24b

    :try_start_38
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p2, :cond_aa

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p2}, Lcom/mbridge/msdk/reward/b/a$c;->b(Lcom/mbridge/msdk/reward/b/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p2, v2, :cond_aa

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4a} :catch_24e

    if-eqz p1, :cond_60

    :try_start_4c
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object p2, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v4, "campaing is loading"

    invoke-interface {p1, p2, p3, v4}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_57} :catch_58

    goto :goto_60

    :catch_58
    move-exception p1

    :try_start_59
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_60

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    :goto_60
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-nez p1, :cond_a7

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-nez p1, :cond_a7

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_a7

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v2, :cond_a7

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v0, :cond_a7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_8b} :catch_24e

    :try_start_8b
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "local_rid"

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "2000123"

    iget-object v5, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const-string v7, "auto_load"

    const/16 v8, 0x5e

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/reward/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a4} :catch_a4

    :catch_a4
    :try_start_a4
    invoke-virtual {p0, v3, p1}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/util/Map;)V

    :cond_a7
    iput-boolean v3, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    return-void

    :cond_aa
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    if-nez p2, :cond_110

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b0} :catch_24e

    if-eqz p1, :cond_c6

    :try_start_b2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object p2, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v4, "context is null"

    invoke-interface {p1, p2, p3, v4}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bd} :catch_be

    goto :goto_c6

    :catch_be
    move-exception p1

    :try_start_bf
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_c6

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c6
    :goto_c6
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-nez p1, :cond_10d

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-nez p1, :cond_10d

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_10d

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_10d

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p1, :cond_10d

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v2, :cond_10d

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v0, :cond_10d

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_f1} :catch_24e

    :try_start_f1
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "local_rid"

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "2000123"

    iget-object v5, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const-string v7, "auto_load"

    const/16 v8, 0x5e

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/reward/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_10a} :catch_10a

    :catch_10a
    :try_start_10a
    invoke-virtual {p0, v3, p1}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/util/Map;)V

    :cond_10d
    iput-boolean v3, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    return-void

    :cond_110
    iget-boolean p3, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz p3, :cond_17c

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/af;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_17c

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_11c} :catch_24e

    if-eqz p1, :cond_132

    :try_start_11e
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object p2, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v4, "network exception"

    invoke-interface {p1, p2, p3, v4}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_129} :catch_12a

    goto :goto_132

    :catch_12a
    move-exception p1

    :try_start_12b
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_132

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_132
    :goto_132
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-nez p1, :cond_179

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-nez p1, :cond_179

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_179

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_179

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p1, :cond_179

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v2, :cond_179

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v0, :cond_179

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_15d} :catch_24e

    :try_start_15d
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "local_rid"

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "2000123"

    iget-object v5, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const-string v7, "auto_load"

    const/16 v8, 0x5e

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/reward/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_176} :catch_176

    :catch_176
    :try_start_176
    invoke-virtual {p0, v3, p1}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/util/Map;)V

    :cond_179
    iput-boolean v3, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    return-void

    :cond_17c
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->k()Z

    move-result p2

    if-eqz p2, :cond_1e4

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_184} :catch_24e

    if-eqz p1, :cond_19a

    :try_start_186
    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object p2, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v4, "Play more than limit"

    invoke-interface {p1, p2, p3, v4}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_191} :catch_192

    goto :goto_19a

    :catch_192
    move-exception p1

    :try_start_193
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_19a

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19a
    :goto_19a
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-nez p1, :cond_1e1

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-nez p1, :cond_1e1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_1e1

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_1e1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p1, :cond_1e1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v2, :cond_1e1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v0, :cond_1e1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1c5} :catch_24e

    :try_start_1c5
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "local_rid"

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "2000123"

    iget-object v5, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const-string v7, "auto_load"

    const/16 v8, 0x5e

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/reward/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1de} :catch_1de

    :catch_1de
    :try_start_1de
    invoke-virtual {p0, v3, p1}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/util/Map;)V

    :cond_1e1
    iput-boolean v3, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    return-void

    :cond_1e4
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->u:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/g;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->u:Ljava/lang/String;
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1f2} :catch_24e

    :cond_1f2
    :try_start_1f2
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "dd"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    const-string v4, "reward_date"

    const-string v5, "0"

    invoke-static {p3, v4, v5}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_246

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_246

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_246

    iget-object p3, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    const-string v4, "reward_date"

    invoke-static {p3, v4, p2}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_246} :catch_246

    :catch_246
    :cond_246
    :try_start_246
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/b/a;->c(Ljava/lang/String;)V
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_249} :catch_24e

    goto/16 :goto_2bd

    :catchall_24b
    move-exception p1

    :try_start_24c
    monitor-exit p2
    :try_end_24d
    .catchall {:try_start_24c .. :try_end_24d} :catchall_24b

    :try_start_24d
    throw p1
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_24e} :catch_24e

    :catch_24e
    move-exception p1

    iput-boolean v3, p0, Lcom/mbridge/msdk/reward/b/a;->e:Z

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_25e

    const-string p2, "RewardVideoController"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25e
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz p2, :cond_276

    :try_start_262
    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->s:Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    sget-object p3, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    const-string v5, "show exception"

    invoke-interface {p2, p3, v4, v5}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_26d} :catch_26e

    goto :goto_276

    :catch_26e
    nop

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_276

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_276
    :goto_276
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-nez p1, :cond_2bd

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-nez p1, :cond_2bd

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_2bd

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_2bd

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz p1, :cond_2bd

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v2, :cond_2bd

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result p1

    if-eq p1, v0, :cond_2bd

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :try_start_2a1
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "local_rid"

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "2000123"

    iget-object v5, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const-string v7, "auto_load"

    const/16 v8, 0x5e

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/reward/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2ba} :catch_2ba

    :catch_2ba
    invoke-virtual {p0, v3, p1}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/util/Map;)V

    :cond_2bd
    :goto_2bd
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MBridge_ConfirmTitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MBridge_ConfirmContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MBridge_CancelText"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p4}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_66
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_88

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MBridge_ConfirmText"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_88
    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->I:Z

    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/util/Map;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "load exception"

    const-string v11, "bidToken is empty"

    const-string v0, "init error"

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-nez v1, :cond_20

    new-instance v12, Lcom/mbridge/msdk/reward/b/a$c;

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    iget-object v5, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/reward/b/a$c;-><init>(Lcom/mbridge/msdk/reward/b/a;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;Ljava/lang/String;Lcom/mbridge/msdk/reward/b/a$1;)V

    iput-object v12, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    :cond_20
    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "local_rid"

    if-eqz v1, :cond_76

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result v1

    if-ne v1, v3, :cond_76

    iget-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->M:Z

    if-eqz v0, :cond_71

    if-eqz v8, :cond_75

    new-instance v0, Lcom/mbridge/msdk/foundation/entity/e;

    const/16 v1, 0x10

    const-string v3, "errorCode: 3501 errorMessage: current unit is loading"

    invoke-direct {v0, v1, v3}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    if-eqz v9, :cond_58

    :try_start_41
    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v13, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v14, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v15, ""

    const-string v16, ""

    move-object v12, v0

    invoke-static/range {v10 .. v16}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_56} :catch_57

    goto :goto_58

    :catch_57
    nop

    :cond_58
    :goto_58
    if-eqz v9, :cond_67

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_67
    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/reward/b/a$c;->c(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :cond_71
    if-eqz v8, :cond_75

    iput-boolean v8, v7, Lcom/mbridge/msdk/reward/b/a;->M:Z

    :cond_75
    :goto_75
    return-void

    :cond_76
    if-eqz v9, :cond_86

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->x:Ljava/lang/String;

    :cond_86
    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    const/4 v5, 0x0

    if-eqz v1, :cond_97

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;)I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_97

    iput-boolean v5, v7, Lcom/mbridge/msdk/reward/b/a;->X:Z

    goto :goto_a2

    :cond_97
    iput-boolean v3, v7, Lcom/mbridge/msdk/reward/b/a;->X:Z

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v1, :cond_a2

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v1, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;I)V

    :cond_a2
    :goto_a2
    iput-boolean v8, v7, Lcom/mbridge/msdk/reward/b/a;->M:Z

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    const v6, 0xf4629

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, v7, Lcom/mbridge/msdk/reward/b/a;->aa:Z

    iput-boolean v5, v7, Lcom/mbridge/msdk/reward/b/a;->Z:Z

    iput-boolean v5, v7, Lcom/mbridge/msdk/reward/b/a;->ab:Z

    iput-boolean v5, v7, Lcom/mbridge/msdk/reward/b/a;->ac:Z

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->e()V

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->d()V

    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lcom/mbridge/msdk/reward/adapter/b;

    :try_start_bd
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_de

    iget-boolean v1, v7, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz v1, :cond_d3

    invoke-static {}, Lcom/mbridge/msdk/d/b;->getInstance()Lcom/mbridge/msdk/d/b;

    move-result-object v1

    iget-object v6, v7, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v12, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v6, v12}, Lcom/mbridge/msdk/d/b;->addInterstitialList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de

    :cond_d3
    invoke-static {}, Lcom/mbridge/msdk/d/b;->getInstance()Lcom/mbridge/msdk/d/b;

    move-result-object v1

    iget-object v6, v7, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v12, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v6, v12}, Lcom/mbridge/msdk/d/b;->addRewardList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    :goto_de
    iget-boolean v1, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    if-eqz v1, :cond_138

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_138

    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ea} :catch_28c

    if-eqz v0, :cond_137

    :try_start_ec
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adtp"

    iget-boolean v6, v7, Lcom/mbridge/msdk/reward/b/a;->I:Z

    if-eqz v6, :cond_fa

    const/16 v6, 0x11f

    goto :goto_fc

    :cond_fa
    const/16 v6, 0x5e

    :goto_fc
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v14, v5, v11, v0}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    const/4 v12, 0x0

    iget-object v13, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v15, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v0, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v17, ""

    const-string v18, ""

    move/from16 v16, v0

    invoke-static/range {v12 .. v18}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_ec .. :try_end_118} :catchall_119

    goto :goto_123

    :catchall_119
    move-exception v0

    :try_start_11a
    const-string v1, "RewardVideoController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_123
    if-eqz v9, :cond_132

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_132
    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v0, v11, v2}, Lcom/mbridge/msdk/reward/b/a$c;->d(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_137
    return-void

    :cond_138
    sget-object v1, Lcom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    if-nez v1, :cond_189

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v1, :cond_188

    new-instance v12, Lcom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v12, v5, v0}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_166

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_166

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v11, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v13, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v14, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v15, ""

    const-string v16, ""

    invoke-static/range {v10 .. v16}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_174

    :cond_166
    const/4 v10, 0x0

    iget-object v11, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v13, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v14, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v15, ""

    const-string v16, ""

    invoke-static/range {v10 .. v16}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_174
    if-eqz v9, :cond_183

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_183
    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/reward/b/a$c;->d(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_188
    return-void

    :cond_189
    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/d/c;

    move-result-object v0

    iput-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    if-nez v0, :cond_1d7

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->V:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->V:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    new-instance v11, Lcom/mbridge/msdk/reward/b/a$3;

    invoke-direct {v11, v7}, Lcom/mbridge/msdk/reward/b/a$3;-><init>(Lcom/mbridge/msdk/reward/b/a;)V

    invoke-virtual {v0, v1, v2, v6, v11}, Lcom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/videocommon/c/c;)V

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v6, v7, Lcom/mbridge/msdk/reward/b/a;->I:Z

    invoke-virtual {v0, v1, v2, v6}, Lcom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/d/c;

    move-result-object v0

    iput-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    :cond_1d7
    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e6

    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/d/c;->b(Ljava/lang/String;)V

    :cond_1e6
    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/d/c;->G()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->D:Landroid/os/Handler;

    if-eqz v1, :cond_1f9

    const v2, 0xf462a

    int-to-long v11, v0

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1f9
    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->q:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/d/c;->C()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->U:Ljava/util/Queue;
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_201} :catch_28c

    :try_start_201
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_213

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/reward/b/a;->f()V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_20a} :catch_20b

    goto :goto_213

    :catch_20b
    move-exception v0

    :try_start_20c
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_213

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_213} :catch_28c

    :cond_213
    :goto_213
    :try_start_213
    invoke-direct/range {p0 .. p3}, Lcom/mbridge/msdk/reward/b/a;->b(ZLjava/lang/String;Ljava/util/Map;)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_216} :catch_218

    goto/16 :goto_2dc

    :catch_218
    move-exception v0

    move-object v1, v0

    :try_start_21a
    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_253

    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_253

    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v12, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v15, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v16, ""

    const-string v17, ""

    const-wide/16 v18, 0x0

    invoke-static/range {v11 .. v19}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_253} :catch_253

    :catch_253
    :cond_253
    :try_start_253
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v10}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    if-eqz v9, :cond_282

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_282

    const/16 v20, 0x0

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v2, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v4, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v25, ""

    const-string v26, ""

    move-object/from16 v21, v1

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v24, v4

    invoke-static/range {v20 .. v26}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_279} :catch_27a

    goto :goto_282

    :catch_27a
    move-exception v0

    :try_start_27b
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_282

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_282
    :goto_282
    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v0, :cond_2dc

    iget-object v0, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-static {v0, v10, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Z)V
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_28b} :catch_28c

    goto :goto_2dc

    :catch_28c
    move-exception v0

    iget-object v1, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    if-eqz v1, :cond_2d5

    new-instance v1, Lcom/mbridge/msdk/foundation/entity/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/mbridge/msdk/foundation/entity/e;-><init>(ILjava/lang/String;)V

    iget-object v2, v7, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2cc

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2cc

    iget-object v2, v7, Lcom/mbridge/msdk/reward/b/a;->ae:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v9, v7, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iget-object v11, v7, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iget-boolean v12, v7, Lcom/mbridge/msdk/reward/b/a;->J:Z

    const-string v13, ""

    const-string v14, ""

    move-object v10, v1

    invoke-static/range {v8 .. v14}, Lcom/mbridge/msdk/reward/c/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2cc
    iget-object v2, v7, Lcom/mbridge/msdk/reward/b/a;->t:Lcom/mbridge/msdk/reward/b/a$c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/mbridge/msdk/reward/b/a$c;->a(Lcom/mbridge/msdk/reward/b/a$c;Ljava/lang/String;Z)V

    :cond_2d5
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2dc

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2dc
    :goto_2dc
    return-void
.end method

.method public final a(ZLjava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/mbridge/msdk/reward/b/a;->a(ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/adapter/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->n:Landroid/content/Context;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    new-instance p1, Lcom/mbridge/msdk/out/MBridgeIds;

    iget-object p2, p0, Lcom/mbridge/msdk/reward/b/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->v:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    sget-object p1, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->w:Lcom/mbridge/msdk/out/MBridgeIds;

    sget-object p2, Lcom/mbridge/msdk/reward/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/out/MBridgeIds;->setLocalRequestId(Ljava/lang/String;)V

    :cond_28
    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/d/b;->b()Lcom/mbridge/msdk/videocommon/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->r:Lcom/mbridge/msdk/videocommon/d/a;

    new-instance p1, Lcom/mbridge/msdk/reward/b/a$2;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/reward/b/a$2;-><init>(Lcom/mbridge/msdk/reward/b/a;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;

    if-nez p1, :cond_5b

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/reward/b/a;->W:Lcom/mbridge/msdk/foundation/db/h;
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_51

    goto :goto_5b

    :catchall_51
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RewardVideoController"

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z

    return-void
.end method

.method public final c()V
    .registers 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->P:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/mbridge/msdk/reward/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/mbridge/msdk/reward/b/a;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/mbridge/msdk/reward/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/b/a;->N:Z

    return-void
.end method

.method public final d(Z)Z
    .registers 4

    const/4 p1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/b/a;->J:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2a

    if-eqz v0, :cond_10

    :try_start_b
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->h()Z

    move-result p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_32
    .catchall {:try_start_b .. :try_end_f} :catchall_2a

    goto :goto_32

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/b/a;->j()V

    :cond_17
    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/adapter/c;->c()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/mbridge/msdk/reward/b/a;->p:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/adapter/c;->d()Z

    move-result p1
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2a

    goto :goto_32

    :cond_28
    move p1, v0

    goto :goto_32

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_32
    :cond_32
    :goto_32
    return p1
.end method
