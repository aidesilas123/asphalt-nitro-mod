###### Class com.tapjoy.q (com.tapjoy.q)
.class public Lcom/tapjoy/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/q;->b:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tapjoy/q;->c:I

    iput-object v0, p0, Lcom/tapjoy/q;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tapjoy/q;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/q;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/q;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/q;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/q;->i:Ljava/util/ArrayList;

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/tapjoy/q;->a:Landroid/content/Context;

    if-nez v0, :cond_2d

    iput-object p1, p0, Lcom/tapjoy/q;->a:Landroid/content/Context;

    :cond_2d
    invoke-virtual {p0}, Lcom/tapjoy/q;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Lcom/tapjoy/q;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/tapjoy/v;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "server_currency_ids"

    invoke-virtual {v1, v0}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "[]"

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_1f
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_25
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_50

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "currency_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "currency_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "self_managed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tapjoy/q;->f:Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_46} :catch_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :catch_49
    const-string v0, "CurrencyParams"

    const-string v2, "Failed to parse currency id list"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    iput-object v1, p0, Lcom/tapjoy/q;->i:Ljava/util/ArrayList;

    :cond_58
    return-void
.end method
