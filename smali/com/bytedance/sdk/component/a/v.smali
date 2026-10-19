###### Class com.bytedance.sdk.component.a.v (com.bytedance.sdk.component.a.v)
.class Lcom/bytedance/sdk/component/a/v;
.super Ljava/lang/Object;
.source "PermissionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/a/v$b;,
        Lcom/bytedance/sdk/component/a/v$a;,
        Lcom/bytedance/sdk/component/a/v$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/a/v$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/a/v$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/component/a/k$a;

.field private final d:Ljava/lang/String;

.field private volatile e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/component/a/k$a;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V
    .registers 7
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/v;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/a/v;->e:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/v;->d:Ljava/lang/String;

    if-gtz p2, :cond_1b

    new-instance p2, Landroid/util/LruCache;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/v;->b:Landroid/util/LruCache;

    goto :goto_22

    :cond_1b
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/v;->b:Landroid/util/LruCache;

    :goto_22
    iput-object p3, p0, Lcom/bytedance/sdk/component/a/v;->c:Lcom/bytedance/sdk/component/a/k$a;

    if-nez p5, :cond_33

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/component/a/v$1;

    invoke-direct {p2, p0, p4}, Lcom/bytedance/sdk/component/a/v$1;-><init>(Lcom/bytedance/sdk/component/a/v;Ljava/util/concurrent/Executor;)V

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/component/a/k$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/k$a$a;)V

    goto :goto_36

    :cond_33
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/component/a/v;->a(Lorg/json/JSONObject;)V

    :goto_36
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/v$c;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/a/v$a;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/a/v$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/a/v$c;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    if-nez v3, :cond_24

    goto :goto_6a

    :cond_24
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/a/v;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2b

    return-object v0

    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/a/v$b;

    iget-object v3, v2, Lcom/bytedance/sdk/component/a/v$b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v2, Lcom/bytedance/sdk/component/a/v$b;->b:Lcom/bytedance/sdk/component/a/x;

    iget-object v4, v0, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_55

    iget-object v3, v2, Lcom/bytedance/sdk/component/a/v$b;->b:Lcom/bytedance/sdk/component/a/x;

    iput-object v3, v0, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    :cond_55
    iget-object v3, v0, Lcom/bytedance/sdk/component/a/v$c;->b:Ljava/util/Set;

    iget-object v4, v2, Lcom/bytedance/sdk/component/a/v$b;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/bytedance/sdk/component/a/v$c;->c:Ljava/util/Set;

    iget-object v2, v2, Lcom/bytedance/sdk/component/a/v$b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2f

    :cond_64
    iget-object v1, p0, Lcom/bytedance/sdk/component/a/v;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_6a
    :goto_6a
    sget-object p1, Lcom/bytedance/sdk/component/a/x;->a:Lcom/bytedance/sdk/component/a/x;

    iput-object p1, v0, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "[.]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_f

    return-object v0

    :cond_f
    if-ne v2, v3, :cond_12

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v2, -0x2

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 8
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/v;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_5
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v5, p0, Lcom/bytedance/sdk/component/a/v;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_f

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/component/a/v;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/a/v$b;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3e

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse configurations failed, response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/a/v;->e:Z

    return-void
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/a/v$b;
    .registers 7
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/a/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/a/v$b;-><init>(Lcom/bytedance/sdk/component/a/v$1;)V

    const-string v1, "pattern"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/component/a/v$b;->a:Ljava/util/regex/Pattern;

    const-string v1, "group"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/a/x;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/x;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/component/a/v$b;->b:Lcom/bytedance/sdk/component/a/x;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/component/a/v$b;->c:Ljava/util/List;

    const-string v1, "included_methods"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    const/4 v3, 0x0

    :goto_2f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_41

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/sdk/component/a/v$b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/component/a/v$b;->d:Ljava/util/List;

    const-string v1, "excluded_methods"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_62

    :goto_50
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_62

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/bytedance/sdk/component/a/v$b;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_62
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/a/v$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/a/v$a;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/v;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/v;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_d
    new-instance p1, Lcom/bytedance/sdk/component/a/v$a;

    const-string v0, "Permission config is outdated!"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/a/v$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.bytedance.ies.web.jsbridge2.PermissionConfig."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/a/v$c;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/a/v$c;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/component/a/v$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/a/v$c;-><init>()V

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_75

    :cond_33
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_60
    sget-object p1, Lcom/bytedance/sdk/component/a/x;->c:Lcom/bytedance/sdk/component/a/x;

    iput-object p1, v0, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    return-object v0

    :cond_65
    iget-object p2, p0, Lcom/bytedance/sdk/component/a/v;->b:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/a/v$c;

    if-eqz p2, :cond_70

    return-object p2

    :cond_70
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/a/v;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/v$c;

    move-result-object p1

    return-object p1

    :cond_75
    :goto_75
    sget-object p1, Lcom/bytedance/sdk/component/a/x;->a:Lcom/bytedance/sdk/component/a/x;

    iput-object p1, v0, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/a/v;->b(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/v;->c:Lcom/bytedance/sdk/component/a/k$a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/v;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/component/a/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/a/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.a.v.AnonymousClass1 (com.bytedance.sdk.component.a.v$1)
.class Lcom/bytedance/sdk/component/a/v$1;
.super Ljava/lang/Object;
.source "PermissionConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/component/a/k$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/a/v;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/component/a/k$a;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lcom/bytedance/sdk/component/a/v;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/a/v;Ljava/util/concurrent/Executor;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/v$1;->b:Lcom/bytedance/sdk/component/a/v;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/v$1;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.bytedance.sdk.component.a.v.a (com.bytedance.sdk.component.a.v$a)
.class Lcom/bytedance/sdk/component/a/v$a;
.super Ljava/lang/IllegalStateException;
.source "PermissionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.a.v.b (com.bytedance.sdk.component.a.v$b)
.class final Lcom/bytedance/sdk/component/a/v$b;
.super Ljava/lang/Object;
.source "PermissionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/regex/Pattern;

.field b:Lcom/bytedance/sdk/component/a/x;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/a/v$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/a/v$b;-><init>()V

    return-void
.end method

###### Class com.bytedance.sdk.component.a.v.c (com.bytedance.sdk.component.a.v$c)
.class final Lcom/bytedance/sdk/component/a/v$c;
.super Ljava/lang/Object;
.source "PermissionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/component/a/x;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/component/a/x;->a:Lcom/bytedance/sdk/component/a/x;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/v$c;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/v$c;->c:Ljava/util/Set;

    return-void
.end method
