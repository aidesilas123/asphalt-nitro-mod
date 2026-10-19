###### Class com.mbridge.msdk.videocommon.download.n (com.mbridge.msdk.videocommon.download.n)
.class public final Lcom/mbridge/msdk/videocommon/download/n;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"


# instance fields
.field a:Lcom/mbridge/msdk/c/h;

.field b:Lcom/mbridge/msdk/c/h;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/mbridge/msdk/videocommon/listener/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/listener/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/mbridge/msdk/videocommon/download/d;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Context;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Lcom/mbridge/msdk/videocommon/d/c;

.field private o:I

.field private p:I

.field private q:Lcom/mbridge/msdk/videocommon/download/m;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->f:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/n$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/videocommon/download/n$1;-><init>(Lcom/mbridge/msdk/videocommon/download/n;)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->h:Lcom/mbridge/msdk/videocommon/download/d;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    :try_start_2c
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/l$a;->a()Lcom/mbridge/msdk/videocommon/download/l;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/mbridge/msdk/videocommon/download/l;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_49

    iput-object p4, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    iput p5, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/m;

    invoke-direct {v0, p2, p4, p5}, Lcom/mbridge/msdk/videocommon/download/m;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_43} :catch_44

    return-void

    :catch_44
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    :cond_49
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->j:Landroid/content/Context;

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    if-eqz p1, :cond_5c

    if-eqz p2, :cond_5c

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/n;->k:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    iput p5, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/n;->b(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->f:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/n$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/videocommon/download/n$1;-><init>(Lcom/mbridge/msdk/videocommon/download/n;)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->h:Lcom/mbridge/msdk/videocommon/download/d;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    :try_start_2c
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/l$a;->a()Lcom/mbridge/msdk/videocommon/download/l;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/mbridge/msdk/videocommon/download/l;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_49

    iput-object p4, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    iput p5, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/m;

    invoke-direct {v0, p2, p4, p5}, Lcom/mbridge/msdk/videocommon/download/m;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_43} :catch_44

    return-void

    :catch_44
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    :cond_49
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->j:Landroid/content/Context;

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    if-eqz p1, :cond_5c

    if-eqz p2, :cond_5c

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5c
    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/n;->k:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    iput p5, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/n;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/n;)Lcom/mbridge/msdk/videocommon/listener/a;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/n;->e:Lcom/mbridge/msdk/videocommon/listener/a;

    return-object p0
.end method

.method private a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2e

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p1, "UnitCacheCtroller"

    const-string p2, "Is not check template download status"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_46

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result p1

    if-nez p1, :cond_46

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/g;->a()Lcom/mbridge/msdk/videocommon/download/g;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_46

    const/4 p1, 0x0

    return p1

    :cond_46
    return v0
.end method

.method public static a(Lcom/mbridge/msdk/videocommon/download/a;I)Z
    .registers 11

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->l()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->i()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1b

    const-string p0, "UnitCacheCtroller"

    const-string p1, "checkVideoDownload video done return true"

    invoke-static {p0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1b
    const/4 v4, 0x0

    if-nez p1, :cond_33

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    return v5

    :cond_33
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_55

    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    int-to-long v6, p1

    mul-long v2, v2, v6

    cmp-long v6, v0, v2

    if-ltz v6, :cond_55

    const/16 v0, 0x64

    if-ne p1, v0, :cond_54

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_50

    return v5

    :cond_50
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    return v4

    :cond_54
    return v5

    :cond_55
    return v4
.end method

.method private static a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z
    .registers 12

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->l()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->i()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "UnitCacheCtroller"

    const/4 v6, 0x1

    if-eqz v4, :cond_1b

    const-string p0, "checkVideoDownload video done return true"

    invoke-static {v5, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_1b
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    if-eqz v4, :cond_75

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_46

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_46

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    const-string p0, "Is not check video download status"

    invoke-static {v5, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_46
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getIsTimeoutCheckVideoStatus()I

    move-result v5

    if-ne v5, v6, :cond_53

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCheckType()I

    move-result v5

    if-ne v5, v6, :cond_53

    return v6

    :cond_53
    if-eqz p2, :cond_75

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCheckType()I

    move-result p2

    if-ne p2, v6, :cond_75

    if-nez p1, :cond_5e

    return v6

    :cond_5e
    const-wide/16 v7, 0x0

    cmp-long p2, v2, v7

    if-nez p2, :cond_68

    cmp-long p2, v0, v7

    if-eqz p2, :cond_75

    :cond_68
    div-int/lit8 p2, p1, 0x64

    int-to-long v7, p2

    mul-long v7, v7, v2

    cmp-long p2, v0, v7

    if-ltz p2, :cond_75

    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setIsTimeoutCheckVideoStatus(I)V

    return v6

    :cond_75
    invoke-static {p0, p1}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/n;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .registers 7

    const-string v0, "UnitCacheCtroller"

    :try_start_2
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_37

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is not check endCard download status : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_37
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/af;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/ak;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    return v2

    :cond_4b
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/videocommon/download/n;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result p1
    :try_end_4f
    .catchall {:try_start_2 .. :try_end_4f} :catchall_52

    if-eqz p1, :cond_5a

    return v2

    :catchall_52
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5a
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_13

    goto :goto_4

    :cond_13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_35

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    return v2

    :catchall_35
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3d
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v1

    if-eq v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v0

    goto :goto_12

    :cond_e
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/n;->e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    :cond_12
    :goto_12
    return v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/videocommon/download/n;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_21f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_21f

    :cond_a
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLRid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->f:Ljava/lang/String;

    :cond_1d
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/n;->e()V

    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/n;->d()V

    iget v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v2, 0x5e

    const/16 v3, 0x11f

    const/4 v4, 0x1

    if-eq v1, v4, :cond_ff

    if-eq v1, v3, :cond_b2

    const/16 v5, 0x12a

    if-eq v1, v5, :cond_74

    if-eq v1, v2, :cond_b2

    const/16 v5, 0x5f

    if-eq v1, v5, :cond_3a

    goto/16 :goto_137

    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_137

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/mbridge/msdk/c/f;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/mbridge/msdk/c/h;->e(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v1

    :cond_5c
    if-eqz v1, :cond_137

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/h;->i()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/h;->k()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6a} :catch_6c

    goto/16 :goto_137

    :catch_6c
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put feeds jar into your project"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_74
    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/mbridge/msdk/c/f;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    if-nez v1, :cond_9e

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/mbridge/msdk/c/f;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    :cond_9e
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    if-eqz v1, :cond_137

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/h;->i()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/h;->k()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    goto/16 :goto_137

    :cond_b2
    :try_start_b2
    const-string v1, "com.mbridge.msdk.videocommon.d.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/d/b;->b()Lcom/mbridge/msdk/videocommon/d/a;

    move-result-object v1

    if-nez v1, :cond_c8

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/videocommon/d/b;->c()Lcom/mbridge/msdk/videocommon/d/a;

    :cond_c8
    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/d/a;->g()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    :cond_d0
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ec

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/d/c;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    :cond_ec
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz v1, :cond_137

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/d/c;->w()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_f6} :catch_f7

    goto :goto_137

    :catch_f7
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put reward jar into your project"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ff
    :try_start_ff
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_137

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/mbridge/msdk/c/f;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    if-nez v1, :cond_125

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/mbridge/msdk/c/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    :cond_125
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    if-eqz v1, :cond_137

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/h;->i()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/h;->k()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_137} :catch_218

    :cond_137
    :goto_137
    const/4 v1, 0x0

    :goto_138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_208

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v5, :cond_204

    iget v6, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    if-eq v6, v2, :cond_16c

    if-ne v6, v3, :cond_14d

    goto :goto_16c

    :cond_14d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_18a

    :cond_16c
    :goto_16c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_18a
    invoke-direct {p0, v5}, Lcom/mbridge/msdk/videocommon/download/n;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v7

    if-nez v7, :cond_19b

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19b

    goto :goto_204

    :cond_19b
    iget-object v7, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_204

    monitor-enter v7

    const/4 v8, 0x0

    :goto_1a1
    :try_start_1a1
    iget-object v9, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1da

    iget-object v9, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_1d7

    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d7

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v10, v5}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget v11, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    invoke-virtual {v10, v11}, Lcom/mbridge/msdk/videocommon/download/a;->a(I)V

    invoke-virtual {v10, v0}, Lcom/mbridge/msdk/videocommon/download/a;->e(Z)V

    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    goto :goto_1db

    :cond_1d7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a1

    :cond_1da
    const/4 v8, 0x0

    :goto_1db
    if-nez v8, :cond_1ff

    new-instance v8, Lcom/mbridge/msdk/videocommon/download/a;

    iget-object v9, p0, Lcom/mbridge/msdk/videocommon/download/n;->j:Landroid/content/Context;

    iget-object v10, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    iget v11, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    invoke-direct {v8, v9, v5, v10, v11}, Lcom/mbridge/msdk/videocommon/download/a;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    iget v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/videocommon/download/a;->a(I)V

    iget v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    invoke-virtual {v8, v5}, Lcom/mbridge/msdk/videocommon/download/a;->d(I)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ff
    .catchall {:try_start_1a1 .. :try_end_1ff} :catchall_1ff

    :catchall_1ff
    :cond_1ff
    :try_start_1ff
    monitor-exit v7

    goto :goto_204

    :catchall_201
    move-exception p1

    monitor-exit v7
    :try_end_203
    .catchall {:try_start_1ff .. :try_end_203} :catchall_201

    throw p1

    :cond_204
    :goto_204
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_138

    :cond_208
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    if-eqz p1, :cond_217

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_217

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_217
    return-void

    :catch_218
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put native video jar into your project"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21f
    :goto_21f
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .registers 5

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6f

    :cond_e
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v0

    if-ne v0, v1, :cond_1b

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/videocommon/download/n;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    :cond_1b
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_51

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is not check endCard download status : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnitCacheCtroller"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_51
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/g;->a()Lcom/mbridge/msdk/videocommon/download/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_60

    return v1

    :cond_60
    sget-object p2, Lcom/mbridge/msdk/videocommon/download/h$a;->a:Lcom/mbridge/msdk/videocommon/download/h;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6d

    return v1

    :cond_6d
    const/4 p1, 0x0

    return p1

    :cond_6f
    :goto_6f
    return v1
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .registers 3

    if-eqz p1, :cond_13

    :try_start_2
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    const/4 p1, 0x1

    return p1

    :catchall_b
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .registers 3

    const/16 p1, 0x64

    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/h;->f()I

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return p1
.end method

.method private d()V
    .registers 15

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v0

    const-string v1, "u_n_c_e_d"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    :try_start_1c
    monitor-enter v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_9f

    :try_start_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    :goto_22
    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9a

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3a
    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mbridge/msdk/videocommon/download/a;

    if-nez v7, :cond_4f

    goto :goto_3a

    :cond_4f
    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->g()J

    move-result-wide v8

    sub-long v8, v3, v8

    iget-wide v10, p0, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    cmp-long v12, v8, v10

    if-lez v12, :cond_79

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    if-ne v8, v2, :cond_79

    const-string v8, "download timeout"

    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    iget v8, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/videocommon/download/a;->a(I)V

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    iget-object v8, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    :cond_79
    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    if-eq v8, v2, :cond_3a

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_3a

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    if-eqz v8, :cond_3a

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    iget-object v7, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3a

    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_9a
    monitor-exit v0

    goto :goto_a3

    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_1d .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a3
    return-void
.end method

.method private e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v1, 0x12a

    if-ne v0, v1, :cond_27

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    if-nez p1, :cond_20

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/c/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    :cond_20
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/h;->f()I

    move-result p1

    return p1

    :cond_27
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_35

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/n;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result p1

    return p1

    :cond_35
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    if-nez p1, :cond_4e

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    :cond_4e
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/d/c;->r()I

    move-result p1
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    return p1

    :catchall_55
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitCacheCtroller"

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x64

    return p1
.end method

.method private e()V
    .registers 7

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_59

    :try_start_4
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_52

    const/4 v1, 0x0

    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    if-nez v5, :cond_39

    goto :goto_1e

    :cond_39
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->q()V

    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4d
    monitor-exit v0

    goto :goto_59

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    const-string v0, "UnitCacheCtroller"

    const-string v1, "cleanDisplayTask ERROR"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method public final a(IZ)Lcom/mbridge/msdk/videocommon/download/a;
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    iget-boolean v3, v1, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/download/m;->b()Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_28c

    monitor-enter v3

    :try_start_19
    iget v5, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    const/4 v8, 0x1

    if-eq v5, v7, :cond_33

    if-ne v5, v6, :cond_25

    goto :goto_33

    :cond_25
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v5

    iget-object v9, v1, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_283
    .catchall {:try_start_19 .. :try_end_2f} :catchall_281

    if-nez v5, :cond_71

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_281

    return-object v4

    :cond_33
    :goto_33
    :try_start_33
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v5

    iget-object v9, v1, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v5, v9, v8, v2}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_45

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_55

    :cond_45
    if-eq v0, v7, :cond_49

    if-ne v0, v6, :cond_55

    :cond_49
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object v5

    iget-object v9, v1, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v5, v9, v8, v2, v10}, Lcom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    :cond_55
    if-eqz v5, :cond_277

    const-string v9, "UnitCacheCtroller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnitCache isReady campaignList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v12, 0x0

    :goto_76
    iget-object v13, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_287

    iget-object v13, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_268

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v15, :cond_25b

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v16

    if-nez v16, :cond_aa

    goto/16 :goto_25b

    :cond_aa
    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    :goto_b4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v8}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    const/16 v18, 0x1

    :cond_d0
    const/4 v4, 0x0

    goto :goto_b4

    :cond_d2
    if-nez v18, :cond_d6

    goto/16 :goto_25b

    :cond_d6
    if-eqz v2, :cond_de

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_25b

    :cond_de
    if-nez v2, :cond_e8

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_e8

    goto/16 :goto_25b

    :cond_e8
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v11

    const-string v17, ""

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v18

    if-eqz v18, :cond_100

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v17

    :cond_100
    move-object/from16 v18, v17

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    iget v6, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    if-eq v6, v7, :cond_10d

    const/16 v6, 0x11f

    if-ne v0, v6, :cond_14f

    :cond_10d
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_126

    const-string v6, "cmpt=1"

    move-object/from16 v7, v18

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_126

    iget v6, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    invoke-direct {v1, v6, v8, v7}, Lcom/mbridge/msdk/videocommon/download/n;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_126

    goto :goto_135

    :cond_126
    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/n;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    if-eqz v6, :cond_14f

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v6

    if-eqz v6, :cond_13b

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->q()V

    :cond_135
    :goto_135
    move-object v0, v5

    const/4 v5, 0x1

    const/16 v7, 0x5e

    goto/16 :goto_25d

    :cond_13b
    invoke-static {v11}, Lcom/mbridge/msdk/foundation/tools/ak;->a(Ljava/lang/String;)Z

    move-result v6
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_13f} :catch_283
    .catchall {:try_start_33 .. :try_end_13f} :catchall_281

    if-eqz v6, :cond_143

    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_281

    return-object v15

    :cond_143
    :try_start_143
    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v15, v6}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v6
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14b} :catch_283
    .catchall {:try_start_143 .. :try_end_14b} :catchall_281

    if-eqz v6, :cond_14f

    :try_start_14d
    monitor-exit v3
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_281

    return-object v15

    :cond_14f
    :try_start_14f
    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v7

    iget v11, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v0, 0x12a

    if-ne v11, v0, :cond_16d

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    invoke-static {v15, v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_169} :catch_283
    .catchall {:try_start_14f .. :try_end_169} :catchall_281

    if-eqz v0, :cond_16d

    :try_start_16b
    monitor-exit v3
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_281

    return-object v15

    :cond_16d
    const/4 v0, 0x5

    const/16 v11, 0x5f

    if-ne v7, v0, :cond_1a3

    :try_start_172
    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_18c

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->q()V

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    const/4 v8, 0x1

    goto/16 :goto_8e

    :cond_18c
    if-nez v6, :cond_198

    const/4 v0, 0x0

    invoke-virtual {v15, v0, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(II)V

    iget v4, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_194} :catch_283
    .catchall {:try_start_172 .. :try_end_194} :catchall_281

    if-ne v4, v11, :cond_135

    :try_start_196
    monitor-exit v3
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_281

    return-object v15

    :cond_198
    :try_start_198
    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19c} :catch_283
    .catchall {:try_start_198 .. :try_end_19c} :catchall_281

    if-eqz v0, :cond_1a0

    :try_start_19e
    monitor-exit v3

    return-object v15

    :cond_1a0
    monitor-exit v3
    :try_end_1a1
    .catchall {:try_start_19e .. :try_end_1a1} :catchall_281

    const/4 v2, 0x0

    return-object v2

    :cond_1a3
    const/4 v0, 0x0

    :try_start_1a4
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v6

    const-string v0, "u_n_c_e_d"

    const/4 v11, 0x1

    invoke-virtual {v6, v0, v11}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1e1

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->g()J

    move-result-wide v20

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v0

    if-ne v0, v11, :cond_1e1

    sub-long v20, v9, v20

    move-object v0, v5

    iget-wide v5, v1, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    const-wide/16 v22, 0x3e8

    mul-long v5, v5, v22

    cmp-long v11, v20, v5

    if-lez v11, :cond_1e2

    const-string v5, "download timeout"

    invoke-virtual {v15, v5}, Lcom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    iget-object v5, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    iget v5, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1f8

    const/16 v6, 0x5e

    if-ne v5, v6, :cond_1e2

    goto :goto_1f8

    :cond_1e1
    move-object v0, v5

    :cond_1e2
    iget v5, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_201

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v4

    if-eqz v4, :cond_1ff

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->q()V

    iget-object v4, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1f6} :catch_283
    .catchall {:try_start_1a4 .. :try_end_1f6} :catchall_281

    :goto_1f6
    add-int/lit8 v12, v12, -0x1

    :cond_1f8
    :goto_1f8
    move-object v5, v0

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    goto :goto_263

    :cond_1ff
    :try_start_1ff
    monitor-exit v3
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_281

    return-object v15

    :cond_201
    :try_start_201
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v5

    const-string v6, "u_n_c_e_d"

    const/4 v11, 0x1

    invoke-virtual {v5, v6, v11}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_21d

    const/4 v5, 0x4

    if-eq v7, v5, :cond_214

    const/4 v5, 0x2

    if-ne v7, v5, :cond_21d

    :cond_214
    iget-object v4, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    goto :goto_1f6

    :cond_21d
    const/4 v5, 0x1

    if-ne v7, v5, :cond_23f

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v6

    if-eqz v6, :cond_229

    const/16 v7, 0x5e

    goto :goto_25d

    :cond_229
    sget-boolean v6, Lcom/mbridge/msdk/MBridgeConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    if-nez v6, :cond_23f

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v15, v6}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v6

    if-eqz v6, :cond_23f

    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_23b} :catch_283
    .catchall {:try_start_201 .. :try_end_23b} :catchall_281

    if-eqz v6, :cond_23f

    :try_start_23d
    monitor-exit v3
    :try_end_23e
    .catchall {:try_start_23d .. :try_end_23e} :catchall_281

    return-object v15

    :cond_23f
    :try_start_23f
    iget v6, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v7, 0x5e

    const/16 v11, 0x11f

    if-eq v6, v7, :cond_249

    if-ne v6, v11, :cond_25f

    :cond_249
    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v15, v6}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v6

    if-eqz v6, :cond_25f

    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_257} :catch_283
    .catchall {:try_start_23f .. :try_end_257} :catchall_281

    if-eqz v4, :cond_25f

    :try_start_259
    monitor-exit v3
    :try_end_25a
    .catchall {:try_start_259 .. :try_end_25a} :catchall_281

    return-object v15

    :cond_25b
    :goto_25b
    move-object v0, v5

    const/4 v5, 0x1

    :goto_25d
    const/16 v11, 0x11f

    :cond_25f
    move-object v5, v0

    const/4 v4, 0x0

    const/16 v6, 0x11f

    :goto_263
    const/4 v8, 0x1

    move/from16 v0, p1

    goto/16 :goto_8e

    :cond_268
    move-object v0, v5

    const/4 v5, 0x1

    const/16 v11, 0x11f

    add-int/lit8 v12, v12, 0x1

    move-object v5, v0

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/4 v8, 0x1

    move/from16 v0, p1

    goto/16 :goto_76

    :cond_277
    :try_start_277
    const-string v0, "UnitCacheCtroller"

    const-string v2, "UnitCache isReady campaignList = 0"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_27e} :catch_283
    .catchall {:try_start_277 .. :try_end_27e} :catchall_281

    :try_start_27e
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :catchall_281
    move-exception v0

    goto :goto_28a

    :catch_283
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_287
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_28d

    :goto_28a
    monitor-exit v3
    :try_end_28b
    .catchall {:try_start_27e .. :try_end_28b} :catchall_281

    throw v0

    :cond_28c
    move-object v2, v4

    :goto_28d
    return-object v2
.end method

.method public final a(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;
    .registers 6

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/m;->a(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_40

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_18

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/videocommon/download/a;
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_34

    :try_start_32
    monitor-exit v0

    return-object p1

    :catchall_34
    const-string p1, "UnitCacheCtroller"

    const-string v1, "failed to get campaignTast by cid"

    invoke-static {p1, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_3d

    throw p1

    :cond_40
    :goto_40
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;IZLjava/util/List;Z)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p5

    iget-boolean v3, v1, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v3, :cond_15

    move-object/from16 v4, p4

    invoke-virtual {v3, v4, v2}, Lcom/mbridge/msdk/videocommon/download/m;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_15
    move-object/from16 v4, p4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v5, :cond_233

    monitor-enter v5

    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v9, 0x0

    :goto_26
    iget-object v10, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_22f

    iget-object v10, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_221

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v12, :cond_215

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v13

    if-nez v13, :cond_5a

    goto/16 :goto_215

    :cond_5a
    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v13

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_63
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v13, :cond_c6

    if-eqz v16, :cond_c6

    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c6

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c6

    invoke-virtual {v13}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b4

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setLocalRequestId(Ljava/lang/String;)V

    :cond_b4
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c5

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setNLRid(Ljava/lang/String;)V

    :cond_c5
    const/4 v15, 0x1

    :cond_c6
    move-object/from16 v4, p4

    goto :goto_63

    :cond_c9
    if-nez v15, :cond_cd

    goto/16 :goto_215

    :cond_cd
    if-eqz p3, :cond_d5

    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_215

    :cond_d5
    if-nez p3, :cond_df

    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_df

    goto/16 :goto_215

    :cond_df
    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v8

    const-string v14, ""

    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v15

    if-eqz v15, :cond_f7

    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v14

    :cond_f7
    invoke-virtual {v13}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    const/16 v15, 0x11f

    move-object/from16 v16, v11

    const/16 v11, 0x5e

    if-eq v0, v11, :cond_104

    if-ne v0, v15, :cond_144

    :cond_104
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_119

    const-string v15, "cmpt=1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_119

    invoke-direct {v1, v0, v13, v14}, Lcom/mbridge/msdk/videocommon/download/n;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_119

    goto :goto_128

    :cond_119
    invoke-direct {v1, v4, v13}, Lcom/mbridge/msdk/videocommon/download/n;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v14

    if-eqz v14, :cond_144

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v14

    if-eqz v14, :cond_12c

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->q()V

    :cond_128
    :goto_128
    move-wide/from16 v21, v6

    goto/16 :goto_219

    :cond_12c
    invoke-static {v8}, Lcom/mbridge/msdk/foundation/tools/ak;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_136

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_128

    :cond_136
    invoke-direct {v1, v13}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v8

    invoke-static {v12, v8, v2}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v8

    if-eqz v8, :cond_144

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_128

    :cond_144
    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->p()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_185

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v11

    if-eqz v11, :cond_169

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->q()V

    iget-object v4, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v4, p4

    move-object/from16 v11, v16

    goto/16 :goto_3e

    :cond_169
    if-nez v8, :cond_177

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v8}, Lcom/mbridge/msdk/videocommon/download/a;->a(II)V

    const/16 v4, 0x5f

    if-ne v0, v4, :cond_128

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_128

    :cond_177
    const/4 v8, 0x0

    invoke-direct {v1, v4, v13}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_182

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_181} :catch_22b
    .catchall {:try_start_21 .. :try_end_181} :catchall_229

    goto :goto_128

    :cond_182
    const/4 v0, 0x0

    :try_start_183
    monitor-exit v5
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_229

    return-object v0

    :cond_185
    const/4 v8, 0x0

    :try_start_186
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v15

    const-string v8, "u_n_c_e_d"

    const/4 v11, 0x1

    invoke-virtual {v15, v8, v11}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1d5

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->g()J

    move-result-wide v19

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    if-ne v8, v11, :cond_1c2

    sub-long v19, v6, v19

    move-wide/from16 v21, v6

    iget-wide v6, v1, Lcom/mbridge/msdk/videocommon/download/n;->l:J

    const-wide/16 v23, 0x3e8

    mul-long v6, v6, v23

    cmp-long v8, v19, v6

    if-lez v8, :cond_1c4

    const-string v6, "download timeout"

    invoke-virtual {v12, v6}, Lcom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    iget-object v6, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    const/4 v6, 0x1

    if-eq v0, v6, :cond_219

    const/16 v6, 0x5e

    if-ne v0, v6, :cond_1c4

    goto :goto_219

    :cond_1c2
    move-wide/from16 v21, v6

    :cond_1c4
    const/4 v6, 0x4

    if-eq v14, v6, :cond_1ca

    const/4 v6, 0x2

    if-ne v14, v6, :cond_1d7

    :cond_1ca
    iget-object v4, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    add-int/lit8 v9, v9, -0x1

    goto :goto_219

    :cond_1d5
    move-wide/from16 v21, v6

    :cond_1d7
    const/4 v6, 0x1

    if-ne v14, v6, :cond_1f9

    invoke-virtual {v12}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v6

    if-eqz v6, :cond_1e1

    goto :goto_219

    :cond_1e1
    sget-boolean v6, Lcom/mbridge/msdk/MBridgeConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    if-nez v6, :cond_1f9

    invoke-direct {v1, v13}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v12, v6, v2}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v6

    if-eqz v6, :cond_1f9

    invoke-direct {v1, v4, v13}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    if-eqz v6, :cond_1f9

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_219

    :cond_1f9
    const/16 v6, 0x5e

    if-eq v0, v6, :cond_201

    const/16 v6, 0x11f

    if-ne v0, v6, :cond_219

    :cond_201
    invoke-direct {v1, v13}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v12, v6, v2}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v6

    if-eqz v6, :cond_219

    invoke-direct {v1, v4, v13}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_219

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_214} :catch_22b
    .catchall {:try_start_186 .. :try_end_214} :catchall_229

    goto :goto_219

    :cond_215
    :goto_215
    move-wide/from16 v21, v6

    move-object/from16 v16, v11

    :cond_219
    :goto_219
    move-object/from16 v4, p4

    move-object/from16 v11, v16

    move-wide/from16 v6, v21

    goto/16 :goto_3e

    :cond_221
    move-wide/from16 v21, v6

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p4

    goto/16 :goto_26

    :catchall_229
    move-exception v0

    goto :goto_231

    :catch_22b
    move-exception v0

    :try_start_22c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22f
    monitor-exit v5

    goto :goto_233

    :goto_231
    monitor-exit v5
    :try_end_232
    .catchall {:try_start_22c .. :try_end_232} :catchall_229

    throw v0

    :cond_233
    :goto_233
    return-object v3
.end method

.method public final a()V
    .registers 17

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/m;->a()V

    return-void

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/videocommon/download/n;->d()V

    iget-object v2, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_226

    monitor-enter v2

    :try_start_16
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_21

    iput-boolean v3, v1, Lcom/mbridge/msdk/videocommon/download/n;->d:Z

    :cond_21
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_221

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_36

    goto :goto_27

    :cond_36
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3e
    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/mbridge/msdk/videocommon/download/a;

    if-nez v6, :cond_54

    goto :goto_3e

    :cond_54
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_3e

    :cond_5b
    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v7, 0x5f

    if-ne v0, v7, :cond_63

    iput-boolean v3, v1, Lcom/mbridge/msdk/videocommon/download/n;->d:Z

    :cond_63
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v0

    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->k()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v8

    if-eqz v8, :cond_7f

    if-nez v0, :cond_7f

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/c;->getInstance()Lcom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    invoke-virtual {v8}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/mbridge/msdk/videocommon/download/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_7f
    move v9, v0

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/n$2;

    invoke-direct {v0, v1, v8}, Lcom/mbridge/msdk/videocommon/download/n$2;-><init>(Lcom/mbridge/msdk/videocommon/download/n;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v6, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/listener/a;)V

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    iget v10, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    if-ne v10, v3, :cond_a0

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    if-nez v0, :cond_9c

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/c/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    :cond_9c
    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/n;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    :cond_a0
    move v10, v0

    invoke-virtual {v6, v10}, Lcom/mbridge/msdk/videocommon/download/a;->c(I)V

    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v11, 0x5e

    const/16 v12, 0x12a

    const/16 v13, 0x11f

    if-eq v0, v11, :cond_fc

    if-eq v0, v13, :cond_fc

    if-ne v0, v7, :cond_b3

    goto :goto_fc

    :cond_b3
    if-ne v0, v12, :cond_d6

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    if-nez v0, :cond_cd

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v15

    iget-object v14, v1, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v15, v14}, Lcom/mbridge/msdk/c/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    :cond_cd
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->b:Lcom/mbridge/msdk/c/h;

    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/h;->g()I

    move-result v0

    goto :goto_d7

    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    iget v14, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    if-ne v14, v3, :cond_125

    iget-object v14, v1, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    if-nez v14, :cond_f3

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v14

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v15

    iget-object v7, v1, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    invoke-virtual {v14, v15, v7}, Lcom/mbridge/msdk/c/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object v7

    iput-object v7, v1, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    :cond_f3
    iget-object v7, v1, Lcom/mbridge/msdk/videocommon/download/n;->a:Lcom/mbridge/msdk/c/h;

    if-eqz v7, :cond_125

    invoke-virtual {v7}, Lcom/mbridge/msdk/c/h;->g()I

    move-result v0

    goto :goto_125

    :cond_fc
    :goto_fc
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    if-nez v0, :cond_11b

    invoke-static {}, Lcom/mbridge/msdk/videocommon/d/b;->a()Lcom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v7

    iget-object v14, v1, Lcom/mbridge/msdk/videocommon/download/n;->m:Ljava/lang/String;

    iget v15, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    if-ne v15, v13, :cond_114

    const/4 v15, 0x1

    goto :goto_115

    :cond_114
    const/4 v15, 0x0

    :goto_115
    invoke-virtual {v0, v7, v14, v15}, Lcom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/d/c;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    :cond_11b
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->n:Lcom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_124

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/d/c;->s()I

    move-result v0

    goto :goto_125

    :cond_124
    const/4 v0, 0x0

    :cond_125
    :goto_125
    invoke-virtual {v6, v0}, Lcom/mbridge/msdk/videocommon/download/a;->b(I)V

    if-eqz v8, :cond_12f

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCtnType()I

    move-result v7

    goto :goto_130

    :cond_12f
    const/4 v7, 0x1

    :goto_130
    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/videocommon/download/a;->e(I)V

    const-string v14, "UnitCacheCtroller"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ready_rate : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " cd_rate : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " videoCtnType : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-eqz v0, :cond_1d0

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->e:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_176

    iget v7, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    const/16 v13, 0x129

    if-eq v7, v13, :cond_16f

    if-ne v7, v12, :cond_176

    :cond_16f
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    :cond_176
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1d0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1d0

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/mbridge/msdk/videocommon/listener/a;
    :try_end_18d
    .catchall {:try_start_16 .. :try_end_18d} :catchall_223

    if-eqz v7, :cond_1d0

    :try_start_18f
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLRid()Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lcom/mbridge/msdk/videocommon/download/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v13, "type"

    const-string v14, "4"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "cache"

    const-string v14, "1"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "update"

    const-string v14, "1"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/m;->a()Lcom/mbridge/msdk/foundation/same/report/m;

    move-result-object v13

    const-string v14, "2000153"

    invoke-virtual {v13, v14, v8, v0}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/Map;)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1be} :catch_1bf
    .catchall {:try_start_18f .. :try_end_1be} :catchall_223

    goto :goto_1c9

    :catch_1bf
    move-exception v0

    :try_start_1c0
    const-string v13, "UnitCacheCtroller"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c9
    :goto_1c9
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    :cond_1d0
    if-eq v9, v3, :cond_3e

    const/4 v0, 0x5

    if-ne v9, v0, :cond_1db

    invoke-static {v6, v10}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_1db
    const/4 v0, 0x4

    if-eq v9, v0, :cond_3e

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/w;->r(Landroid/content/Context;)I

    move-result v0

    const/16 v7, 0x9

    const/4 v8, 0x2

    if-eq v0, v7, :cond_1ef

    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    if-ne v0, v8, :cond_1ef

    monitor-exit v2

    return-void

    :cond_1ef
    if-eq v9, v8, :cond_1f7

    iget-boolean v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->d:Z

    if-nez v0, :cond_1f7

    goto/16 :goto_3e

    :cond_1f7
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->h:Lcom/mbridge/msdk/videocommon/download/d;

    invoke-virtual {v6, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/d;)V

    invoke-static {v6, v10}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-eqz v0, :cond_20f

    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    if-eq v0, v11, :cond_20a

    const/16 v7, 0x11f

    if-ne v0, v7, :cond_3e

    :cond_20a
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->n()V

    goto/16 :goto_3e

    :cond_20f
    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/n;->p:I

    if-eq v0, v3, :cond_219

    const/16 v7, 0x5f

    if-eq v0, v7, :cond_219

    if-ne v0, v12, :cond_21c

    :cond_219
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/mbridge/msdk/videocommon/download/n;->d:Z

    :cond_21c
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->n()V

    goto/16 :goto_3e

    :cond_221
    monitor-exit v2

    goto :goto_226

    :catchall_223
    move-exception v0

    monitor-exit v2
    :try_end_225
    .catchall {:try_start_1c0 .. :try_end_225} :catchall_223

    throw v0

    :cond_226
    :goto_226
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .registers 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/m;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/n;->b(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/videocommon/listener/a;)V
    .registers 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/m;->a(Lcom/mbridge/msdk/videocommon/listener/a;)V

    return-void

    :cond_c
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->e:Lcom/mbridge/msdk/videocommon/listener/a;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/mbridge/msdk/videocommon/listener/a;)V
    .registers 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/videocommon/download/m;->a(Ljava/lang/String;Lcom/mbridge/msdk/videocommon/listener/a;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_17
    if-eqz p2, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/m;->a(Ljava/util/List;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/n;->b(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_43

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v2, :cond_1a

    return v0

    :cond_1a
    new-instance v3, Lcom/mbridge/msdk/videocommon/download/a;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/mbridge/msdk/videocommon/download/n;->o:I

    invoke-direct {v3, v4, v2, p2, v5}, Lcom/mbridge/msdk/videocommon/download/a;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/mbridge/msdk/videocommon/download/n;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_40
    return v0

    :cond_41
    const/4 p1, 0x1

    return p1

    :cond_43
    :goto_43
    return v0
.end method

.method public final b(IZ)Lcom/mbridge/msdk/videocommon/download/a;
    .registers 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/m;->c()Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    return-object p1

    :cond_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/videocommon/download/n;->a(IZ)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UnitCacheCtroller"

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .registers 8

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5b

    :try_start_d
    monitor-enter v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_5b

    :try_start_e
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_23

    goto :goto_14

    :cond_23
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/videocommon/download/a;

    if-nez v4, :cond_40

    goto :goto_2b

    :cond_40
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    const-string v1, "playing and stop download"

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->r()V

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_56
    monitor-exit v0

    goto :goto_5b

    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_e .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/m;->b(Ljava/lang/String;)V

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_60

    :try_start_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5b

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_3b

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_5b
    monitor-exit v0

    goto :goto_60

    :catchall_5d
    move-exception p1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_f .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw p1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_60} :catch_60

    :catch_60
    :goto_60
    return-void
.end method

.method public final c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->r:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->q:Lcom/mbridge/msdk/videocommon/download/m;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/m;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

###### Class com.mbridge.msdk.videocommon.download.n.AnonymousClass1 (com.mbridge.msdk.videocommon.download.n$1)
.class final Lcom/mbridge/msdk/videocommon/download/n$1;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"

# interfaces
.implements Lcom/mbridge/msdk/videocommon/download/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/videocommon/download/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/videocommon/download/n;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/download/n;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n$1;->a:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .registers 4

    const/4 p1, 0x1

    const/4 p2, 0x5

    if-eq p3, p2, :cond_7

    const/4 p2, 0x4

    if-ne p3, p2, :cond_11

    :cond_7
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/n$1;->a:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/n;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/n$1;->a:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-virtual {p2}, Lcom/mbridge/msdk/videocommon/download/n;->a()V

    :cond_11
    const/4 p2, 0x2

    if-ne p3, p2, :cond_19

    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/n$1;->a:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/n;Z)Z

    :cond_19
    return-void
.end method

###### Class com.mbridge.msdk.videocommon.download.n.AnonymousClass2 (com.mbridge.msdk.videocommon.download.n$2)
.class final Lcom/mbridge/msdk/videocommon/download/n$2;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"

# interfaces
.implements Lcom/mbridge/msdk/videocommon/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/videocommon/download/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Lcom/mbridge/msdk/videocommon/download/n;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/download/n;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    iput-object p2, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/n;)Lcom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/n;)Lcom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/videocommon/download/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/videocommon/download/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/videocommon/download/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_40

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/n;)Lcom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->a(Lcom/mbridge/msdk/videocommon/download/n;)Lcom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string p1, "UnitCacheCtroller"

    const-string p2, "Is not check video download status"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_40
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/videocommon/download/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/videocommon/download/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_6f

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->b:Lcom/mbridge/msdk/videocommon/download/n;

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/download/n;->b(Lcom/mbridge/msdk/videocommon/download/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/n$2;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_6f

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-void
.end method
