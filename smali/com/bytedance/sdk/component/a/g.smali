###### Class com.bytedance.sdk.component.a.g (com.bytedance.sdk.component.a.g)
.class Lcom/bytedance/sdk/component/a/g;
.super Ljava/lang/Object;
.source "CallHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/component/a/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/a/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/component/a/h;

.field private final b:Lcom/bytedance/sdk/component/a/u;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/component/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/bytedance/sdk/component/a/m;

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/bytedance/sdk/component/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/a/j;Lcom/bytedance/sdk/component/a/a;Lcom/bytedance/sdk/component/a/v;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/g;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/g;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/g;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/g;->f:Ljava/util/Set;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/g;->j:Lcom/bytedance/sdk/component/a/a;

    iget-object p2, p1, Lcom/bytedance/sdk/component/a/j;->d:Lcom/bytedance/sdk/component/a/h;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/g;->a:Lcom/bytedance/sdk/component/a/h;

    new-instance p2, Lcom/bytedance/sdk/component/a/u;

    iget-object v0, p1, Lcom/bytedance/sdk/component/a/j;->l:Ljava/util/Set;

    iget-object v1, p1, Lcom/bytedance/sdk/component/a/j;->m:Ljava/util/Set;

    invoke-direct {p2, p3, v0, v1}, Lcom/bytedance/sdk/component/a/u;-><init>(Lcom/bytedance/sdk/component/a/v;Ljava/util/Set;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/g;->b:Lcom/bytedance/sdk/component/a/u;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/a/u;->a(Lcom/bytedance/sdk/component/a/w$a;)V

    iget-object p3, p1, Lcom/bytedance/sdk/component/a/j;->p:Lcom/bytedance/sdk/component/a/k$b;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/a/u;->a(Lcom/bytedance/sdk/component/a/k$b;)V

    iget-object p2, p1, Lcom/bytedance/sdk/component/a/j;->i:Lcom/bytedance/sdk/component/a/m;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/g;->g:Lcom/bytedance/sdk/component/a/m;

    iget-boolean p2, p1, Lcom/bytedance/sdk/component/a/j;->h:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/a/g;->h:Z

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/a/j;->o:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/a/g;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/a/g;)Lcom/bytedance/sdk/component/a/a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/g;->j:Lcom/bytedance/sdk/component/a/a;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/c;Lcom/bytedance/sdk/component/a/x;)Lcom/bytedance/sdk/component/a/g$a;
    .registers 7
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/a/t;

    iget-object v1, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/component/a/g$2;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/component/a/g$2;-><init>(Lcom/bytedance/sdk/component/a/g;Lcom/bytedance/sdk/component/a/q;)V

    invoke-direct {v0, v1, p3, v2}, Lcom/bytedance/sdk/component/a/t;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/a/x;Lcom/bytedance/sdk/component/a/t$a;)V

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/a/c;->a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/t;)V

    new-instance p1, Lcom/bytedance/sdk/component/a/g$a;

    invoke-static {}, Lcom/bytedance/sdk/component/a/y;->a()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/bytedance/sdk/component/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/a/g$1;)V

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/d;Lcom/bytedance/sdk/component/a/f;)Lcom/bytedance/sdk/component/a/g$a;
    .registers 6
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/bytedance/sdk/component/a/q;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/component/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/a/g$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/component/a/g$1;-><init>(Lcom/bytedance/sdk/component/a/g;Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/d;)V

    invoke-virtual {p2, v0, p3, v1}, Lcom/bytedance/sdk/component/a/d;->a(Ljava/lang/Object;Lcom/bytedance/sdk/component/a/f;Lcom/bytedance/sdk/component/a/d$a;)V

    new-instance p1, Lcom/bytedance/sdk/component/a/g$a;

    invoke-static {}, Lcom/bytedance/sdk/component/a/y;->a()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/bytedance/sdk/component/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/a/g$1;)V

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/e;Lcom/bytedance/sdk/component/a/f;)Lcom/bytedance/sdk/component/a/g$a;
    .registers 5
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p1, Lcom/bytedance/sdk/component/a/q;->e:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/a/e;->a(Ljava/lang/Object;Lcom/bytedance/sdk/component/a/f;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/component/a/g$a;

    iget-object p3, p0, Lcom/bytedance/sdk/component/a/g;->a:Lcom/bytedance/sdk/component/a/h;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/a/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Lcom/bytedance/sdk/component/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/a/g$1;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->a:Lcom/bytedance/sdk/component/a/h;

    invoke-static {p2}, Lcom/bytedance/sdk/component/a/g;->a(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/a/h;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Object;)[Ljava/lang/reflect/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_11

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method is not parameterized?!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;
    .registers 5

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/g;->i:Z

    if-eqz v0, :cond_7

    sget-object p1, Lcom/bytedance/sdk/component/a/x;->c:Lcom/bytedance/sdk/component/a/x;

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->b:Lcom/bytedance/sdk/component/a/u;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/a/g;->h:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/a/u;->a(ZLjava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/a/g;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/g;->f:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/f;)Lcom/bytedance/sdk/component/a/g$a;
    .registers 9
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/a/b;

    const/4 v1, -0x1

    const-string v2, "Permission denied, call: "

    const/4 v3, 0x0

    if-eqz v0, :cond_7c

    :try_start_10
    iget-object v4, p2, Lcom/bytedance/sdk/component/a/f;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/component/a/g;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;

    move-result-object v4

    iput-object v4, p2, Lcom/bytedance/sdk/component/a/f;->d:Lcom/bytedance/sdk/component/a/x;

    if-nez v4, :cond_3e

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->g:Lcom/bytedance/sdk/component/a/m;

    if-eqz v0, :cond_26

    iget-object p2, p2, Lcom/bytedance/sdk/component/a/f;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v0, p2, v4, v5}, Lcom/bytedance/sdk/component/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    new-instance p2, Lcom/bytedance/sdk/component/a/s;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/component/a/s;-><init>(I)V

    throw p2

    :cond_3e
    instance-of v5, v0, Lcom/bytedance/sdk/component/a/e;

    if-eqz v5, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing stateless call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    check-cast v0, Lcom/bytedance/sdk/component/a/e;

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/e;Lcom/bytedance/sdk/component/a/f;)Lcom/bytedance/sdk/component/a/g$a;

    move-result-object p1

    return-object p1

    :cond_5d
    instance-of v5, v0, Lcom/bytedance/sdk/component/a/c;

    if-eqz v5, :cond_7c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing raw call: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    check-cast v0, Lcom/bytedance/sdk/component/a/c;

    invoke-direct {p0, p1, v0, v4}, Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/c;Lcom/bytedance/sdk/component/a/x;)Lcom/bytedance/sdk/component/a/g$a;

    move-result-object p1

    return-object p1

    :cond_7c
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->d:Ljava/util/Map;

    iget-object v4, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/a/d$b;

    if-eqz v0, :cond_cf

    invoke-interface {v0}, Lcom/bytedance/sdk/component/a/d$b;->a()Lcom/bytedance/sdk/component/a/d;

    move-result-object v0

    iget-object v4, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/a/b;->a(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/bytedance/sdk/component/a/f;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/component/a/g;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;

    move-result-object v4

    iput-object v4, p2, Lcom/bytedance/sdk/component/a/f;->d:Lcom/bytedance/sdk/component/a/x;

    if-eqz v4, :cond_b4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing stateful call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/d;Lcom/bytedance/sdk/component/a/f;)Lcom/bytedance/sdk/component/a/g$a;

    move-result-object p1

    return-object p1

    :cond_b4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/a/d;->e()V

    new-instance p2, Lcom/bytedance/sdk/component/a/s;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/component/a/s;-><init>(I)V

    throw p2
    :try_end_cf
    .catch Lcom/bytedance/sdk/component/a/v$a; {:try_start_10 .. :try_end_cf} :catch_f5

    :cond_cf
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->g:Lcom/bytedance/sdk/component/a/m;

    if-eqz v0, :cond_db

    iget-object p2, p2, Lcom/bytedance/sdk/component/a/f;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, p2, v1, v2}, Lcom/bytedance/sdk/component/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_db
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received call: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but not registered."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/i;->b(Ljava/lang/String;)V

    return-object v3

    :catch_f5
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No remote permission config fetched, call pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/a/g;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/bytedance/sdk/component/a/g$a;

    const/4 p2, 0x0

    invoke-static {}, Lcom/bytedance/sdk/component/a/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, v3}, Lcom/bytedance/sdk/component/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/a/g$1;)V

    return-object p1
.end method

.method a()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/a/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/a/d;->f()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->b:Lcom/bytedance/sdk/component/a/u;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/a/u;->b(Lcom/bytedance/sdk/component/a/w$a;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/d$b;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JsBridge stateful method registered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/a/e<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JsBridge stateless method registered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.a.g.AnonymousClass1 (com.bytedance.sdk.component.a.g$1)
.class Lcom/bytedance/sdk/component/a/g$1;
.super Ljava/lang/Object;
.source "CallHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/component/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/d;Lcom/bytedance/sdk/component/a/f;)Lcom/bytedance/sdk/component/a/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/a/q;

.field final synthetic b:Lcom/bytedance/sdk/component/a/d;

.field final synthetic c:Lcom/bytedance/sdk/component/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/a/g;Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/d;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/g$1;->c:Lcom/bytedance/sdk/component/a/g;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/g$1;->a:Lcom/bytedance/sdk/component/a/q;

    iput-object p3, p0, Lcom/bytedance/sdk/component/a/g$1;->b:Lcom/bytedance/sdk/component/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g$1;->c:Lcom/bytedance/sdk/component/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/g;)Lcom/bytedance/sdk/component/a/a;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g$1;->c:Lcom/bytedance/sdk/component/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/g;)Lcom/bytedance/sdk/component/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/y;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/g$1;->a:Lcom/bytedance/sdk/component/a/q;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/a/g$1;->c:Lcom/bytedance/sdk/component/a/g;

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/g;->b(Lcom/bytedance/sdk/component/a/g;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/g$1;->b:Lcom/bytedance/sdk/component/a/d;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.bytedance.sdk.component.a.g.AnonymousClass2 (com.bytedance.sdk.component.a.g$2)
.class Lcom/bytedance/sdk/component/a/g$2;
.super Ljava/lang/Object;
.source "CallHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/component/a/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/c;Lcom/bytedance/sdk/component/a/x;)Lcom/bytedance/sdk/component/a/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/a/q;

.field final synthetic b:Lcom/bytedance/sdk/component/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/a/g;Lcom/bytedance/sdk/component/a/q;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/g$2;->b:Lcom/bytedance/sdk/component/a/g;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/g$2;->a:Lcom/bytedance/sdk/component/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.bytedance.sdk.component.a.g.a (com.bytedance.sdk.component.a.g$a)
.class final Lcom/bytedance/sdk/component/a/g$a;
.super Ljava/lang/Object;
.source "CallHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/a/g$a;->a:Z

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/g$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/a/g$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/a/g$a;-><init>(ZLjava/lang/String;)V

    return-void
.end method
