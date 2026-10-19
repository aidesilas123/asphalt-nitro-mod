###### Class com.moat.analytics.mobile.glft.v (com.moat.analytics.mobile.glft.v)
.class Lcom/moat/analytics/mobile/glft/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/v$b;,
        Lcom/moat/analytics/mobile/glft/v$c;,
        Lcom/moat/analytics/mobile/glft/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private final b:Lcom/moat/analytics/mobile/glft/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/v$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/moat/analytics/mobile/glft/v$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/glft/v$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/moat/analytics/mobile/glft/v<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/moat/analytics/mobile/glft/v<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/moat/analytics/mobile/glft/v;->a:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/glft/v$a<",
            "TT;>;",
            "Lcom/moat/analytics/mobile/glft/v$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/a/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/glft/a/a/a;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/v;->b:Lcom/moat/analytics/mobile/glft/v$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/v;->c:Lcom/moat/analytics/mobile/glft/v$c;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/v;->d:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/v;->e:Ljava/util/LinkedList;

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object p1

    new-instance p2, Lcom/moat/analytics/mobile/glft/v$1;

    invoke-direct {p2, p0}, Lcom/moat/analytics/mobile/glft/v$1;-><init>(Lcom/moat/analytics/mobile/glft/v;)V

    invoke-virtual {p1, p2}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u$b;)V

    return-void
.end method

.method static a(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/glft/v$a<",
            "TT;>;",
            "Lcom/moat/analytics/mobile/glft/v$c<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/moat/analytics/mobile/glft/v$c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/moat/analytics/mobile/glft/v;

    invoke-direct {v2, p0, p1}, Lcom/moat/analytics/mobile/glft/v;-><init>(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    invoke-static {v1, p0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/v;->c:Lcom/moat/analytics/mobile/glft/v$c;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/glft/v$c;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getClass"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v1

    :cond_23
    const-string v2, "toString"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_4e

    const-class p2, Lcom/moat/analytics/mobile/glft/v;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4e
    return-object p1

    :cond_4f
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/v;->f:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->g:Ljava/lang/Object;

    if-nez v0, :cond_5f

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/v;->d()V

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/v;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5f
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/u;->a()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v0

    sget-object v2, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne v0, v2, :cond_73

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/v;->c()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->g:Ljava/lang/Object;

    if-eqz v0, :cond_73

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_73
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/u;->a()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne v0, v1, :cond_86

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/v;->f:Z

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->g:Ljava/lang/Object;

    if-eqz v0, :cond_86

    :cond_83
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/glft/v;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_86
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/v;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/v;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/v;->c()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/v;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .registers 4

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/v;->f:Z

    if-nez v0, :cond_20

    :try_start_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->b:Lcom/moat/analytics/mobile/glft/v$a;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/glft/v$a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/glft/a/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->g:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception v0

    const-string v1, "OnOffTrackerProxy"

    const-string v2, "Could not create instance"

    invoke-static {v1, p0, v2, v0}, Lcom/moat/analytics/mobile/glft/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/v;->f:Z

    :cond_20
    return-void
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->d:Ljava/util/LinkedList;

    new-instance v2, Lcom/moat/analytics/mobile/glft/v$b;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/moat/analytics/mobile/glft/v$b;-><init>(Lcom/moat/analytics/mobile/glft/v;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/glft/v$1;)V

    :goto_11
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_15
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_24

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_24
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->e:Ljava/util/LinkedList;

    new-instance v2, Lcom/moat/analytics/mobile/glft/v$b;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/moat/analytics/mobile/glft/v$b;-><init>(Lcom/moat/analytics/mobile/glft/v;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/glft/v$1;)V

    goto :goto_11

    :goto_2c
    return-void
.end method

.method private c()V
    .registers 12

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/v;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->g:Ljava/lang/Object;

    if-nez v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/v;->d:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/v;->e:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/moat/analytics/mobile/glft/v$b;

    :try_start_37
    invoke-static {v3}, Lcom/moat/analytics/mobile/glft/v$b;->a(Lcom/moat/analytics/mobile/glft/v$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/moat/analytics/mobile/glft/v$b;->a(Lcom/moat/analytics/mobile/glft/v$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_45
    if-ge v7, v6, :cond_55

    aget-object v9, v5, v7

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_45

    :cond_55
    invoke-static {v3}, Lcom/moat/analytics/mobile/glft/v$b;->b(Lcom/moat/analytics/mobile/glft/v$b;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v5, p0, Lcom/moat/analytics/mobile/glft/v;->g:Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5e} :catch_5f

    goto :goto_2b

    :catch_5f
    move-exception v3

    invoke-static {v3}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    goto :goto_2b

    :cond_64
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_1b

    :cond_68
    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/moat/analytics/mobile/glft/v;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/moat/analytics/mobile/glft/v;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.moat.analytics.mobile.glft.v.AnonymousClass1 (com.moat.analytics.mobile.glft.v$1)
.class Lcom/moat/analytics/mobile/glft/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/v;-><init>(Lcom/moat/analytics/mobile/glft/v$a;Lcom/moat/analytics/mobile/glft/v$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/v;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/v;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/v$1;->a:Lcom/moat/analytics/mobile/glft/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/v$1;->a:Lcom/moat/analytics/mobile/glft/v;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/v;->a(Lcom/moat/analytics/mobile/glft/v;)V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

###### Class com.moat.analytics.mobile.glft.v.a (com.moat.analytics.mobile.glft.v$a)
.class interface abstract Lcom/moat/analytics/mobile/glft/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/moat/analytics/mobile/glft/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "TT;>;"
        }
    .end annotation
.end method

###### Class com.moat.analytics.mobile.glft.v.b (com.moat.analytics.mobile.glft.v$b)
.class Lcom/moat/analytics/mobile/glft/v$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/v;

.field private final b:[Ljava/lang/ref/WeakReference;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method private varargs constructor <init>(Lcom/moat/analytics/mobile/glft/v;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 10

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/v$b;->a:Lcom/moat/analytics/mobile/glft/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/v$b;->c:Ljava/util/LinkedList;

    if-nez p3, :cond_12

    invoke-static {}, Lcom/moat/analytics/mobile/glft/v;->a()[Ljava/lang/Object;

    move-result-object p3

    :cond_12
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/ref/WeakReference;

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_18
    if-ge v1, v0, :cond_3a

    aget-object v3, p3, v1

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_28

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_28

    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_2d

    :cond_28
    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/v$b;->c:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v4, v2, 0x1

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, p1, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_18

    :cond_3a
    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/v$b;->b:[Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/v$b;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/glft/v;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/glft/v$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/glft/v$b;-><init>(Lcom/moat/analytics/mobile/glft/v;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/v$b;)[Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/v$b;->b:[Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/glft/v$b;)Ljava/lang/reflect/Method;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/v$b;->d:Ljava/lang/reflect/Method;

    return-object p0
.end method

###### Class com.moat.analytics.mobile.glft.v.c (com.moat.analytics.mobile.glft.v$c)
.class interface abstract Lcom/moat/analytics/mobile/glft/v$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method
