###### Class com.bytedance.sdk.openadsdk.core.settings.a (com.bytedance.sdk.openadsdk.core.settings.a)
.class public Lcom/bytedance/sdk/openadsdk/core/settings/a;
.super Ljava/lang/Object;
.source "AdSlotSetter.java"


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public G:Z

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:J

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/g;",
            ">;"
        }
    .end annotation
.end field

.field public P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/g;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:I

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->b:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->c:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->d:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->e:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->f:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->g:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->h:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->i:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->j:I

    const/16 v3, 0x1e

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->k:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->l:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->m:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->n:I

    const/16 v3, 0x5dc

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->o:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->p:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->q:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->r:I

    const/4 v4, 0x5

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->s:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->t:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->u:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->w:I

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->x:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->y:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->z:I

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->A:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->B:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->C:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->D:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->E:I

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->F:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->G:Z

    const v2, 0xea60

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->H:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->I:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->J:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->K:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->O:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->P:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->c:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->b:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->c:I

    const/4 v3, 0x2

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->d:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->e:I

    const/16 v4, 0x64

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->f:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->g:I

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->h:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->i:I

    const/4 v6, 0x3

    iput v6, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->j:I

    const/16 v7, 0x1e

    iput v7, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->k:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->l:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->m:I

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->n:I

    const/16 v8, 0x5dc

    iput v8, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->o:I

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->p:I

    const/4 v9, -0x1

    iput v9, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->q:I

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->r:I

    const/4 v10, 0x5

    iput v10, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->s:I

    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->t:Z

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->u:I

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->w:I

    iput v9, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->x:I

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->y:I

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->z:I

    iput v10, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->A:I

    iput-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->B:Z

    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->C:Z

    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->D:Z

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->E:I

    iput v9, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->F:I

    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->G:Z

    const v11, 0xea60

    iput v11, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->H:I

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->I:I

    const/16 v12, 0x3e8

    iput v12, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->J:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->K:I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->O:Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->P:Ljava/util/List;

    if-nez v1, :cond_6f

    return-void

    :cond_6f
    const-string v13, "code_id"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a:Ljava/lang/String;

    const-string v13, "auto_play"

    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->b:I

    const-string v13, "endcard_close_time"

    invoke-virtual {v1, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->F:I

    const-string v13, "voice_control"

    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->c:I

    const-string v14, "rv_preload"

    invoke-virtual {v1, v14, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->d:I

    const-string v14, "nv_preload"

    invoke-virtual {v1, v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->e:I

    const-string v14, "proportion_watching"

    invoke-virtual {v1, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->f:I

    const-string v4, "skip_time_displayed"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->g:I

    const-string v4, "video_skip_result"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->h:I

    const-string v4, "reg_creative_control"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->i:I

    const-string v4, "play_bar_show_time"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->j:I

    const-string v4, "rv_skip_time"

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->k:I

    if-gez v4, :cond_d3

    iput v7, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->k:I

    :cond_d3
    invoke-virtual {v1, v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->l:I

    const-string v4, "if_show_win"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->m:I

    const-string v4, "sp_preload"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->n:I

    const-string v4, "stop_time"

    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->o:I

    const-string v4, "native_playable_delay"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->p:I

    const-string v4, "time_out_control"

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->q:I

    const-string v4, "playable_close_time"

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->x:I

    const-string v4, "playable_reward_type"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->r:I

    const-string v4, "reward_is_callback"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->u:I

    const-string v4, "iv_skip_time"

    invoke-virtual {v1, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->s:I

    if-gez v4, :cond_125

    iput v10, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->s:I

    :cond_125
    const-string v4, "parent_tpl_ids"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Lorg/json/JSONArray;)V

    const-string v4, "slot_type"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->w:I

    const-string v4, "close_on_click"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->t:Z

    const-string v4, "allow_system_back"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->y:I

    const-string v4, "splash_skip_time"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->z:I

    const-string v4, "splash_image_count_down_time"

    invoke-virtual {v1, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->A:I

    const-string v4, "splash_count_down_time_off"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->C:Z

    const-string v4, "splash_close_on_click"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->D:Z

    const-string v4, "splash_load_strategy"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->E:I

    if-ltz v4, :cond_172

    if-le v4, v2, :cond_174

    :cond_172
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->E:I

    :cond_174
    const-string v4, "allow_mediaview_click"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->B:Z

    const-string v4, "total_time_out"

    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->H:I

    if-lez v4, :cond_18b

    const v6, 0x1b7740

    if-le v4, v6, :cond_18d

    :cond_18b
    iput v11, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->H:I

    :cond_18d
    const-string v4, "req_parallel_num"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->I:I

    if-lt v4, v2, :cond_19a

    const/4 v6, 0x4

    if-le v4, v6, :cond_19c

    :cond_19a
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->I:I

    :cond_19c
    const-string v4, "bidding_token_tmax"

    invoke-virtual {v1, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->J:I

    const-string v4, "ad_load_type"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->K:I

    if-lt v4, v2, :cond_1b0

    if-le v4, v3, :cond_1b2

    :cond_1b0
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->K:I

    :cond_1b2
    const-string v4, "is_mediation"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->G:Z

    if-eqz v4, :cond_261

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/o;->aj()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->ad()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "mediation_config"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    :goto_1d3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_255

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "adn_name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "adn_slot_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const v9, 0x36ee80

    const-string v10, "ad_expired_time"

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v9, "req_bidding_type"

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "rit_cpm"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v10, "show_sort"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    const-string v10, "layer_time_out"

    const/16 v12, 0x7d0

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_214

    if-le v10, v11, :cond_211

    goto :goto_214

    :cond_211
    move/from16 v19, v10

    goto :goto_216

    :cond_214
    :goto_214
    const/16 v19, 0x7d0

    :goto_216
    const-string v10, "server_params"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, ""

    if-ne v9, v3, :cond_238

    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/settings/g;

    if-nez v8, :cond_227

    move-object/from16 v20, v10

    goto :goto_22d

    :cond_227
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v8

    :goto_22d
    move-object v8, v12

    move-object v12, v8

    move/from16 v16, v9

    invoke-direct/range {v12 .. v20}, Lcom/bytedance/sdk/openadsdk/core/settings/g;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_251

    :cond_238
    if-nez v9, :cond_251

    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/settings/g;

    if-nez v8, :cond_241

    move-object/from16 v20, v10

    goto :goto_247

    :cond_241
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v8

    :goto_247
    move-object v8, v12

    move-object v12, v8

    move/from16 v16, v9

    invoke-direct/range {v12 .. v20}, Lcom/bytedance/sdk/openadsdk/core/settings/g;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_251
    :goto_251
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d3

    :cond_255
    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->O:Ljava/util/List;

    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->P:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->P:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_261
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->c:I

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_26b

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->c:I

    :cond_26b
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->l:I

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_275

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->l:I

    :cond_275
    const-string v2, "waterfall_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->L:J

    const-string v2, "waterfall_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->M:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->N:Ljava/lang/String;

    return-void
.end method

.method private static a(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .registers 5

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->v:Ljava/util/List;

    const/4 v0, 0x0

    :goto_11
    :try_start_11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/a;->v:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :catch_27
    :cond_27
    :goto_27
    return-void
.end method
