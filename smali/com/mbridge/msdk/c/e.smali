###### Class com.mbridge.msdk.c.e (com.mbridge.msdk.c.e)
.class public final Lcom/mbridge/msdk/c/e;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/c/e$a;,
        Lcom/mbridge/msdk/c/e$b;
    }
.end annotation


# static fields
.field public static a:I = 0x5dc


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:Ljava/lang/String;

.field private Y:Z

.field private Z:Lorg/json/JSONArray;

.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private aC:Ljava/lang/String;

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/c/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private aG:I

.field private aH:Lcom/mbridge/msdk/c/e$b;

.field private aI:I

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/String;

.field private aN:I

.field private aO:Z

.field private aP:I

.field private aQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aS:I

.field private aT:I

.field private aU:I

.field private aV:I

.field private aW:I

.field private aX:Ljava/lang/String;

.field private aY:I

.field private aZ:Ljava/lang/String;

.field private aa:Lorg/json/JSONArray;

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:Lcom/mbridge/msdk/c/a;

.field private an:Lcom/mbridge/msdk/c/b;

.field private ao:Ljava/lang/String;

.field private ap:Lorg/json/JSONObject;

.field private aq:Lorg/json/JSONArray;

.field private ar:Z

.field private as:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private at:J

.field private au:I

.field private av:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:J

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private o:I

.field private p:I

.field private q:J

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/c/e;->b:I

    const-wide/32 v1, 0x15180

    iput-wide v1, p0, Lcom/mbridge/msdk/c/e;->e:J

    iput-boolean v0, p0, Lcom/mbridge/msdk/c/e;->w:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/mbridge/msdk/c/e;->x:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mbridge/msdk/c/e;->y:Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lcom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/mbridge/msdk/c/e;->A:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lcom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/mbridge/msdk/c/e;->B:Ljava/lang/String;

    const/16 v3, 0x78

    iput v3, p0, Lcom/mbridge/msdk/c/e;->C:I

    const-string v4, ""

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->D:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->E:Ljava/lang/String;

    const-string v5, "1.0"

    iput-object v5, p0, Lcom/mbridge/msdk/c/e;->F:Ljava/lang/String;

    iput v2, p0, Lcom/mbridge/msdk/c/e;->G:I

    iput v2, p0, Lcom/mbridge/msdk/c/e;->H:I

    iput v2, p0, Lcom/mbridge/msdk/c/e;->I:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->J:I

    iput v2, p0, Lcom/mbridge/msdk/c/e;->K:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->L:I

    const/16 v5, 0x1e

    iput v5, p0, Lcom/mbridge/msdk/c/e;->N:I

    const/4 v5, 0x5

    iput v5, p0, Lcom/mbridge/msdk/c/e;->O:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->P:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->Q:I

    const/16 v5, 0x24a1

    iput v5, p0, Lcom/mbridge/msdk/c/e;->R:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->S:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->T:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->U:I

    const/4 v5, 0x2

    iput v5, p0, Lcom/mbridge/msdk/c/e;->V:I

    const/16 v5, 0xa

    iput v5, p0, Lcom/mbridge/msdk/c/e;->W:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/c/e;->Y:Z

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iput-object v6, p0, Lcom/mbridge/msdk/c/e;->Z:Lorg/json/JSONArray;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iput-object v6, p0, Lcom/mbridge/msdk/c/e;->aa:Lorg/json/JSONArray;

    iput v0, p0, Lcom/mbridge/msdk/c/e;->ab:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->ac:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->ad:I

    iput v1, p0, Lcom/mbridge/msdk/c/e;->ae:I

    const/16 v1, 0x258

    iput v1, p0, Lcom/mbridge/msdk/c/e;->af:I

    iput v5, p0, Lcom/mbridge/msdk/c/e;->ag:I

    const/16 v1, 0x1f40

    iput v1, p0, Lcom/mbridge/msdk/c/e;->ah:I

    iput v1, p0, Lcom/mbridge/msdk/c/e;->ai:I

    const/16 v1, 0x514

    iput v1, p0, Lcom/mbridge/msdk/c/e;->aj:I

    sget v1, Lcom/mbridge/msdk/c/e;->a:I

    iput v1, p0, Lcom/mbridge/msdk/c/e;->ak:I

    iput v2, p0, Lcom/mbridge/msdk/c/e;->al:I

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->ao:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mbridge/msdk/c/e;->ar:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/c/e;->as:Ljava/util/List;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->ay:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->az:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aA:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aB:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aC:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aD:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aE:Ljava/lang/String;

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aG:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aI:I

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aJ:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aK:Ljava/lang/String;

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aN:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/c/e;->aO:Z

    iput v3, p0, Lcom/mbridge/msdk/c/e;->aP:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aS:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aT:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aU:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aV:I

    iput v0, p0, Lcom/mbridge/msdk/c/e;->aW:I

    iput v2, p0, Lcom/mbridge/msdk/c/e;->aY:I

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->aZ:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string p0, ""

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v1, v0, Lcom/mbridge/msdk/c/e;->g:Ljava/util/Map;

    if-nez v1, :cond_19

    goto :goto_62

    :cond_19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/mbridge/msdk/c/e;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object p1, v0, Lcom/mbridge/msdk/c/e;->g:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    return-object p0

    :cond_58
    const-string v0, "{gaid}"

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_62
    .catchall {:try_start_2 .. :try_end_62} :catchall_62

    :catchall_62
    :cond_62
    :goto_62
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;
    .registers 18

    const-string v1, "omsdkjs_h5_url"

    const-string v2, "omsdkjs_url"

    const-string v0, "plctb"

    const-string v3, "pcrn"

    const-string v4, "plct"

    const-string v5, "H+tU+FeXHM=="

    const-string v6, ""

    :try_start_e
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6c0

    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p0

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/mbridge/msdk/c/e;

    invoke-direct {v9}, Lcom/mbridge/msdk/c/e;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_6c2

    :try_start_20
    iput-object v8, v9, Lcom/mbridge/msdk/c/e;->ap:Lorg/json/JSONObject;

    const-string v10, "cc"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mbridge/msdk/c/e;->c:Ljava/lang/String;

    const-string v10, "mv_wildcard"

    const-string v11, "<mvpackage>mbridge</mvpackage>"

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mbridge/msdk/c/e;->t:Ljava/lang/String;

    const-string v10, "cfc"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/mbridge/msdk/c/e;->d:I

    const-string v10, "getpf"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/mbridge/msdk/c/e;->e:J

    const-string v10, "current_time"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/mbridge/msdk/c/e;->i:J

    const-string v10, "cfb"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/mbridge/msdk/c/e;->h:Z

    const-string v10, "awct"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/mbridge/msdk/c/e;->l:J

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_69

    const-wide/16 v10, 0xe10

    goto :goto_6d

    :cond_69
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    :goto_6d
    iput-wide v10, v9, Lcom/mbridge/msdk/c/e;->k:J

    const-string v4, "rurl"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v9, Lcom/mbridge/msdk/c/e;->j:Z

    const-string v4, "uct"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/mbridge/msdk/c/e;->m:J

    const-string v4, "ujds"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v9, Lcom/mbridge/msdk/c/e;->n:Z

    const-string v4, "n2"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v9, Lcom/mbridge/msdk/c/e;->o:I

    const-string v4, "n3"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v9, Lcom/mbridge/msdk/c/e;->p:I

    const-string v4, "is_startup_crashsystem"

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v9, Lcom/mbridge/msdk/c/e;->u:I

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v9, Lcom/mbridge/msdk/c/e;->r:I

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v4, v14, v12

    if-nez v4, :cond_b1

    const-wide/16 v14, 0x1c20

    goto :goto_b5

    :cond_b1
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_b5
    iput-wide v14, v9, Lcom/mbridge/msdk/c/e;->q:J

    const/16 v0, 0x64

    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->r:I

    const-string v0, "opent"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->s:I

    const-string v0, "sfct"

    const-wide/16 v3, 0x708

    invoke-virtual {v8, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v9, Lcom/mbridge/msdk/c/e;->at:J

    const-string v0, "upgd"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->H:I

    const-string v0, "upsrl"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->G:I

    const-string v0, "updevid"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->I:I

    const-string v0, "sc"

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->J:I

    const-string v0, "up_tips"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->K:I

    const-string v0, "iseu"

    const/4 v4, -0x1

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->L:I

    const-string v0, "jm_unit"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->M:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_10b} :catch_6bd

    :try_start_10b
    const-string v0, "atf"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_14d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_14d

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_11f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_14e

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_148

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/mbridge/msdk/foundation/entity/a;

    const-string v10, "adtype"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "unitid"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v10, v4}, Lcom/mbridge/msdk/foundation/entity/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_148
    add-int/lit8 v14, v14, 0x1

    const/4 v4, -0x1

    const/4 v10, 0x1

    goto :goto_11f

    :cond_14d
    const/4 v11, 0x0

    :cond_14e
    if-eqz v11, :cond_157

    iput-object v11, v9, Lcom/mbridge/msdk/c/e;->v:Ljava/util/List;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_152} :catch_153

    goto :goto_157

    :catch_153
    move-exception v0

    :try_start_154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_157
    :goto_157
    const-string v0, "adct"

    const v4, 0x3f480

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->au:I

    const-string v0, "confirm_title"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    const-string v0, "confirm_description"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    const-string v0, "confirm_t"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    const-string v0, "confirm_c_rv"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->ay:Ljava/lang/String;

    const-string v0, "confirm_c_play"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->az:Ljava/lang/String;

    const-string v0, "adchoice_icon"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aA:Ljava/lang/String;

    const-string v0, "adchoice_link"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aC:Ljava/lang/String;

    const-string v0, "adchoice_size"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aB:Ljava/lang/String;

    const-string v0, "platform_logo"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aE:Ljava/lang/String;

    const-string v0, "platform_name"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aD:Ljava/lang/String;

    const-string v0, "cdnate_cfg"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/c/e;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aF:Ljava/util/Map;

    const-string v0, "atrqt"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->b:I

    const-string v0, "iupdid"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aI:I

    const-string v0, "mcs"

    const/16 v4, 0x78

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->C:I

    const-string v0, "ab_id"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->D:Ljava/lang/String;

    const-string v0, "rid"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->E:Ljava/lang/String;

    const-string v0, "log_rate"

    const-string v7, "-1"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->F:Ljava/lang/String;

    invoke-virtual {v8, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aJ:Ljava/lang/String;

    invoke-virtual {v8, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aK:Ljava/lang/String;

    const-string v0, "rty_tk_clk"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ad:I

    const-string v0, "rty_tk_imp"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ac:I

    const-string v0, "rty_cnt"

    const/4 v7, 0x3

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ae:I

    const-string v0, "rty_to"

    const/16 v10, 0x258

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->af:I

    const-string v0, "rty_inr"

    const/16 v10, 0xa

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ag:I

    const-string v0, "dns"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_244

    invoke-static {}, Lcom/mbridge/msdk/c/c$a;->a()Lcom/mbridge/msdk/c/c;

    move-result-object v11

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mbridge/msdk/c/c;->a(Ljava/lang/String;)V

    :cond_244
    invoke-virtual {v8, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aJ:Ljava/lang/String;

    invoke-virtual {v8, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aK:Ljava/lang/String;

    const-string v0, "tcto"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v12

    if-nez v2, :cond_25f

    const-wide/16 v0, 0xa

    iput-wide v0, v9, Lcom/mbridge/msdk/c/e;->f:J

    goto :goto_293

    :cond_25f
    iput-wide v0, v9, Lcom/mbridge/msdk/c/e;->f:J

    const-string v0, "jt"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_293

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_293

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_275
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_291

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "domain"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "format"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_275

    :cond_291
    iput-object v1, v9, Lcom/mbridge/msdk/c/e;->g:Ljava/util/Map;

    :cond_293
    :goto_293
    const-string v0, "mraid_js"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aM:Ljava/lang/String;

    const-string v0, "web_env_url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aL:Ljava/lang/String;

    const-string v0, "alrbs"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2ae

    if-gez v0, :cond_2af

    :cond_2ae
    const/4 v0, 0x0

    :cond_2af
    iput v0, v9, Lcom/mbridge/msdk/c/e;->aN:I

    const-string v0, "GDPR_area"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/mbridge/msdk/c/e;->aO:Z

    const-string v0, "ct"

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aP:I

    const-string v0, "ercd"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2fb

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2fb

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2d5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2eb

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    if-eqz v4, :cond_2e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d5

    :cond_2eb
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2fb

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v9, Lcom/mbridge/msdk/c/e;->aQ:Ljava/util/ArrayList;

    :cond_2fb
    const-string v0, "hst"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_305
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_305} :catch_6bd

    if-nez v1, :cond_35e

    :try_start_307
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_319
    :goto_319
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_319

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_319

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_319

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_319

    :cond_34b
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_35e

    iput-object v2, v9, Lcom/mbridge/msdk/c/e;->aR:Ljava/util/HashMap;
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_353} :catch_354

    goto :goto_35e

    :catch_354
    move-exception v0

    :try_start_355
    const-string v1, "SETTING"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35e
    :goto_35e
    const-string v0, "refactor_switch"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3a4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3a4

    const/4 v1, 0x0

    :goto_36d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3a4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_37b
    :goto_37b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_37b

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_37b

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v9, Lcom/mbridge/msdk/c/e;->as:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_3a0} :catch_6bd

    goto :goto_37b

    :cond_3a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_36d

    :cond_3a4
    :try_start_3a4
    const-string v0, "lqcnt"

    const/16 v1, 0x1e

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "lqto"

    const/4 v2, 0x5

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "lqswt"

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "lqtype"

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v1, v9, Lcom/mbridge/msdk/c/e;->O:I

    iput v0, v9, Lcom/mbridge/msdk/c/e;->N:I

    iput v2, v9, Lcom/mbridge/msdk/c/e;->P:I

    iput v4, v9, Lcom/mbridge/msdk/c/e;->Q:I

    const-string v0, "lg_bl"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3d9

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "2000088"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3d9
    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aa:Lorg/json/JSONArray;

    const-string v0, "lg_wl"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3fc

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "2000041"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "2000042"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "2000032"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "2000079"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3fc
    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->Z:Lorg/json/JSONArray;

    const-string v0, "lg_wl_rt"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ab:I

    const-string v0, "srml"

    const/16 v1, 0x1f40

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ah:I

    const-string v0, "lrml"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ai:I

    const-string v0, "wgl_d_ms"

    const/16 v1, 0x514

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aj:I

    const-string v0, "dp_ct"

    sget v1, Lcom/mbridge/msdk/c/e;->a:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->ak:I

    sput v0, Lcom/mbridge/msdk/click/b/a;->c:I

    const-string v0, "lqpt"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_451

    const v1, 0xffff

    if-ge v0, v1, :cond_451

    iput v0, v9, Lcom/mbridge/msdk/c/e;->R:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    iput v0, v1, Lcom/mbridge/msdk/foundation/same/net/g/d;->l:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    iput v0, v1, Lcom/mbridge/msdk/foundation/same/net/g/d;->n:I
    :try_end_451
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_451} :catch_451

    :catch_451
    :cond_451
    :try_start_451
    const-string v0, "wvddt"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aS:I

    const-string v0, "hst_st"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->A:Ljava/lang/String;

    const-string v0, "hst_st_t"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->B:Ljava/lang/String;
    :try_end_469
    .catch Ljava/lang/Exception; {:try_start_451 .. :try_end_469} :catch_6bd

    :try_start_469
    const-string v0, "l"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "k"

    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47a

    const/4 v1, 0x1

    goto :goto_47b

    :cond_47a
    const/4 v1, 0x0

    :goto_47b
    const-string v4, "m"

    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_485

    const/4 v2, 0x1

    goto :goto_486

    :cond_485
    const/4 v2, 0x0

    :goto_486
    iput v0, v9, Lcom/mbridge/msdk/c/e;->x:I

    iput-boolean v1, v9, Lcom/mbridge/msdk/c/e;->w:Z

    iput-boolean v2, v9, Lcom/mbridge/msdk/c/e;->y:Z
    :try_end_48c
    .catch Ljava/lang/Exception; {:try_start_469 .. :try_end_48c} :catch_48d

    goto :goto_497

    :catch_48d
    move-exception v0

    :try_start_48e
    const-string v1, "Setting"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_497
    const-string v0, "fbk_swt"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aG:I

    const-string v0, "fbk"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/c/e$b;->a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/c/e$b;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aH:Lcom/mbridge/msdk/c/e$b;
    :try_end_4ab
    .catch Ljava/lang/Exception; {:try_start_48e .. :try_end_4ab} :catch_6bd

    :try_start_4ab
    const-string v0, "ad_connection_timeout"

    sget v1, Lcom/mbridge/msdk/foundation/same/a;->x:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ad_read_timeout"

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->z:I

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ad_write_timeout"

    sget v4, Lcom/mbridge/msdk/foundation/same/a;->A:I

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "ad_retry_count"

    sget v7, Lcom/mbridge/msdk/foundation/same/a;->B:I

    invoke-virtual {v8, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v0, :cond_4cf

    sget v0, Lcom/mbridge/msdk/foundation/same/a;->x:I

    :cond_4cf
    iput v0, v9, Lcom/mbridge/msdk/c/e;->U:I

    if-gtz v1, :cond_4d5

    sget v1, Lcom/mbridge/msdk/foundation/same/a;->z:I

    :cond_4d5
    iput v1, v9, Lcom/mbridge/msdk/c/e;->S:I

    if-gtz v2, :cond_4db

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->A:I

    :cond_4db
    iput v2, v9, Lcom/mbridge/msdk/c/e;->T:I

    if-gez v4, :cond_4e1

    sget v4, Lcom/mbridge/msdk/foundation/same/a;->B:I

    :cond_4e1
    iput v4, v9, Lcom/mbridge/msdk/c/e;->V:I

    const-string v0, "max_download_task_size"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_4ed

    const/16 v0, 0xa

    :cond_4ed
    iput v0, v9, Lcom/mbridge/msdk/c/e;->z:I

    const-string v0, "max_bitmap_cache_size"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/mbridge/msdk/c/e;->d(I)V

    const-string v0, "t_t"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aV:I

    const-string v0, "h_t"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aU:I

    const-string v0, "gtp"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aW:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a(I)V
    :try_end_517
    .catch Ljava/lang/Exception; {:try_start_4ab .. :try_end_517} :catch_517

    :catch_517
    :try_start_517
    const-string v0, "http_track_url"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->X:Ljava/lang/String;
    :try_end_51f
    .catch Ljava/lang/Exception; {:try_start_517 .. :try_end_51f} :catch_51f

    :catch_51f
    :try_start_51f
    const-string v0, "st_net"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->aY:I

    const-string v0, "vtag"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aZ:Ljava/lang/String;
    :try_end_530
    .catch Ljava/lang/Exception; {:try_start_51f .. :try_end_530} :catch_6bd

    :try_start_530
    const-string v0, "check_webview"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_53a

    const/4 v0, 0x0

    goto :goto_53b

    :cond_53a
    const/4 v0, 0x1

    :goto_53b
    iput-boolean v0, v9, Lcom/mbridge/msdk/c/e;->ar:Z
    :try_end_53d
    .catch Ljava/lang/Exception; {:try_start_530 .. :try_end_53d} :catch_53e

    goto :goto_540

    :catch_53e
    :try_start_53e
    iput-boolean v3, v9, Lcom/mbridge/msdk/c/e;->ar:Z

    :goto_540
    const-string v0, "swxid"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/mbridge/msdk/c/e;->ao:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_567

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->ao:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_567

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    iget-object v1, v9, Lcom/mbridge/msdk/c/e;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/b;->d(Ljava/lang/String;)V

    :cond_567
    const-string v0, "sdk_filters"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->aq:Lorg/json/JSONArray;
    :try_end_56f
    .catch Ljava/lang/Exception; {:try_start_53e .. :try_end_56f} :catch_6bd

    :try_start_56f
    const-string v0, "ch_nv_im_cb"
    :try_end_571
    .catch Ljava/lang/Exception; {:try_start_56f .. :try_end_571} :catch_579

    const/4 v1, 0x1

    :try_start_572
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/mbridge/msdk/c/e;->al:I
    :try_end_578
    .catch Ljava/lang/Exception; {:try_start_572 .. :try_end_578} :catch_57a

    goto :goto_57c

    :catch_579
    const/4 v1, 0x1

    :catch_57a
    :try_start_57a
    iput v1, v9, Lcom/mbridge/msdk/c/e;->al:I
    :try_end_57c
    .catch Ljava/lang/Exception; {:try_start_57a .. :try_end_57c} :catch_6bd

    :goto_57c
    :try_start_57c
    const-string v0, "do_us_fi_re"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_582
    .catch Ljava/lang/Exception; {:try_start_57c .. :try_end_582} :catch_58b

    if-eqz v0, :cond_586

    const/4 v2, 0x1

    goto :goto_587

    :cond_586
    const/4 v2, 0x0

    :goto_587
    :try_start_587
    iput-boolean v2, v9, Lcom/mbridge/msdk/c/e;->Y:Z
    :try_end_589
    .catch Ljava/lang/Exception; {:try_start_587 .. :try_end_589} :catch_58a

    goto :goto_58d

    :catch_58a
    const/4 v1, 0x1

    :catch_58b
    :try_start_58b
    iput-boolean v1, v9, Lcom/mbridge/msdk/c/e;->Y:Z
    :try_end_58d
    .catch Ljava/lang/Exception; {:try_start_58b .. :try_end_58d} :catch_6bd

    :goto_58d
    :try_start_58d
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->a()Lcom/mbridge/msdk/foundation/controller/c;
    :try_end_590
    .catch Ljava/lang/Exception; {:try_start_58d .. :try_end_590} :catch_68b

    :try_start_590
    new-instance v0, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v7
    :try_end_5a3
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_5a3} :catch_5a4

    goto :goto_5a5

    :catch_5a4
    const/4 v7, 0x0

    :goto_5a5
    const-string v0, "H+tU+Fz8"

    const-string v1, "H+tU+bfPhM=="

    const-string v2, "c"

    const-string v4, "b"

    if-eqz v7, :cond_60d

    :try_start_5af
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_68f

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5df

    sget-object v5, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5df

    sput-object v3, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v3

    sget-object v5, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d6
    .catch Ljava/lang/Exception; {:try_start_5af .. :try_end_5d6} :catch_607

    :try_start_5d6
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Lcom/mbridge/msdk/foundation/tools/FastKV;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5df
    .catch Ljava/lang/Exception; {:try_start_5d6 .. :try_end_5df} :catch_5df

    :catch_5df
    :cond_5df
    :try_start_5df
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68f

    sget-object v3, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68f

    sput-object v1, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    sget-object v3, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5fc
    .catch Ljava/lang/Exception; {:try_start_5df .. :try_end_5fc} :catch_607

    :try_start_5fc
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/mbridge/msdk/foundation/tools/FastKV;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_605
    .catch Ljava/lang/Exception; {:try_start_5fc .. :try_end_605} :catch_68f

    goto/16 :goto_68f

    :catch_607
    move-exception v0

    :try_start_608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60b
    .catch Ljava/lang/Exception; {:try_start_608 .. :try_end_60b} :catch_68b

    goto/16 :goto_68f

    :cond_60d
    :try_start_60d
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_68f

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_64e

    sget-object v10, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_64e

    sput-object v7, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v7

    sget-object v10, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {v7, v4, v10}, Lcom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v4, :cond_64e

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-interface {v4, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_64e
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68f

    sget-object v4, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68f

    sput-object v1, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    sget-object v4, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_68f

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/mbridge/msdk/foundation/same/a;->m:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_685
    .catch Ljava/lang/Exception; {:try_start_60d .. :try_end_685} :catch_686

    goto :goto_68f

    :catch_686
    move-exception v0

    :try_start_687
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68a
    .catch Ljava/lang/Exception; {:try_start_687 .. :try_end_68a} :catch_68b

    goto :goto_68f

    :catch_68b
    move-exception v0

    :try_start_68c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_68f
    :cond_68f
    :goto_68f
    const-string v0, "bcp"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a5

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/c/a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/c/a;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->am:Lcom/mbridge/msdk/c/a;

    :cond_6a5
    const-string v0, "monitor"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6bb

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/c/b;->a(Ljava/lang/String;)Lcom/mbridge/msdk/c/b;

    move-result-object v0

    iput-object v0, v9, Lcom/mbridge/msdk/c/e;->an:Lcom/mbridge/msdk/c/b;
    :try_end_6bb
    .catch Ljava/lang/Exception; {:try_start_68c .. :try_end_6bb} :catch_6bd

    :cond_6bb
    move-object v7, v9

    goto :goto_6c7

    :catch_6bd
    move-exception v0

    move-object v7, v9

    goto :goto_6c4

    :cond_6c0
    const/4 v7, 0x0

    goto :goto_6c7

    :catch_6c2
    move-exception v0

    const/4 v7, 0x0

    :goto_6c4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6c7
    return-object v7
.end method

.method private static f(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/c/e$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/mbridge/msdk/c/e$a;

    invoke-direct {v4}, Lcom/mbridge/msdk/c/e$a;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/c/e$a;->a(Lorg/json/JSONObject;)V

    :cond_30
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_33} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_35

    goto :goto_16

    :cond_34
    return-object v1

    :catch_35
    move-exception p0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    :catch_3e
    move-exception p0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_46
    :goto_46
    return-object v0
.end method


# virtual methods
.method public final A()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->S:I

    return v0
.end method

.method public final B()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->T:I

    return v0
.end method

.method public final C()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->U:I

    return v0
.end method

.method public final D()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->V:I

    return v0
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final G()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->G:I

    return v0
.end method

.method public final H()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->H:I

    return v0
.end method

.method public final I()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->I:I

    return v0
.end method

.method public final J()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->J:I

    return v0
.end method

.method public final K()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->K:I

    return v0
.end method

.method public final L()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->L:I

    return v0
.end method

.method public final M()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->u:I

    return v0
.end method

.method public final N()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final O()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->s:I

    return v0
.end method

.method public final P()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->r:I

    return v0
.end method

.method public final Q()J
    .registers 6

    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    const-wide/16 v0, 0x1c20

    iput-wide v0, p0, Lcom/mbridge/msdk/c/e;->q:J

    :cond_c
    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->q:J

    return-wide v0
.end method

.method public final R()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->au:I

    return v0
.end method

.method public final S()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->at:J

    return-wide v0
.end method

.method public final T()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/c/e;->n:Z

    return v0
.end method

.method public final U()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->m:J

    return-wide v0
.end method

.method public final V()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/c/e;->j:Z

    return v0
.end method

.method public final W()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->k:J

    return-wide v0
.end method

.method public final X()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->d:I

    return v0
.end method

.method public final Y()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->e:J

    return-wide v0
.end method

.method public final Z()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->i:J

    return-wide v0
.end method

.method public final a()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->z:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->z:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/c/e;->q:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/c/e;->X:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/c/e;->Y:Z

    return-void
.end method

.method public final aA()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aN:I

    return v0
.end method

.method public final aB()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/c/e;->aO:Z

    return v0
.end method

.method public final aC()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aP:I

    return v0
.end method

.method public final aD()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aQ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final aE()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aR:Ljava/util/HashMap;

    return-object v0
.end method

.method public final aF()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aS:I

    return v0
.end method

.method public final aG()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aT:I

    return v0
.end method

.method public final aH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final aI()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aU:I

    return v0
.end method

.method public final aJ()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aV:I

    return v0
.end method

.method public final aK()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aY:I

    return v0
.end method

.method public final aL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public final aM()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cc"

    iget-object v2, p0, Lcom/mbridge/msdk/c/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cfc"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cfb"

    iget-boolean v2, p0, Lcom/mbridge/msdk/c/e;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "plct"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/e;->k:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "awct"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/e;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rurl"

    iget-boolean v2, p0, Lcom/mbridge/msdk/c/e;->j:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ujds"

    iget-boolean v2, p0, Lcom/mbridge/msdk/c/e;->n:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "plctb"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/e;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "tcto"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/e;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mv_wildcard"

    iget-object v2, p0, Lcom/mbridge/msdk/c/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_startup_crashsystem"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->u:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sfct"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/e;->at:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "pcrn"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->r:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adct"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->au:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "atrqt"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "omsdkjs_url"

    iget-object v2, p0, Lcom/mbridge/msdk/c/e;->aJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mcs"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->C:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "GDPR_area"

    iget-boolean v2, p0, Lcom/mbridge/msdk/c/e;->aO:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "alrbs"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->aN:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ct"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->aP:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isDefault"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->aT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "st_net"

    iget v2, p0, Lcom/mbridge/msdk/c/e;->aY:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "vtag"

    iget-object v2, p0, Lcom/mbridge/msdk/c/e;->aZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_aa
    .catchall {:try_start_0 .. :try_end_aa} :catchall_ab

    goto :goto_b6

    :catchall_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_b6
    return-object v0
.end method

.method public final aa()J
    .registers 5

    iget-wide v0, p0, Lcom/mbridge/msdk/c/e;->f:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final ab()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->o:I

    return v0
.end method

.method public final ac()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->p:I

    return v0
.end method

.method public final ad()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    return-object v0
.end method

.method public final ae()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public final af()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final ag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->ay:Ljava/lang/String;

    return-object v0
.end method

.method public final ah()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->az:Ljava/lang/String;

    return-object v0
.end method

.method public final ai()V
    .registers 13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->ay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    const-string v4, "\u786e\u8ba4\u5173\u95ed"

    const-string v5, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    const-string v6, "\u786e\u8ba4\u5173\u95ed\uff1f"

    const-string v7, "zh"

    const-string v8, "Continue"

    const-string v9, "Close it"

    const-string v10, "You will not be rewarded after closing the window"

    const-string v11, "Confirm to close? "

    if-nez v1, :cond_5e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    iput-object v6, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    iput-object v5, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    const-string v1, "\u7ee7\u7eed\u89c2\u770b"

    iput-object v1, p0, Lcom/mbridge/msdk/c/e;->ay:Ljava/lang/String;

    goto :goto_5e

    :cond_56
    iput-object v11, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    iput-object v10, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    iput-object v9, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    iput-object v8, p0, Lcom/mbridge/msdk/c/e;->ay:Ljava/lang/String;

    :cond_5e
    :goto_5e
    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/mbridge/msdk/c/e;->az:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v2, 0x0

    :goto_80
    if-nez v2, :cond_a1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iput-object v6, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    iput-object v5, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    iput-object v4, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    iput-object v0, p0, Lcom/mbridge/msdk/c/e;->az:Ljava/lang/String;

    goto :goto_a1

    :cond_99
    iput-object v11, p0, Lcom/mbridge/msdk/c/e;->av:Ljava/lang/String;

    iput-object v10, p0, Lcom/mbridge/msdk/c/e;->aw:Ljava/lang/String;

    iput-object v9, p0, Lcom/mbridge/msdk/c/e;->ax:Ljava/lang/String;

    iput-object v8, p0, Lcom/mbridge/msdk/c/e;->az:Ljava/lang/String;

    :cond_a1
    :goto_a1
    return-void
.end method

.method public final aj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aA:Ljava/lang/String;

    return-object v0
.end method

.method public final ak()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aB:Ljava/lang/String;

    return-object v0
.end method

.method public final al()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aC:Ljava/lang/String;

    return-object v0
.end method

.method public final am()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/c/e$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aF:Ljava/util/Map;

    return-object v0
.end method

.method public final an()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->N:I

    return v0
.end method

.method public final ao()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->O:I

    return v0
.end method

.method public final ap()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->P:I

    return v0
.end method

.method public final aq()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->Q:I

    return v0
.end method

.method public final ar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/c/e;->w:Z

    return v0
.end method

.method public final as()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->x:I

    return v0
.end method

.method public final at()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/c/e;->y:Z

    return v0
.end method

.method public final au()Lcom/mbridge/msdk/c/e$b;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aH:Lcom/mbridge/msdk/c/e$b;

    return-object v0
.end method

.method public final av()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->al:I

    return v0
.end method

.method public final aw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aK:Ljava/lang/String;

    return-object v0
.end method

.method public final ax()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aJ:Ljava/lang/String;

    return-object v0
.end method

.method public final ay()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aL:Ljava/lang/String;

    return-object v0
.end method

.method public final az()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aM:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->v:Ljava/util/List;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->C:I

    return-void
.end method

.method public final b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/c/e;->at:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/c/e;->t:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/c/e;->ar:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->b:I

    return-void
.end method

.method public final c(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/c/e;->k:J

    return-void
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/c/e;->n:Z

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->C:I

    return v0
.end method

.method public final d(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/mbridge/msdk/c/e;->W:I

    :cond_4
    return-void
.end method

.method public final d(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/c/e;->l:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/c/e;->aK:Ljava/lang/String;

    return-void
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/c/e;->j:Z

    return-void
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->b:I

    return v0
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->S:I

    return-void
.end method

.method public final e(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/c/e;->f:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/c/e;->aJ:Ljava/lang/String;

    return-void
.end method

.method public final e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/c/e;->h:Z

    return-void
.end method

.method public final f(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->T:I

    return-void
.end method

.method public final f(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/c/e;->aO:Z

    return-void
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/c/e;->Y:Z

    return v0
.end method

.method public final g()Lcom/mbridge/msdk/c/b;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->an:Lcom/mbridge/msdk/c/b;

    return-object v0
.end method

.method public final g(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->U:I

    return-void
.end method

.method public final h()Lcom/mbridge/msdk/c/a;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->am:Lcom/mbridge/msdk/c/a;

    return-object v0
.end method

.method public final h(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->V:I

    return-void
.end method

.method public final i()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aq:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final i(I)Z
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->as:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final j()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->ap:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final j(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->G:I

    return-void
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final k(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->H:I

    return-void
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final l(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->I:I

    return-void
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->aj:I

    return v0
.end method

.method public final m(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->J:I

    return-void
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->ah:I

    return v0
.end method

.method public final n(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->K:I

    return-void
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->ai:I

    return v0
.end method

.method public final o(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->L:I

    return-void
.end method

.method public final p(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->u:I

    return-void
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/c/e;->ar:Z

    return v0
.end method

.method public final q()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->ac:I

    return v0
.end method

.method public final q(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->au:I

    return-void
.end method

.method public final r()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->ad:I

    return v0
.end method

.method public final r(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->d:I

    return-void
.end method

.method public final s()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->ae:I

    return v0
.end method

.method public final s(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->al:I

    return-void
.end method

.method public final t()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->af:I

    return v0
.end method

.method public final t(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->aN:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cfc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/c/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mbridge/msdk/c/e;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mbridge/msdk/c/e;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->ag:I

    return v0
.end method

.method public final u(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->aP:I

    return-void
.end method

.method public final v()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->ab:I

    return v0
.end method

.method public final v(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->aT:I

    return-void
.end method

.method public final w()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->Z:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final w(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->aU:I

    return-void
.end method

.method public final x()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->aa:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final x(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->aV:I

    return-void
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/e;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final y(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/e;->aY:I

    return-void
.end method

.method public final z()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/e;->W:I

    return v0
.end method
