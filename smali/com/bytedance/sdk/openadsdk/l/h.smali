###### Class com.bytedance.sdk.openadsdk.l.h (com.bytedance.sdk.openadsdk.l.h)
.class public Lcom/bytedance/sdk/openadsdk/l/h;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/l/h$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:I

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:J

.field private I:J

.field private J:J

.field private K:J

.field private L:J

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:I

.field private S:Z

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:Ljava/lang/String;

.field private Z:Z

.field public final a:Ljava/lang/String;

.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private aC:Lorg/json/JSONObject;

.field private aD:F

.field private aE:F

.field private aF:F

.field private aG:I

.field private aH:I

.field private aI:I

.field private aJ:I

.field private aK:I

.field private aL:I

.field private aM:I

.field private aN:I

.field private aO:I

.field private aP:I

.field private aQ:Ljava/lang/String;

.field private aR:Z

.field private aS:Z

.field private aT:Z

.field private aU:Z

.field private aV:Z

.field private aW:Z

.field private aX:Ljava/lang/String;

.field private aY:Ljava/lang/String;

.field private aZ:Ljava/lang/String;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:J

.field private af:J

.field private ag:Lorg/json/JSONObject;

.field private ah:I

.field private ai:I

.field private aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

.field private ak:Landroid/content/Context;

.field private al:Landroid/webkit/WebView;

.field private am:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private an:Lcom/bytedance/sdk/openadsdk/l/f;

.field private ao:Lcom/bytedance/sdk/openadsdk/l/a;

.field private ap:Lcom/bytedance/sdk/openadsdk/l/c;

.field private aq:I

.field private ar:I

.field private as:Lorg/json/JSONObject;

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ax:Lorg/json/JSONObject;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field private ba:Ljava/lang/String;

.field private bb:Z

.field private bc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private final l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Lcom/bytedance/sdk/openadsdk/l/b;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/l/c;Lcom/bytedance/sdk/openadsdk/l/a;Lcom/bytedance/sdk/openadsdk/l/h$a;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "playable_stuck_check_ping"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->f:Ljava/lang/String;

    const-string v0, "playable_apply_media_permission_callback"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->g:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->l:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->p:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->q:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->r:Z

    const-string v1, "PL_sdk_playable_global_viewable"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->a:Ljava/lang/String;

    const-string v1, "PL_sdk_page_screen_blank"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->b:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_destroy_analyze_summary"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->c:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_hardware_dialog_cancel"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->d:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_hardware_dialog_setting"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "adInfo"

    const-string v3, "appInfo"

    const-string v4, "subscribe_app_ad"

    const-string v5, "download_app_ad"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->s:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->t:Ljava/lang/String;

    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->u:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->v:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->x:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->y:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->z:Ljava/lang/String;

    const-wide/16 v3, 0xa

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->A:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->B:J

    const/16 v3, 0x2bc

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->C:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->D:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->E:J

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->G:J

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->I:J

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->J:J

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->K:J

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->L:J

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->M:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->N:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->O:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->P:Ljava/lang/String;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Q:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->R:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->S:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->T:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->U:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->V:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->W:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->X:I

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Y:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Z:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aa:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ab:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ac:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ad:I

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ae:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->af:J

    const/4 v1, -0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ar:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->as:Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aw:Ljava/util/Map;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ax:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aB:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aD:F

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aE:F

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aT:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aW:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bb:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bc:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/h$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->al:Landroid/webkit/WebView;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/l/i;->a(Landroid/webkit/WebView;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Landroid/view/View;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/l/c;Lcom/bytedance/sdk/openadsdk/l/a;)V

    return-void
.end method

.method private N()V
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/b;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->C:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/l/b;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->m:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$7;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private O()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ax:Lorg/json/JSONObject;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    if-eqz v0, :cond_60

    const-string v1, "/cid_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ax:Lorg/json/JSONObject;

    const-string v2, "cid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    goto :goto_60

    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    :cond_60
    :goto_60
    return-void
.end method

.method private P()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/b;->a(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->l:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-nez v1, :cond_19

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->m:Ljava/lang/Runnable;

    if-eqz v2, :cond_19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26

    :cond_19
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    :cond_1f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/b;->a(I)V

    :cond_2d
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/l/h;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ae:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/l/c;Lcom/bytedance/sdk/openadsdk/l/a;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 11

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-nez p3, :cond_7

    goto :goto_14

    :cond_7
    new-instance v6, Lcom/bytedance/sdk/openadsdk/l/h;

    sget-object v5, Lcom/bytedance/sdk/openadsdk/l/h$a;->a:Lcom/bytedance/sdk/openadsdk/l/h$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/l/h;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/l/c;Lcom/bytedance/sdk/openadsdk/l/a;Lcom/bytedance/sdk/openadsdk/l/h$a;)V

    return-object v6

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/l/h;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->am:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/l/c;Lcom/bytedance/sdk/openadsdk/l/a;)V
    .registers 5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ap:Lcom/bytedance/sdk/openadsdk/l/c;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Lcom/bytedance/sdk/openadsdk/l/a;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/l/f;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->an:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->N()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/l/h;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/l/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/l/h;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->af:J

    return-wide p1
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aq:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ar:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_14

    return-void

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aq:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ar:I

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "width"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aq:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ar:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "resize"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->as:Lorg/json/JSONObject;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3b

    goto :goto_43

    :catchall_3b
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "resetViewDataJsonByView error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_43
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/l/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/l/h;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aA:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aB:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aB:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lynxview"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "playable_hash"

    const-string v3, "surl"

    const-string v4, ""

    if-nez v1, :cond_33

    if-eqz p2, :cond_31

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    move-object v0, v4

    goto :goto_3b

    :cond_33
    :goto_33
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3b
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_59

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_59
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aA:Ljava/lang/String;

    :cond_5f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aA:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/l/h;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "rubeex://playable-minigamelite?id=%1s&schema=%2s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    return-object p1
.end method

.method private e(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2} :catch_7d

    const-string v0, "playable_url"

    if-nez p1, :cond_1d

    :try_start_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/h$a;->a:Lcom/bytedance/sdk/openadsdk/l/h$a;

    if-eq p1, v1, :cond_17

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->k(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->O()V

    :cond_17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_41

    :cond_1d
    const/4 v1, 0x3

    if-eq p1, v1, :cond_36

    const/4 v1, 0x4

    if-ne p1, v1, :cond_24

    goto :goto_36

    :cond_24
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_41

    :cond_2a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aX:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aY:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_41

    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aZ:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ba:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41
    :goto_41
    const-string p1, "playable_render_type"

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz p1, :cond_7d

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_4e} :catch_7d

    const-string v0, "reportJSSDKEvent by ActionProxy"

    const-string v1, "PlayablePlugin"

    if-nez p1, :cond_6b

    :try_start_54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/l/h$a;->a:Lcom/bytedance/sdk/openadsdk/l/h$a;

    if-ne p1, v2, :cond_62

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6b

    :cond_62
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Lorg/json/JSONObject;)V

    goto :goto_7d

    :cond_6b
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-eqz p1, :cond_78

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Lorg/json/JSONObject;)V

    goto :goto_7d

    :cond_78
    const-string p1, "reportJSSDKEvent error no not playable url"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_7d} :catch_7d

    :catch_7d
    :cond_7d
    :goto_7d
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->al:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/l/h;)Lcom/bytedance/sdk/openadsdk/l/b;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/l/h;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->af:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/l/h;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ae:J

    return-wide v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/l/h;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->C:I

    return p0
.end method

.method private k(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "/union-fe/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "/union-fe-sg/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "/union-fe-i18n/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/l/h;)I
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Q:I

    return v0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/l/h;)I
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->R:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->R:I

    return v0
.end method


# virtual methods
.method public A()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->g()V

    :cond_7
    return-void
.end method

.method public B()V
    .registers 9

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->J:J
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_38

    const-string v3, "playable_material_first_frame_show_duration"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1a

    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->J:J

    sub-long/2addr v1, v6

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1d

    :cond_1a
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1d
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_1f} :catch_38

    const-string v3, "playable_material_first_frame_load_duration"

    cmp-long v6, v1, v4

    if-lez v6, :cond_30

    :try_start_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_33

    :cond_30
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_33
    const-string v1, "PL_sdk_material_first_frame_show"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method

.method public C()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->i()V

    :cond_7
    return-void
.end method

.method public D()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->j()V

    :cond_7
    return-void
.end method

.method public E()V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->af:J

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/b;->a(J)V

    :cond_19
    return-void
.end method

.method public F()V
    .registers 1

    return-void
.end method

.method public G()V
    .registers 1

    return-void
.end method

.method public H()V
    .registers 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_15} :catch_31

    const-string v3, "playable_jssdk_load_success_duration"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_28

    :try_start_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_2b
    const-string v1, "PL_sdk_jssdk_load_success"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->c()V

    :cond_3c
    return-void
.end method

.method public I()V
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->x:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->K:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/h$a;->d:Lcom/bytedance/sdk/openadsdk/l/h$a;

    if-ne v0, v1, :cond_39

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->P()V

    goto :goto_60

    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    if-nez v0, :cond_60

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/b;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->C:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/l/b;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->P()V

    goto :goto_60

    :cond_39
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->P()V

    goto :goto_60

    :cond_50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    if-nez v0, :cond_60

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/b;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->C:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/l/b;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->P()V

    :cond_60
    :goto_60
    return-void
.end method

.method public J()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->a()V

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->l:Landroid/os/Handler;

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_27

    :catchall_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stuttering detection has been paused due to a crash.-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playable_CrashMonitor"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public K()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ar:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aF:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aG:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aH:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aI:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aJ:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aK:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aL:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aM:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aN:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aO:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aP:I

    return-void
.end method

.method public L()V
    .registers 11

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bb:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bb:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->E:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->q:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->K()V

    :try_start_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->am:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_34

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_34

    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_34

    :catchall_34
    :cond_34
    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->an:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->b()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    :catchall_39
    const/4 v0, 0x0

    :try_start_3a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/l/b;->a()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->o:Lcom/bytedance/sdk/openadsdk/l/b;

    :cond_43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->l:Landroid/os/Handler;

    if-eqz v1, :cond_62

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b

    goto :goto_62

    :catchall_4b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Playable_CrashMonitor"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    :try_start_62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_99

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "playable_all_times"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Q:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "playable_hit_times"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->R:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Q:I
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_99

    const-string v3, "playable_hit_ratio"

    if-lez v2, :cond_90

    :try_start_83
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->R:I

    int-to-double v4, v4

    int-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v8

    div-double/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_94

    :cond_90
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_94
    const-string v2, "PL_sdk_preload_times"

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_99
    .catchall {:try_start_83 .. :try_end_99} :catchall_99

    :catchall_99
    :cond_99
    :try_start_99
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_de

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_cd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    sub-long/2addr v1, v5

    const-string v5, "PlayablePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playable show time +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->D:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->D:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    :cond_cd
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "playable_user_play_duration"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->D:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "PL_sdk_user_play_duration"

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_de
    .catchall {:try_start_99 .. :try_end_de} :catchall_de

    :catchall_de
    :cond_de
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public M()Ljava/lang/String;
    .registers 2

    const-string v0, "function playable_callJS(){return \"Android call the JS method is callJS\";}"

    return-object v0
.end method

.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->at:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 4

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aR:Z

    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "endcard_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aR:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "volumeChange"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setIsMute error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    return-object p0
.end method

.method protected a(ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->J()V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/h;->c(ILjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_b
    const-string v1, "playable_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_1e

    :catchall_16
    move-exception p1

    const-string p2, "PlayablePlugin"

    const-string v1, "reportRenderFatal error"

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    const-string p1, "PL_sdk_global_faild"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->az:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v1, "playable_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_fail_url"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception p1

    const-string p2, "PlayablePlugin"

    const-string p3, "onWebReceivedError error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_22
    const-string p1, "PL_sdk_html_load_error"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    if-eqz p1, :cond_42

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    const-string p2, "ContainerLoadFail"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/h;->a(ILjava/lang/String;)V

    :cond_42
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->am:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    goto :goto_1f

    :catchall_17
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setViewForScreenSize error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL JS ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1f
    const-string v1, ""

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayablePlugin"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ap:Lcom/bytedance/sdk/openadsdk/l/c;

    if-eqz v0, :cond_34

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_34
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public a(ZLjava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_46

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->az:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    const-string v0, "playable_code"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "playable_msg"

    const-string v0, "url load error"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "playable_fail_url"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    goto :goto_26

    :catchall_1e
    move-exception p2

    const-string p3, "PlayablePlugin"

    const-string v0, "onWebReceivedHttpError error"

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    const-string p2, "PL_sdk_html_load_error"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    if-eqz p1, :cond_46

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    const-string p2, "ContainerLoadFail"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/h;->a(ILjava/lang/String;)V

    :cond_46
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->au:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 9

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-nez v0, :cond_1c

    const-string v0, "playable_background_show_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ab:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1c
    :goto_1c
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-eqz v0, :cond_23

    const-string v0, "PL_sdk_viewable_true"

    goto :goto_25

    :cond_23
    const-string v0, "PL_sdk_viewable_false"

    :goto_25
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->G:J

    const/4 p1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_56

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-eqz v0, :cond_56

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->G:J

    const/4 v0, 0x0

    const-string v1, "PL_sdk_page_show"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_56

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-eqz v1, :cond_4e

    if-eq v1, v2, :cond_4e

    if-ne v1, p1, :cond_56

    :cond_4e
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->y:Z

    if-eqz v1, :cond_56

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/a;->a(I)V

    :cond_56
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->G:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_79

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aT:Z

    if-nez v0, :cond_79

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aT:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_79

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-eqz v1, :cond_72

    if-eq v1, v2, :cond_72

    if-ne v1, p1, :cond_79

    :cond_72
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->y:Z

    if-eqz p1, :cond_79

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(I)V

    :cond_79
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    const-string v0, "PlayablePlugin"

    if-eqz p1, :cond_86

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    goto :goto_ae

    :cond_86
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    sub-long/2addr v1, v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playable show time +"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->D:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->D:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->F:J

    :cond_ae
    :goto_ae
    :try_start_ae
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "viewStatus"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "viewableChange"

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_bf
    .catchall {:try_start_ae .. :try_end_bf} :catchall_c0

    goto :goto_c6

    :catchall_c0
    move-exception p1

    const-string v1, "setViewable error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    if-eqz p1, :cond_ce

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->I()V

    goto :goto_d1

    :cond_ce
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->J()V

    :goto_d1
    return-object p0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aw:Ljava/util/Map;

    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- Detected that the page is stuck for more than 2s and needs to be reported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playable_CrashMonitor"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->U:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    if-nez v0, :cond_23

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    const-string v1, "playable_stuck_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    const-string v1, "playable_stuck_reason"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->K:J
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_4e

    const-string p2, "playable_stuck_duration"

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_48

    :try_start_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->K:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    invoke-virtual {v2, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_4f

    :cond_48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    invoke-virtual {v0, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_4e

    goto :goto_4f

    :catchall_4e
    nop

    :goto_4f
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    const-string v0, "PL_sdk_page_stuck"

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->J()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz p2, :cond_6e

    const/4 p2, 0x2

    if-ne p1, p2, :cond_67

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    :cond_67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->h(Lorg/json/JSONObject;)V

    :cond_6e
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p2, p1, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_18
    return-void
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/h;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "playable_style"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aC:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableStyle error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-object p0
.end method

.method public c(Z)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 4

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aU:Z

    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "send_click"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aU:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "change_playable_click"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableClick error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    return-object p0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aC:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 11

    const-string v0, "log_extra"

    const-string v1, "ad_extra_data"

    const-string v2, "playable_render_type"

    const-string v3, "PlayablePlugin"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    return-void

    :cond_f
    if-nez p2, :cond_16

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_16
    :try_start_16
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->S:Z

    const/4 v5, 0x1

    if-nez v4, :cond_21

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->R:I

    if-lez v4, :cond_21

    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->S:Z

    :cond_21
    const-string v4, "playable_event"

    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2, p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "playable_viewable"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_session_id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->t:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_1f4

    const/4 v4, 0x4

    const-string v6, "playable_url"

    if-nez p1, :cond_5b

    :try_start_44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    sget-object v5, Lcom/bytedance/sdk/openadsdk/l/h$a;->a:Lcom/bytedance/sdk/openadsdk/l/h$a;

    if-eq p1, v5, :cond_55

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->k(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_55

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->O()V

    :cond_55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-virtual {p2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7d

    :cond_5b
    const/4 v7, 0x3

    if-eq p1, v7, :cond_72

    if-ne p1, v4, :cond_61

    goto :goto_72

    :cond_61
    if-eq p1, v5, :cond_66

    const/4 v5, 0x2

    if-ne p1, v5, :cond_7d

    :cond_66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aX:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aY:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/bytedance/sdk/openadsdk/l/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7d

    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aZ:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ba:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/bytedance/sdk/openadsdk/l/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7d
    :goto_7d
    const-string p1, "playable_full_url"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aB:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_replay_count"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->T:I

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_is_prerender"

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aV:Z

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_is_preload"

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->S:Z

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_scenes_type"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_gecko_key"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aX:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_b1
    .catchall {:try_start_44 .. :try_end_b1} :catchall_1f4

    const-string v7, ""

    if-eqz v5, :cond_b7

    move-object v5, v7

    goto :goto_b9

    :cond_b7
    :try_start_b7
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aX:Ljava/lang/String;

    :goto_b9
    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_gecko_channel"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aY:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c7

    goto :goto_c9

    :cond_c7
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aY:Ljava/lang/String;

    :goto_c9
    invoke-virtual {p2, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_sdk_version"

    const-string v5, "6.6.0"

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_minigamelite_id"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aZ:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_minigamelite_schema"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ba:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_is_debug"

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aW:Z

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_retry_count"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->V:I

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_enter_from"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->W:I

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_sequence"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->X:I

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_current_section"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Y:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_playable_finish"

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Z:Z

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_card_session"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->M:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_video_session"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->N:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_network_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_lynx_version"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->z:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "tag"

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/l/h;->u:Ljava/lang/String;

    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "nt"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "category"

    const-string v5, "umeng"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "is_ad_event"

    const-string v5, "1"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "refer"

    const-string v5, "playable"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ax:Lorg/json/JSONObject;

    const-string v7, "cid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ax:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1e3

    const/4 v4, -0x2

    if-ne v0, v4, :cond_172

    goto/16 :goto_1e3

    :cond_172
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz p1, :cond_1dd

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bc:Ljava/util/List;

    if-eqz p1, :cond_1ad

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1ad

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_186
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1a2

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Lorg/json/JSONObject;)V

    goto :goto_186

    :cond_1a8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1ad
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I
    :try_end_1af
    .catchall {:try_start_b7 .. :try_end_1af} :catchall_1f4

    const-string v0, "reportEvent by ActionProxy"

    if-nez p1, :cond_1ca

    :try_start_1b3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/l/h$a;->a:Lcom/bytedance/sdk/openadsdk/l/h$a;

    if-ne p1, v1, :cond_1c1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1ca

    :cond_1c1
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Lorg/json/JSONObject;)V

    goto :goto_1fa

    :cond_1ca
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-eqz p1, :cond_1d7

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Lorg/json/JSONObject;)V

    goto :goto_1fa

    :cond_1d7
    const-string p1, "reportEvent error no not playable url"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fa

    :cond_1dd
    const-string p1, "reportEvent error no impl"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fa

    :cond_1e3
    :goto_1e3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bc:Ljava/util/List;

    if-nez p2, :cond_1ee

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bc:Ljava/util/List;

    :cond_1ee
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->bc:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f3
    .catchall {:try_start_1b3 .. :try_end_1f3} :catchall_1f4

    return-void

    :catchall_1f4
    move-exception p1

    const-string p2, "reportEvent error"

    invoke-static {v3, p2, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1fa
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->g(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p1, :cond_35

    const-string v0, "resource_base64"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    const/4 v1, -0x1

    const-string v2, "resource_type"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "resource_name"

    const-string v3, "playable_media"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_2f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->av:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->au:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/g;->a()Z

    move-result v2

    const-string v3, ""

    const-string v4, "PlayablePlugin"

    if-eqz v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayablePlugin JSB-REQ ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_28

    :cond_27
    move-object v5, v3

    :goto_28
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->an:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/g;->a()Z

    move-result v2

    if-eqz v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayablePlugin JSB-RSP ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] time:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    return-object p2
.end method

.method public d(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_15

    :try_start_4
    const-string v0, "isPrevent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->a(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_15
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aQ:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ax:Lorg/json/JSONObject;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->at:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 10

    const-string v0, "lynxview"

    const-string v1, "webview"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aB:Ljava/lang/String;

    :try_start_6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_83

    const-string v5, "?"

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v4, :cond_74

    :try_start_1a
    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_74

    :cond_23
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    if-eqz v3, :cond_36

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_52

    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    if-eqz v3, :cond_83

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    :cond_44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-ne v0, v6, :cond_4d

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->a(I)Lcom/bytedance/sdk/openadsdk/l/h;

    goto :goto_83

    :cond_4d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->a(I)Lcom/bytedance/sdk/openadsdk/l/h;

    goto :goto_83

    :cond_52
    :goto_52
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/l/h;->a(I)Lcom/bytedance/sdk/openadsdk/l/h;

    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_72

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_83

    :cond_72
    move-object p1, v0

    goto :goto_83

    :cond_74
    :goto_74
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/l/h;->a(I)Lcom/bytedance/sdk/openadsdk/l/h;

    if-eqz p1, :cond_83

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_83

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_83
    .catchall {:try_start_1a .. :try_end_83} :catchall_83

    :catchall_83
    :cond_83
    :goto_83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->av:Ljava/lang/String;

    return-object v0
.end method

.method public f(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_a

    const-string v0, "section"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Y:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->i(Lorg/json/JSONObject;)V

    :cond_11
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 13

    const-string p1, "PlayablePlugin"

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->G:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1c

    sub-long v4, v2, v6

    :cond_1c
    const-string v2, "playable_page_show_duration"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_22

    goto :goto_28

    :catchall_22
    move-exception v2

    const-string v3, "reportUrlLoadStart error"

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    const-string v2, "PL_sdk_html_load_start"

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->v:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    const/4 v3, 0x2

    if-eqz v1, :cond_3b

    if-eq v1, v0, :cond_3b

    if-ne v1, v3, :cond_63

    :cond_3b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->A:J

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ay:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-eq v1, v0, :cond_56

    if-ne v1, v3, :cond_61

    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/l/h;->B:J

    mul-long v3, v3, v7

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_61
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->v:Z

    :cond_63
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->q:Z

    if-eqz v0, :cond_178

    :try_start_67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    sget v5, Lcom/bytedance/sdk/openadsdk/l/e;->l:I

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;I)Z

    move-result v4
    :try_end_7e
    .catchall {:try_start_67 .. :try_end_7e} :catchall_172

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v4, :cond_9e

    :try_start_84
    const-string v4, "Microphone_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/l/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a4

    :cond_9a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a4

    :cond_9e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a4
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/l/e;->k:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_ba

    const-string v4, "Magetometer_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c0

    :cond_ba
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_c0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/l/e;->j:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_d6

    const-string v4, "Accelerometer_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_dc

    :cond_d6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_dc
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/l/e;->i:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_f2

    const-string v4, "Gyro_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f8

    :cond_f2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_f8
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/l/e;->h:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_11c

    const-string v4, "Camera_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v7, "android.permission.CAMERA"

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/l/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_118

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_122

    :cond_118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_122

    :cond_11c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_122
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/l/e;->g:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_144

    const-string v4, "Photo"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_140

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14a

    :cond_140
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14a

    :cond_144
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_14a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "playable_available_hardware_name"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playable_available_hardware_code"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playable_available_hardware_auth_code"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PL_sdk_hardware_detect"

    invoke-virtual {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->q:Z
    :try_end_171
    .catchall {:try_start_84 .. :try_end_171} :catchall_172

    goto :goto_178

    :catchall_172
    move-exception v0

    const-string v1, "Hardware detect error"

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_178
    :goto_178
    return-void
.end method

.method public g(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->j(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 12

    const-string v0, "PlayablePlugin"

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->az:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->I:J

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1e

    sub-long v3, v1, v5

    :cond_1e
    const-string v1, "playable_html_load_start_duration"

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_24

    goto :goto_2a

    :catchall_24
    move-exception v1

    const-string v2, "reportUrlLoadFinish error"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    const-string v1, "PL_sdk_html_load_finish"

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_36
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-nez p1, :cond_61

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_57

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->p:Z

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->al:Landroid/webkit/WebView;

    if-eqz p1, :cond_57

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->p:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->M()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/l/h$9;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/l/h$9;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->I()V
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_5b

    goto :goto_61

    :catchall_5b
    move-exception p1

    const-string v1, "crashMonitor error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public h(Lorg/json/JSONObject;)V
    .registers 6

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ag:Lorg/json/JSONObject;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->X:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->X:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->k(Lorg/json/JSONObject;)V

    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->J()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->x:Z

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->K:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ae:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->af:J

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ah:I

    if-nez p1, :cond_47

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_56

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->al:Landroid/webkit/WebView;

    if-eqz p1, :cond_56

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$8;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    const-string v1, "javascript:typeof playable_callJS === \'function\' && playable_callJS()"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_56

    :cond_47
    if-eq p1, v1, :cond_4c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_56

    :cond_4c
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "playable_stuck_check_ping"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->k:Ljava/lang/Runnable;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->C:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aR:Z

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$10;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "The material directly invokes the exception pocket mask on the client"

    if-eqz p1, :cond_a

    const-string v1, "error_msg"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->b(ILjava/lang/String;)V

    return-void
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aS:Z

    return v0
.end method

.method public j()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "send_click"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aU:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getPlayableClickStatus error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/l/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->l(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public k()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->an:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/f;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public k(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->m(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public l()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object v1

    :catchall_13
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public l(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    if-nez p1, :cond_8

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :cond_8
    const/4 v0, 0x0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_28

    const/4 v1, 0x2

    if-eq p1, v1, :cond_23

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1e

    goto :goto_2c

    :cond_1e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->n()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2c

    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->m()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->l()Lorg/json/JSONObject;

    move-result-object v0

    :goto_2c
    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object v1

    :catchall_13
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public m(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    if-nez p1, :cond_8

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :cond_8
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x17

    const-string v4, "result"

    if-eq p1, v2, :cond_48

    const/4 v2, 0x2

    if-eq p1, v2, :cond_34

    const/4 v2, 0x3

    if-eq p1, v2, :cond_22

    goto :goto_5b

    :cond_22
    :try_start_22
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_30

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_5b

    :cond_30
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_5b

    :cond_34
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_44

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_5b

    :cond_44
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_5b

    :cond_48
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_58

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_5b

    :cond_58
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_5b} :catch_5b

    :catch_5b
    :goto_5b
    return-object v0
.end method

.method public n()Lorg/json/JSONObject;
    .registers 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    goto :goto_21

    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ak:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :goto_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "isHasRead"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isHasWrite"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "result"

    if-eqz v0, :cond_37

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    return-object v3

    :catchall_3c
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public n(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_39

    const/4 v0, 0x1

    const-string v1, "success"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const/4 v1, 0x3

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->I()V

    goto :goto_1d

    :cond_13
    const/4 v1, -0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ai:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/a;->b(Z)V

    :cond_1d
    :goto_1d
    if-nez p1, :cond_39

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    if-eqz p1, :cond_39

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->w:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    const-string v0, "CaseRenderFail"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->a(ILjava/lang/String;)V

    :cond_39
    return-void
.end method

.method public o()Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "scene_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "safe_area_top_height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aD:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "safe_area_bottom_height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aE:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "playable_enter_from"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->W:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playable_retry_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->V:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playable_card_session"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->M:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_video_session"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_network_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/h;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aweme_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/h;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    return-object v0

    :catchall_4d
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "playableInfo error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method protected o(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->d(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->a()Lcom/bytedance/sdk/openadsdk/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/d;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->O:Ljava/lang/String;

    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->O:Ljava/lang/String;

    return-object v0
.end method

.method protected p(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->e(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/l/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    return-object v0
.end method

.method protected q(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/a;->f(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public r()Lorg/json/JSONObject;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->as:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->am:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->as:Lorg/json/JSONObject;

    return-object v0

    :cond_17
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Landroid/view/View;)V

    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->as:Lorg/json/JSONObject;

    return-object v0
.end method

.method public s()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ax:Lorg/json/JSONObject;

    return-object v0
.end method

.method public t()Lorg/json/JSONObject;
    .registers 9

    const-string v0, "y"

    const-string v1, "x"

    const-string v2, "height"

    const-string v3, "width"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v5, "devicePixelRatio"

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aF:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aG:I

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aH:I

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "screen"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aJ:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aI:I

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aK:I

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aL:I

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "webview"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aN:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aM:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aO:I

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aP:I

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "visible"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catchall {:try_start_d .. :try_end_65} :catchall_66

    goto :goto_6e

    :catchall_66
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getViewport error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6e
    return-object v4
.end method

.method public u()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->b()V

    :cond_7
    return-void
.end method

.method public v()V
    .registers 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/a;->b(Z)V

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->J:J
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_f} :catch_42

    const-string v3, "playable_material_interactable_duration"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_22

    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/l/h;->J:J

    sub-long/2addr v1, v6

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_25

    :cond_22
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_25
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_27} :catch_42

    const-string v3, "playable_material_interactable_load_duration"

    cmp-long v6, v1, v4

    if-lez v6, :cond_3a

    :try_start_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/l/h;->H:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->L:J

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3d

    :cond_3a
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_3d
    const-string v1, "PL_sdk_material_interactable"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_42} :catch_42

    :catch_42
    return-void
.end method

.method public w()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->d()V

    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->U:I

    return-void
.end method

.method public x()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->Z:Z

    return-void
.end method

.method public y()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/l/h$a;->d:Lcom/bytedance/sdk/openadsdk/l/h$a;

    if-ne v1, v2, :cond_15

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->U:I

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->e()V

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->e()V

    :cond_18
    :goto_18
    return-void
.end method

.method public z()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h;->ao:Lcom/bytedance/sdk/openadsdk/l/a;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->aj:Lcom/bytedance/sdk/openadsdk/l/h$a;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/l/h$a;->d:Lcom/bytedance/sdk/openadsdk/l/h$a;

    if-ne v1, v2, :cond_15

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/h;->U:I

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->f()V

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/a;->f()V

    :cond_18
    :goto_18
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass1 (com.bytedance.sdk.openadsdk.l.h$1)
.class Lcom/bytedance/sdk/openadsdk/l/h$1;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$1;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$1;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Lcom/bytedance/sdk/openadsdk/l/h;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h$1;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Lcom/bytedance/sdk/openadsdk/l/h;Landroid/view/View;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_1d

    :catchall_15
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "onSizeChanged error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass10 (com.bytedance.sdk.openadsdk.l.h$10)
.class Lcom/bytedance/sdk/openadsdk/l/h$10;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$10;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$10;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->l(Lcom/bytedance/sdk/openadsdk/l/h;)I

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass2 (com.bytedance.sdk.openadsdk.l.h$2)
.class Lcom/bytedance/sdk/openadsdk/l/h$2;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$2;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$2;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->m(Lcom/bytedance/sdk/openadsdk/l/h;)I

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass3 (com.bytedance.sdk.openadsdk.l.h$3)
.class Lcom/bytedance/sdk/openadsdk/l/h$3;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$3;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$3;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Lcom/bytedance/sdk/openadsdk/l/h;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$3;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Lcom/bytedance/sdk/openadsdk/l/h;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$3;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->d(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h$3;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->c(Lcom/bytedance/sdk/openadsdk/l/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$3;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    const/4 v1, 0x2

    const-string v2, "ContainerLoadTimeOut"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/h;->a(ILjava/lang/String;)V

    :cond_25
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass4 (com.bytedance.sdk.openadsdk.l.h$4)
.class Lcom/bytedance/sdk/openadsdk/l/h$4;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$4;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$4;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Lcom/bytedance/sdk/openadsdk/l/h;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$4;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Lcom/bytedance/sdk/openadsdk/l/h;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$4;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->d(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/h$4;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/h;->e(Lcom/bytedance/sdk/openadsdk/l/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$4;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    const/4 v1, 0x3

    const-string v2, "JSSDKLoadTimeOut"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/h;->a(ILjava/lang/String;)V

    :cond_25
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass5 (com.bytedance.sdk.openadsdk.l.h$5)
.class Lcom/bytedance/sdk/openadsdk/l/h$5;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ====Scheduled Task=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCheckJSRunnable"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_38

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->f(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->f(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/h$5$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/l/h$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/l/h$5;)V

    const-string v2, "javascript:typeof playable_callJS === \'function\' && playable_callJS()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->h(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->h(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4b
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass5.AnonymousClass1 (com.bytedance.sdk.openadsdk.l.h$5$1)
.class Lcom/bytedance/sdk/openadsdk/l/h$5$1;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h$5;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h$5;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a:Lcom/bytedance/sdk/openadsdk/l/h$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a:Lcom/bytedance/sdk/openadsdk/l/h$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->g(Lcom/bytedance/sdk/openadsdk/l/h;)Lcom/bytedance/sdk/openadsdk/l/b;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a:Lcom/bytedance/sdk/openadsdk/l/h$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/l/h$5;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/h;->g(Lcom/bytedance/sdk/openadsdk/l/h;)Lcom/bytedance/sdk/openadsdk/l/b;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/l/b;->a(J)V

    :cond_19
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h$5$1;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass6 (com.bytedance.sdk.openadsdk.l.h$6)
.class Lcom/bytedance/sdk/openadsdk/l/h$6;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$6;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ====Lynx detect scheduled tasks=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCheckJSRunnable"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$6;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "playable_stuck_check_ping"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$6;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->h(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$6;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->h(Lcom/bytedance/sdk/openadsdk/l/h;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass7 (com.bytedance.sdk.openadsdk.l.h$7)
.class Lcom/bytedance/sdk/openadsdk/l/h$7;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->i(Lcom/bytedance/sdk/openadsdk/l/h;)J

    move-result-wide v0

    const-string v2, "Clicking on the hot zone causes the program to freeze."

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_3d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->i(Lcom/bytedance/sdk/openadsdk/l/h;)J

    move-result-wide v0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/l/h;->j(Lcom/bytedance/sdk/openadsdk/l/h;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/l/h;->k(Lcom/bytedance/sdk/openadsdk/l/h;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v0, v6

    if-gtz v8, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/l/h;->I()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/l/h;->a(Lcom/bytedance/sdk/openadsdk/l/h;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Lcom/bytedance/sdk/openadsdk/l/h;J)J

    goto :goto_42

    :cond_37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/l/h;->b(ILjava/lang/String;)V

    goto :goto_42

    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/h$7;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/l/h;->b(ILjava/lang/String;)V

    :goto_42
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass8 (com.bytedance.sdk.openadsdk.l.h$8)
.class Lcom/bytedance/sdk/openadsdk/l/h$8;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->h(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$8;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$8;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/l/h;->b(Lcom/bytedance/sdk/openadsdk/l/h;J)J

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h$8;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.AnonymousClass9 (com.bytedance.sdk.openadsdk.l.h$9)
.class Lcom/bytedance/sdk/openadsdk/l/h$9;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/h;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/h$9;->a:Lcom/bytedance/sdk/openadsdk/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load inject js="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Playable_CrashMonitor"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/h$9;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.h.a (com.bytedance.sdk.openadsdk.l.h$a)
.class public final enum Lcom/bytedance/sdk/openadsdk/l/h$a;
.super Ljava/lang/Enum;
.source "PlayablePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/l/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/l/h$a;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/l/h$a;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/l/h$a;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/l/h$a;

.field private static final synthetic e:[Lcom/bytedance/sdk/openadsdk/l/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h$a;

    const-string v1, "LAND_PAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/l/h$a;->a:Lcom/bytedance/sdk/openadsdk/l/h$a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/h$a;

    const-string v3, "FEED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/h$a;->b:Lcom/bytedance/sdk/openadsdk/l/h$a;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/l/h$a;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/l/h$a;->c:Lcom/bytedance/sdk/openadsdk/l/h$a;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/l/h$a;

    const-string v7, "FEED_AWEME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/sdk/openadsdk/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/l/h$a;->d:Lcom/bytedance/sdk/openadsdk/l/h$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/sdk/openadsdk/l/h$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/bytedance/sdk/openadsdk/l/h$a;->e:[Lcom/bytedance/sdk/openadsdk/l/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/h$a;
    .registers 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/l/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/l/h$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/l/h$a;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/h$a;->e:[Lcom/bytedance/sdk/openadsdk/l/h$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/l/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/l/h$a;

    return-object v0
.end method
