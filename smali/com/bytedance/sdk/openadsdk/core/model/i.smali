###### Class com.bytedance.sdk.openadsdk.core.model.i (com.bytedance.sdk.openadsdk.core.model.i)
.class public Lcom/bytedance/sdk/openadsdk/core/model/i;
.super Ljava/lang/Object;
.source "ClickEventModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:J

.field private final j:J

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final p:I

.field private final q:Lorg/json/JSONObject;

.field private final r:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/i$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->a(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->a:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->b(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->b:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->c(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->d:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->d(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->c:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->e(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->e:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->f(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->f:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->g(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->g:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->h(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->h:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->i(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->i:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->j(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->j:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->k(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->k:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->l(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->l:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->m(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->m:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->n(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->n:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->o(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->o:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->p(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->q(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->p:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->r(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->q:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/i$a;Lcom/bytedance/sdk/openadsdk/core/model/i$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/i;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)V

    return-void
.end method

.method public static a(Landroid/util/SparseArray;I)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_64

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/b/c$a;

    if-eqz v3, :cond_61

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "force"

    iget-wide v6, v3, Lcom/bytedance/sdk/openadsdk/core/b/c$a;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "mr"

    iget-wide v7, v3, Lcom/bytedance/sdk/openadsdk/core/b/c$a;->b:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "phase"

    iget v7, v3, Lcom/bytedance/sdk/openadsdk/core/b/c$a;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ts"

    iget-wide v7, v3, Lcom/bytedance/sdk/openadsdk/core/b/c$a;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "ftc"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_61} :catch_65

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_64
    return-object v0

    :catch_65
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->a:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_28

    array-length v5, v1

    if-ne v5, v4, :cond_28

    const-string v5, "ad_x"

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "ad_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->a:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->b:[I

    if-eqz v1, :cond_48

    array-length v5, v1

    if-ne v5, v4, :cond_48

    const-string v5, "width"

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "height"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->b:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->c:[I

    if-eqz v1, :cond_68

    array-length v5, v1

    if-ne v5, v4, :cond_68

    const-string v5, "button_x"

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "button_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->c:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->d:[I

    if-eqz v1, :cond_88

    array-length v5, v1

    if-ne v5, v4, :cond_88

    const-string v4, "button_width"

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "button_height"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->d:[I

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_88
    const-string v1, "down_x"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->e:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->f:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_x"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->g:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->h:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->j:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "toolType"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "source"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ft"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->o:Landroid/util/SparseArray;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->n:I

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/i;->a(Landroid/util/SparseArray;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "click_area_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->p:I

    if-lez v1, :cond_116

    const-string v2, "areaType"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_116
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i;->q:Lorg/json/JSONObject;

    if-eqz v1, :cond_11f

    const-string v2, "rectInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11f} :catch_11f

    :catch_11f
    :cond_11f
    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.core.model.i.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.model.i$1)
.class synthetic Lcom/bytedance/sdk/openadsdk/core/model/i$1;
.super Ljava/lang/Object;
.source "ClickEventModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bytedance.sdk.openadsdk.core.model.i.a (com.bytedance.sdk.openadsdk.core.model.i$a)
.class public Lcom/bytedance/sdk/openadsdk/core/model/i$a;
.super Ljava/lang/Object;
.source "ClickEventModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:I

.field c:F

.field private d:J

.field private e:J

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:[I

.field private k:[I

.field private l:[I

.field private m:[I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->k:[I

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->l:[I

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->m:[I

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)[I
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->j:[I

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->i:F

    return p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->h:F

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->g:F

    return p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->f:F

    return p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->e:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->d:J

    return-wide v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->n:I

    return p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->o:I

    return p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->p:I

    return p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->r:I

    return p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->q:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->t:I

    return p0
.end method

.method static synthetic r(Lcom/bytedance/sdk/openadsdk/core/model/i$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->u:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->a:F

    return-object p0
.end method

.method public a(I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->t:I

    return-object p0
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->d:J

    return-object p0
.end method

.method public a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/model/i$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->q:Landroid/util/SparseArray;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->u:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a([I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->j:[I

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/model/i;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/i;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/i$a;Lcom/bytedance/sdk/openadsdk/core/model/i$1;)V

    return-object v0
.end method

.method public b(F)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->c:F

    return-object p0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->r:I

    return-object p0
.end method

.method public b(J)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->e:J

    return-object p0
.end method

.method public b([I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->k:[I

    return-object p0
.end method

.method public c(F)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->f:F

    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->b:I

    return-object p0
.end method

.method public c([I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->l:[I

    return-object p0
.end method

.method public d(F)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->g:F

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->n:I

    return-object p0
.end method

.method public d([I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->m:[I

    return-object p0
.end method

.method public e(F)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->h:F

    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->o:I

    return-object p0
.end method

.method public f(F)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->i:F

    return-object p0
.end method

.method public f(I)Lcom/bytedance/sdk/openadsdk/core/model/i$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/i$a;->p:I

    return-object p0
.end method
