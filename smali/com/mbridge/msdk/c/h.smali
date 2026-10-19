###### Class com.mbridge.msdk.c.h (com.mbridge.msdk.c.h)
.class public final Lcom/mbridge/msdk/c/h;
.super Ljava/lang/Object;
.source "UnitSetting.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private v:Ljava/lang/String;

.field private w:I

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/mbridge/msdk/c/h;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/c/h;->i:I

    iput v0, p0, Lcom/mbridge/msdk/c/h;->q:I

    const/16 v1, 0x1388

    iput v1, p0, Lcom/mbridge/msdk/c/h;->r:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/mbridge/msdk/c/h;->z:I

    const-string v2, ""

    iput-object v2, p0, Lcom/mbridge/msdk/c/h;->D:Ljava/lang/String;

    const/16 v3, 0xa

    iput v3, p0, Lcom/mbridge/msdk/c/h;->E:I

    iput v1, p0, Lcom/mbridge/msdk/c/h;->F:I

    iput-object v2, p0, Lcom/mbridge/msdk/c/h;->G:Ljava/lang/String;

    iput-object v2, p0, Lcom/mbridge/msdk/c/h;->H:Ljava/lang/String;

    iput-object v2, p0, Lcom/mbridge/msdk/c/h;->I:Ljava/lang/String;

    iput v0, p0, Lcom/mbridge/msdk/c/h;->J:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/mbridge/msdk/c/h;->K:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/c/h;->L:I

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;
    .registers 9

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1aa

    new-instance v2, Lcom/mbridge/msdk/c/h;

    invoke-direct {v2}, Lcom/mbridge/msdk/c/h;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_1a6

    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "unitId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    const-string p0, "ab_id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mbridge/msdk/c/h;->G:Ljava/lang/String;

    sget-object v3, Lcom/mbridge/msdk/foundation/controller/b;->c:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "rid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mbridge/msdk/c/h;->I:Ljava/lang/String;

    const-string p0, "adSourceList"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_5d

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_47
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5b

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_5b
    iput-object v4, v2, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    :cond_5d
    const-string p0, "ad_source_timeout"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_87

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_87

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_71
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_85

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    :cond_85
    iput-object v4, v2, Lcom/mbridge/msdk/c/h;->j:Ljava/util/List;

    :cond_87
    const-string p0, "tpqn"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->k:I

    const-string p0, "aqn"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->l:I

    const-string p0, "acn"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->m:I

    const-string p0, "wt"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->n:I

    const-string p0, "iscasf"

    const/4 v4, 0x1

    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->q:I

    const-string p0, "spmxrt"

    const/16 v5, 0x1388

    invoke-virtual {v1, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->r:I

    const-string p0, "current_time"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/mbridge/msdk/c/h;->h:J

    const-string p0, "offset"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->i:I

    const-string p0, "dlct"

    const-wide/16 v5, 0xe10

    invoke-virtual {v1, p0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/mbridge/msdk/c/h;->u:J

    const-string p0, "autoplay"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->s:I

    const-string p0, "dlnet"

    const/4 v5, 0x2

    invoke-virtual {v1, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->t:I

    const-string p0, "no_offer"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mbridge/msdk/c/h;->v:Ljava/lang/String;

    const-string p0, "cb_type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->w:I

    const-string p0, "clct"

    const-wide/32 v6, 0x15180

    invoke-virtual {v1, p0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/mbridge/msdk/c/h;->x:J

    const-string p0, "clcq"

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, p0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/mbridge/msdk/c/h;->y:J

    const-string p0, "ready_rate"

    const/16 v6, 0x64

    invoke-virtual {v1, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->K:I

    const-string p0, "cd_rate"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->L:I

    const-string p0, "content"

    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->M:I

    const-string p0, "impt"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->N:I

    const-string p0, "icon_type"

    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->p:I

    const-string p0, "no_ads_url"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mbridge/msdk/c/h;->o:Ljava/lang/String;

    const-string p0, "playclosebtn_tm"

    const/4 v6, -0x1

    invoke-virtual {v1, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->a:I

    const-string p0, "play_ctdown"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->b:I

    const-string p0, "close_alert"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->c:I

    const-string p0, "intershowlimit"

    const/16 v6, 0x1e

    invoke-virtual {v1, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->d:I

    const-string p0, "refreshFq"

    const/16 v6, 0x3c

    invoke-virtual {v1, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->z:I

    const-string p0, "closeBtn"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->A:I

    const-string p0, "tmorl"

    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-gt p0, v5, :cond_17d

    if-gtz p0, :cond_17c

    goto :goto_17d

    :cond_17c
    move v4, p0

    :cond_17d
    :goto_17d
    iput v4, v2, Lcom/mbridge/msdk/c/h;->J:I

    const-string p0, "placementid"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mbridge/msdk/c/h;->D:Ljava/lang/String;

    const-string p0, "ltafemty"

    const/16 v3, 0xa

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->E:I

    const-string p0, "ltorwc"

    invoke-virtual {v1, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Lcom/mbridge/msdk/c/h;->F:I

    const-string p0, "vtag"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mbridge/msdk/c/h;->H:Ljava/lang/String;
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a1} :catch_1a3

    move-object v1, v2

    goto :goto_1aa

    :catch_1a3
    move-exception p0

    move-object v1, v2

    goto :goto_1a7

    :catch_1a6
    move-exception p0

    :goto_1a7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1aa
    :goto_1aa
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/c/h;->l()Lcom/mbridge/msdk/c/h;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/c/h;->s:I

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;
    .registers 6

    new-instance v0, Lcom/mbridge/msdk/c/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/c/h;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v0, Lcom/mbridge/msdk/c/h;->i:I

    iput-object p0, v0, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    iput-object v3, v0, Lcom/mbridge/msdk/c/h;->j:Ljava/util/List;

    iput v2, v0, Lcom/mbridge/msdk/c/h;->k:I

    const/4 p0, -0x2

    iput p0, v0, Lcom/mbridge/msdk/c/h;->m:I

    iput p0, v0, Lcom/mbridge/msdk/c/h;->l:I

    const/4 p0, 0x5

    iput p0, v0, Lcom/mbridge/msdk/c/h;->n:I

    const-wide/16 v3, 0xe10

    iput-wide v3, v0, Lcom/mbridge/msdk/c/h;->u:J

    const/4 p0, 0x2

    iput p0, v0, Lcom/mbridge/msdk/c/h;->t:I

    iput v2, v0, Lcom/mbridge/msdk/c/h;->s:I

    const/16 p0, 0x64

    iput p0, v0, Lcom/mbridge/msdk/c/h;->K:I

    const/4 p0, 0x0

    iput p0, v0, Lcom/mbridge/msdk/c/h;->L:I

    iput v2, v0, Lcom/mbridge/msdk/c/h;->M:I

    iput p0, v0, Lcom/mbridge/msdk/c/h;->N:I

    const/16 p0, 0x3c

    iput p0, v0, Lcom/mbridge/msdk/c/h;->z:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/mbridge/msdk/c/h;->E:I

    iput p0, v0, Lcom/mbridge/msdk/c/h;->F:I

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;
    .registers 5

    new-instance v0, Lcom/mbridge/msdk/c/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/c/h;-><init>()V

    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/mbridge/msdk/c/h;->j:Ljava/util/List;

    iput-object p0, v0, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    iput v2, v0, Lcom/mbridge/msdk/c/h;->i:I

    iput v2, v0, Lcom/mbridge/msdk/c/h;->k:I

    const/4 p0, -0x2

    iput p0, v0, Lcom/mbridge/msdk/c/h;->m:I

    iput p0, v0, Lcom/mbridge/msdk/c/h;->l:I

    const/4 p0, 0x5

    iput p0, v0, Lcom/mbridge/msdk/c/h;->n:I

    const-wide/16 v1, 0xe10

    iput-wide v1, v0, Lcom/mbridge/msdk/c/h;->u:J

    const/4 p0, 0x2

    iput p0, v0, Lcom/mbridge/msdk/c/h;->t:I

    const/4 p0, 0x3

    iput p0, v0, Lcom/mbridge/msdk/c/h;->s:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/mbridge/msdk/c/h;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/c/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/c/h;-><init>()V

    :try_start_5
    iput-object p0, v0, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    const/4 p0, 0x1

    iput p0, v0, Lcom/mbridge/msdk/c/h;->i:I

    iput p0, v0, Lcom/mbridge/msdk/c/h;->k:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/mbridge/msdk/c/h;->n:I

    iput p0, v0, Lcom/mbridge/msdk/c/h;->m:I

    iput p0, v0, Lcom/mbridge/msdk/c/h;->l:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    return-object v0
.end method

.method public static l()Lcom/mbridge/msdk/c/h;
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/c/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/c/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/h;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/h;->B:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/h;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/h;->C:I

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->z:I

    return v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/c/h;->s:I

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->A:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->N:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->K:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->L:I

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/c/h;->D:Ljava/lang/String;

    return-void
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->M:I

    return v0
.end method

.method public final i()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/c/h;->u:J

    return-wide v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->s:I

    return v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->t:I

    return v0
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->n:I

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->q:I

    return v0
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->r:I

    return v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->l:I

    return v0
.end method

.method public final q()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->m:I

    return v0
.end method

.method public final r()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/c/h;->j:Ljava/util/List;

    return-object v0
.end method

.method public final t()Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2f

    iget-object v1, p0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v1, :cond_2a

    iget-object v5, p0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2a
    const-string v1, "adSourceList"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2f
    iget-object v1, p0, Lcom/mbridge/msdk/c/h;->j:Ljava/util/List;

    if-eqz v1, :cond_57

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_57

    iget-object v1, p0, Lcom/mbridge/msdk/c/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_44
    if-ge v2, v1, :cond_52

    iget-object v4, p0, Lcom/mbridge/msdk/c/h;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_52
    const-string v1, "ad_source_timeout"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_57
    const-string v1, "tpqn"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "aqn"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "acn"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "wt"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "current_time"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/h;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "offset"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dlct"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/h;->u:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "autoplay"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dlnet"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "no_offer"

    iget-object v2, p0, Lcom/mbridge/msdk/c/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cb_type"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clct"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/h;->x:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "clcq"

    iget-wide v2, p0, Lcom/mbridge/msdk/c/h;->y:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ready_rate"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->K:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "content"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->M:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "impt"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->N:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "icon_type"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "no_ads_url"

    iget-object v2, p0, Lcom/mbridge/msdk/c/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playclosebtn_tm"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_ctdown"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_alert"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "closeBtn"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->A:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "refreshFq"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->z:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "countdown"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->C:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "allowSkip"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->B:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tmorl"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->J:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "unitId"

    iget-object v2, p0, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "placementid"

    iget-object v2, p0, Lcom/mbridge/msdk/c/h;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ltafemty"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->E:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ltorwc"

    iget v2, p0, Lcom/mbridge/msdk/c/h;->F:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "vtag"

    iget-object v2, p0, Lcom/mbridge/msdk/c/h;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_130} :catch_131

    goto :goto_135

    :catch_131
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_135
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/mbridge/msdk/c/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mbridge/msdk/c/h;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unitId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/c/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fbPlacementId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/c/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/c/h;->h:J

    return-wide v0
.end method

.method public final v()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->i:I

    return v0
.end method

.method public final w()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->E:I

    return v0
.end method

.method public final x()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/h;->F:I

    return v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/h;->H:Ljava/lang/String;

    return-object v0
.end method
