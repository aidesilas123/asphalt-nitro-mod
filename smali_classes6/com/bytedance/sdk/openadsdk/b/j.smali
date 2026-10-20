###### Class com.bytedance.sdk.openadsdk.b.j (com.bytedance.sdk.openadsdk.b.j)
.class public Lcom/bytedance/sdk/openadsdk/b/j;
.super Ljava/lang/Object;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/j$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private A:Z

.field private B:Lcom/bytedance/sdk/openadsdk/b/i;

.field private volatile C:J

.field private final D:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final E:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile G:I

.field private H:I

.field private volatile I:J

.field private volatile J:J

.field private volatile K:J

.field private final L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private M:Ljava/lang/String;

.field private N:J

.field private b:I

.field private c:J

.field private d:I

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Landroid/content/Context;

.field private final n:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:Z

.field private final v:Z

.field private final w:Ljava/util/concurrent/atomic/AtomicInteger;

.field private x:Landroid/webkit/WebView;

.field private y:Z

.field private z:Lcom/bytedance/sdk/openadsdk/b/c/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bytedance/sdk/openadsdk/b/j;->a:[I

    return-void

    nop

    :array_a
    .array-data 4
        0xa
        0x1e
        0x32
        0x4b
        0x64
    .end array-data
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Landroid/webkit/WebView;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->b:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->c:J

    const/4 v3, 0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, -0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->i:I

    const-string v4, "landingpage"

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->p:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->q:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->r:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->s:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->t:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->u:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->v:Z

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->y:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->A:Z

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->C:J

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->G:I

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->m:Landroid/content/Context;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    if-nez p2, :cond_7a

    return-void

    :cond_7a
    instance-of v0, p2, Lcom/bytedance/sdk/component/widget/PangleWebView;

    if-eqz v0, :cond_85

    check-cast p2, Lcom/bytedance/sdk/component/widget/PangleWebView;

    iget-wide v3, p2, Lcom/bytedance/sdk/component/widget/PangleWebView;->a:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->N:J

    goto :goto_8b

    :cond_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->N:J

    :goto_8b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_a7

    :try_start_91
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/j$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/b/j$a;-><init>(Lcom/bytedance/sdk/openadsdk/b/j;Lcom/bytedance/sdk/openadsdk/b/j$1;)V

    const-string v3, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {p2, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9e} :catch_9f

    goto :goto_a7

    :catch_9f
    move-exception p2

    const-string v0, "LandingPageLog"

    const-string v3, "addJavascriptInterface exception"

    invoke-static {v0, v3, p2}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    if-eqz p1, :cond_bb

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aR()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_bb

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aR()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "page_id"

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->c:J

    :cond_bb
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/b/i;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/j;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Landroid/webkit/WebView;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->B:Lcom/bytedance/sdk/openadsdk/b/i;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/j;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .registers 11

    const-string v0, "\""

    :try_start_2
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/f;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/settings/f;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "cid"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->a()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/q;->Y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->a()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/q;->Y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "log_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->a()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/q;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "\"/** adInfo **/\""

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\"/** first_page **/\""

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"/** ix_to_externalurl **/\""

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->c:J
    :try_end_54
    .catchall {:try_start_2 .. :try_end_54} :catchall_fd

    const-wide/16 v5, -0x1

    const-string v1, "0"

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5f

    :try_start_5c
    const-string v3, "1"

    goto :goto_60

    :cond_5f
    move-object v3, v1

    :goto_60
    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"/** preload_status **/\""

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6c

    const-string v1, "2"

    :cond_6c
    invoke-static {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"/** scene_state **/\""

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"/** web_init_time **/\""

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->N:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"/** channel_name **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->a()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->af()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"/** session_id **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"/** web_url **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->a()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_105

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_105

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    if-eqz p2, :cond_105

    new-instance p2, Lcom/bytedance/sdk/openadsdk/b/j$2;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/b/j$2;-><init>(Lcom/bytedance/sdk/openadsdk/b/j;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Ljava/lang/Runnable;)V
    :try_end_fc
    .catchall {:try_start_5c .. :try_end_fc} :catchall_fd

    goto :goto_105

    :catchall_fd
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;)V

    :cond_105
    :goto_105
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/j;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/j;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_19

    :catchall_19
    const-string p1, "load_finish_progress"

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_1e
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 11

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->y:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz v0, :cond_59

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_59

    :cond_10
    const/4 v0, 0x0

    if-eqz p2, :cond_52

    :try_start_13
    const-string v1, "is_playable"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "usecache"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3d} :catch_52

    :try_start_3d
    const-string v0, "ad_extra_data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-lez p2, :cond_51

    const-string p2, "duration"

    invoke-virtual {v1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    move-object v0, v1

    :catch_52
    :cond_52
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    invoke-static {p2, p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->c(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_59
    :goto_59
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->j()I

    move-result p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/j$1;

    const-string v1, "sendPrefLog"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/b/j$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/j;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/j;Lcom/bytedance/sdk/openadsdk/core/settings/f;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Lcom/bytedance/sdk/openadsdk/core/settings/f;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/settings/f;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_3a

    goto :goto_2d

    :pswitch_d
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :pswitch_18
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :pswitch_23
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    packed-switch v2, :pswitch_data_44

    return v1

    :pswitch_31
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/f;->f:Z

    return p1

    :pswitch_34
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/f;->e:Z

    return p1

    :pswitch_37
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/f;->d:Z

    return p1

    :pswitch_data_3a
    .packed-switch 0x30
        :pswitch_23
        :pswitch_18
        :pswitch_d
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/b/j;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->A:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->bu()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private j()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    :try_start_5
    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_12

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :catchall_12
    :cond_12
    return v1
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/b/j;
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->y:Z

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/model/q;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->q:J

    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandingPageLog"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->C:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->C:J

    :cond_27
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->r:J

    const/16 v4, 0x64

    cmp-long v5, v0, v2

    if-nez v5, :cond_38

    if-lez p2, :cond_38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->r:J

    goto :goto_46

    :cond_38
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->s:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_46

    if-ne p2, v4, :cond_46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->s:J

    :cond_46
    :goto_46
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->b:I

    sget-object v1, Lcom/bytedance/sdk/openadsdk/b/j;->a:[I

    array-length v1, v1

    if-eq v0, v1, :cond_c1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_endcard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_split_screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_direct"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_75
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->b:I

    :goto_77
    sget-object v1, Lcom/bytedance/sdk/openadsdk/b/j;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_c1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->b:I

    aget v2, v1, v2

    if-ge p2, v2, :cond_83

    goto :goto_c1

    :cond_83
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->b:I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_8c
    const-string v5, "url"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/b/j;->c:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_a2

    const-string v7, "page_id"

    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_a2
    const-string v5, "render_type"

    const-string v6, "h5"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "render_type_2"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pct"

    aget v0, v1, v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ba} :catch_ba

    :catch_ba
    const-string v0, "progress_load_finish"

    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v2

    goto :goto_77

    :cond_c1
    :goto_c1
    if-ne p2, v4, :cond_d8

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->s:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->r:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string p2, "progress"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_d8
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->z:Lcom/bytedance/sdk/openadsdk/b/c/e;

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/c/f;->a(Lorg/json/JSONObject;)V

    :cond_8
    if-eqz p5, :cond_14

    const-string p1, "image"

    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-nez p1, :cond_1f

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    const/4 p5, 0x2

    if-eq p1, p5, :cond_1f

    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    :cond_1f
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->i:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->l:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->j:Z

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    if-eqz p1, :cond_26

    :try_start_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p2

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->G:I

    if-le p2, p3, :cond_17

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_17
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->G:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception p1

    const-string p2, "LandingPageLog"

    const-string p3, "copyBackForwardList exception"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->C:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_34

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->C:J

    :cond_34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->z:Lcom/bytedance/sdk/openadsdk/b/c/e;

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/b/c/f;->e()V

    :cond_3b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_6c

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_4a
    const-string p2, "render_type"

    const-string v0, "h5"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "render_type_2"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    if-ltz p2, :cond_67

    const-string p3, "preload_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    const-string p2, "load_start"

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_6c
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/b/j;->z:Lcom/bytedance/sdk/openadsdk/b/c/e;

    if-eqz v3, :cond_d

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/b/c/f;->f()V

    :cond_d
    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/b/j;->u:Z

    if-nez v4, :cond_1f

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/b/j;->y:Z

    if-eqz v4, :cond_1f

    iput-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/b/j;->u:Z

    const-string v4, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener(\'scroll\', function(e){\n    sendScroll();\n});"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/component/utils/k;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1f
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/b/j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v5, :cond_31

    iput v6, v0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/bytedance/sdk/openadsdk/b/j;->p:J

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    if-ne v1, v6, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/b/j;->j()I

    move-result v1

    const-string v5, "url"

    const-string v6, "h5"

    const-string v7, "preload_status"

    const-string v8, "first_page"

    const-string v9, "error_url"

    const-string v10, "error_msg"

    const-string v11, "error_code"

    const-string v12, "render_type_2"

    const-string v13, "render_type"

    if-eqz v3, :cond_c8

    iget-wide v14, v0, Lcom/bytedance/sdk/openadsdk/b/j;->s:J

    move-object v3, v5

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/b/j;->r:J

    sub-long/2addr v14, v4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_60
    iget v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->i:I

    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->k:Ljava/lang/String;

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->l:Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    if-ltz v5, :cond_76

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_76
    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v13, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/q;->P()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    nop

    :goto_8f
    const-string v3, "0"

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/j;->a(ZLjava/lang/String;)V

    const-wide/32 v2, 0x927c0

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-string v5, "load_finish"

    invoke-direct {v0, v5, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/b/j;->i()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/bytedance/sdk/openadsdk/b/j;->K:J

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/b/j;->f()V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/b/j;->M:Ljava/lang/String;

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/b/j;->K:J

    iget-wide v9, v0, Lcom/bytedance/sdk/openadsdk/b/j;->I:J

    sub-long/2addr v7, v9

    invoke-static {v4, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;J)V

    :cond_bb
    move-object/from16 v4, p2

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/b/j;->B:Lcom/bytedance/sdk/openadsdk/b/i;

    if-eqz v2, :cond_12f

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/b/i;->a(I)V

    goto :goto_12f

    :cond_c8
    move-object v3, v5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_ce
    iget v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->i:I

    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->k:Ljava/lang/String;

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->l:Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    if-ltz v1, :cond_e7

    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e7
    invoke-virtual {v4, v13, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_fb} :catch_fc

    goto :goto_fd

    :catch_fc
    nop

    :goto_fd
    const-string v1, "2"

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(ZLjava/lang/String;)V

    const-string v1, "load_fail"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/b/j;->i()Z

    move-result v1

    if-eqz v1, :cond_120

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/b/j;->M:Ljava/lang/String;

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/b/j;->I:J

    sub-long v7, v1, v7

    iget v9, v0, Lcom/bytedance/sdk/openadsdk/b/j;->i:I

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/b/j;->k:Ljava/lang/String;

    invoke-static/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;JILjava/lang/String;)V

    :cond_120
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/b/j;->j:Z

    if-eqz v1, :cond_12f

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "load_fail_main"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_12f
    :goto_12f
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .registers 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_endcard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_split_screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_direct"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->ab()I

    move-result v0

    if-nez v0, :cond_33

    return-void

    :cond_33
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_43

    return-void

    :cond_43
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_69

    :cond_52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Lcom/bytedance/sdk/component/widget/SSWebView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_69

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz v1, :cond_69

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->c:J

    const-string v3, "landing_page_blank"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    :cond_69
    :goto_69
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/b/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->z:Lcom/bytedance/sdk/openadsdk/b/c/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/b/c/e;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->z:Lcom/bytedance/sdk/openadsdk/b/c/e;

    return-object v0
.end method

.method public b(I)V
    .registers 8

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->C:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    goto :goto_3c

    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3c

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_21
    const-string v0, "url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_2c

    :catch_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->C:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v2, "click_time"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->M:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->A:Z

    return-void
.end method

.method public c(Z)V
    .registers 8

    const-string v0, "LandingPageLog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    if-eqz v1, :cond_17

    :try_start_b
    const-string v2, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v1

    const-string v2, "removeJavascriptInterface exception"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/j;->a(ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->y:Z

    if-eqz p1, :cond_90

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->t:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->H:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->j()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;JII)V

    goto :goto_90

    :cond_3f
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_90

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_90

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_51
    const-string v0, "load_status"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "max_scroll_percent"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "jump_times"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "click_times"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "render_type"

    const-string v1, "h5"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_type_2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_89} :catch_89

    :catch_89
    const-wide/16 v0, 0x0

    const-string v2, "stay_page"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_90
    :goto_90
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->x:Landroid/webkit/WebView;

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->A:Z

    return v0
.end method

.method public d()V
    .registers 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->I:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/j;->M:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public e()V
    .registers 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->J:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->f()V

    :cond_f
    return-void
.end method

.method public f()V
    .registers 6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->i()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->J:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2a

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->K:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->K:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->J:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/j;->n:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->M:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/c;->a(JLcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public g()V
    .registers 6

    const-string v0, "LandingPageLog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->t:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->t:J

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->p:J

    return-void
.end method

.method public h()V
    .registers 9

    const-string v0, "LandingPageLog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_endcard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_split_screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->o:Ljava/lang/String;

    const-string v1, "landingpage_direct"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    return-void

    :cond_30
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_a6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/j;->q:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_4b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_a6

    :cond_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/j;->p:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->q:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_5d
    const-string v5, "load_status"

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->d:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "max_scroll_percent"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "jump_times"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "click_times"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/b/j;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "render_type"

    const-string v6, "h5"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "render_type_2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_95} :catch_95

    :catch_95
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string v2, "stay_page"

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_a6
    :goto_a6
    return-void
.end method
