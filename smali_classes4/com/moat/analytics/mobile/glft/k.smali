###### Class com.moat.analytics.mobile.glft.k (com.moat.analytics.mobile.glft.k)
.class Lcom/moat/analytics/mobile/glft/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/k;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/k;->b:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/k;->c:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/glft/k;->d:I

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    const-string v0, "in"

    if-nez p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sa"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "0bbafd1ca55aa33048dfa8f9ed6e5644a7625d79"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "8f1d08a2d6496191a5ebae8f0590f513e2619489"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "on"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    if-nez v2, :cond_28

    if-eqz v3, :cond_39

    :cond_28
    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/glft/k;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_39

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/k;->a:Z

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/glft/k;->b:Z

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/glft/k;->c:Z

    if-eqz v3, :cond_39

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/k;->b:Z

    :cond_39
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_57

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_57

    iput p1, p0, Lcom/moat/analytics/mobile/glft/k;->d:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4d} :catch_4e

    goto :goto_57

    :catch_4e
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/k;->a:Z

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/k;->b:Z

    const/16 p1, 0xc8

    iput p1, p0, Lcom/moat/analytics/mobile/glft/k;->d:I

    :cond_57
    :goto_57
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 8

    const-string v0, "ob"

    const/16 v1, 0x10

    const/4 v2, 0x1

    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_28

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_29

    if-ne v4, v5, :cond_25

    return v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_28
    return v3

    :catch_29
    return v2
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/k;->a:Z

    return v0
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/k;->b:Z

    return v0
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/k;->c:Z

    return v0
.end method

.method c()I
    .registers 2

    iget v0, p0, Lcom/moat/analytics/mobile/glft/k;->d:I

    return v0
.end method

.method d()Lcom/moat/analytics/mobile/glft/u$d;
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/k;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    :goto_b
    return-object v0
.end method
