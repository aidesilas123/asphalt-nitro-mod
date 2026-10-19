###### Class com.google.common.cache.CacheBuilderSpec (com.google.common.cache.CacheBuilderSpec)
.class public final Lcom/google/common/cache/CacheBuilderSpec;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilderSpec$l;,
        Lcom/google/common/cache/CacheBuilderSpec$o;,
        Lcom/google/common/cache/CacheBuilderSpec$b;,
        Lcom/google/common/cache/CacheBuilderSpec$d;,
        Lcom/google/common/cache/CacheBuilderSpec$k;,
        Lcom/google/common/cache/CacheBuilderSpec$n;,
        Lcom/google/common/cache/CacheBuilderSpec$g;,
        Lcom/google/common/cache/CacheBuilderSpec$c;,
        Lcom/google/common/cache/CacheBuilderSpec$j;,
        Lcom/google/common/cache/CacheBuilderSpec$i;,
        Lcom/google/common/cache/CacheBuilderSpec$e;,
        Lcom/google/common/cache/CacheBuilderSpec$h;,
        Lcom/google/common/cache/CacheBuilderSpec$f;,
        Lcom/google/common/cache/CacheBuilderSpec$m;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/Splitter;

.field private static final b:Lcom/google/common/base/Splitter;

.field private static final c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/common/cache/CacheBuilderSpec$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Ljava/lang/Integer;

.field e:Ljava/lang/Long;

.field f:Ljava/lang/Long;

.field g:Ljava/lang/Integer;

.field h:Lcom/google/common/cache/LocalCache$Strength;

.field i:Lcom/google/common/cache/LocalCache$Strength;

.field j:Ljava/lang/Boolean;

.field k:J

.field l:Ljava/util/concurrent/TimeUnit;

.field m:J

.field n:Ljava/util/concurrent/TimeUnit;

.field o:J

.field p:Ljava/util/concurrent/TimeUnit;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->k()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->a:Lcom/google/common/base/Splitter;

    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->k()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->b:Lcom/google/common/base/Splitter;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$e;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$e;-><init>()V

    const-string v2, "initialCapacity"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$i;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$i;-><init>()V

    const-string v2, "maximumSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$j;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$j;-><init>()V

    const-string v2, "maximumWeight"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$c;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$c;-><init>()V

    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$g;

    sget-object v2, Lcom/google/common/cache/LocalCache$Strength;->c:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$g;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    const-string v3, "weakKeys"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$n;

    sget-object v3, Lcom/google/common/cache/LocalCache$Strength;->b:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v3}, Lcom/google/common/cache/CacheBuilderSpec$n;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    const-string v3, "softValues"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$n;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$n;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    const-string v2, "weakValues"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$k;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$k;-><init>()V

    const-string v2, "recordStats"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$b;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$b;-><init>()V

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$o;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$o;-><init>()V

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$l;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$l;-><init>()V

    const-string v2, "refreshAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$l;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$l;-><init>()V

    const-string v2, "refreshInterval"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->c:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/cache/CacheBuilderSpec;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static disableCaching()Lcom/google/common/cache/CacheBuilderSpec;
    .registers 1

    const-string v0, "maximumSize=0"

    invoke-static {v0}, Lcom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;
    .registers 8

    new-instance v0, Lcom/google/common/cache/CacheBuilderSpec;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheBuilderSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6e

    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {v1, p0}, Lcom/google/common/base/Splitter;->h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/common/cache/CacheBuilderSpec;->b:Lcom/google/common/base/Splitter;

    invoke-virtual {v2, v1}, Lcom/google/common/base/Splitter;->h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "blank key-value pair"

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v3, v5, :cond_40

    const/4 v3, 0x1

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    :goto_41
    const-string v5, "key-value pair %s with more than one equals sign"

    invoke-static {v3, v5, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/google/common/cache/CacheBuilderSpec;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/CacheBuilderSpec$m;

    if-eqz v3, :cond_57

    const/4 v6, 0x1

    :cond_57
    const-string v5, "unknown key %s"

    invoke-static {v6, v5, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_64

    const/4 v2, 0x0

    goto :goto_6a

    :cond_64
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_6a
    invoke-interface {v3, v0, v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$m;->a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_6e
    return-object v0
.end method


# virtual methods
.method d()Lcom/google/common/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->d(I)Lcom/google/common/cache/CacheBuilder;

    :cond_f
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->e:Ljava/lang/Long;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder;->f(J)Lcom/google/common/cache/CacheBuilder;

    :cond_1a
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->f:Ljava/lang/Long;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder;->g(J)Lcom/google/common/cache/CacheBuilder;

    :cond_25
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(I)Lcom/google/common/cache/CacheBuilder;

    :cond_30
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->h:Lcom/google/common/cache/LocalCache$Strength;

    const/4 v2, 0x1

    if-eqz v1, :cond_49

    sget-object v3, Lcom/google/common/cache/CacheBuilderSpec$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-ne v1, v2, :cond_43

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->m()Lcom/google/common/cache/CacheBuilder;

    goto :goto_49

    :cond_43
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->i:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_67

    sget-object v3, Lcom/google/common/cache/CacheBuilderSpec$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->l()Lcom/google/common/cache/CacheBuilder;

    goto :goto_67

    :cond_5e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_64
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/cache/CacheBuilder;

    :cond_67
    :goto_67
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->h()Lcom/google/common/cache/CacheBuilder;

    :cond_74
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_7d

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->k:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->c(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->n:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_86

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->m:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    :cond_86
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->p:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_8f

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->o:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->i(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    :cond_8f
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/CacheBuilderSpec;->q:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/common/cache/CacheBuilderSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/common/cache/CacheBuilderSpec;

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->e:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->f:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->f:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->h:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->h:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->i:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->i:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->j:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->j:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->k:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:J

    iget-object v5, p1, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->m:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->n:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->m:J

    iget-object v5, p1, Lcom/google/common/cache/CacheBuilderSpec;->n:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->o:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->p:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->o:J

    iget-object p1, p1, Lcom/google/common/cache/CacheBuilderSpec;->p:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, p1}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    goto :goto_96

    :cond_95
    const/4 v0, 0x0

    :goto_96
    return v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->e:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->f:Ljava/lang/Long;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->h:Lcom/google/common/cache/LocalCache$Strength;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->i:Lcom/google/common/cache/LocalCache$Strength;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->j:Ljava/lang/Boolean;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->k:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->m:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->n:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->o:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->p:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lcom/google/common/cache/CacheBuilderSpec;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$b;->j(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.cache.CacheBuilderSpec.a (com.google.common.cache.CacheBuilderSpec$a)
.class synthetic Lcom/google/common/cache/CacheBuilderSpec$a;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/common/cache/LocalCache$Strength;->values()[Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->c:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/common/cache/CacheBuilderSpec$a;->a:[I

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->b:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.b (com.google.common.cache.CacheBuilderSpec$b)
.class Lcom/google/common/cache/CacheBuilderSpec$b;
.super Lcom/google/common/cache/CacheBuilderSpec$d;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->n:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "expireAfterAccess already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->m:J

    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->n:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.c (com.google.common.cache.CacheBuilderSpec$c)
.class Lcom/google/common/cache/CacheBuilderSpec$c;
.super Lcom/google/common/cache/CacheBuilderSpec$f;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$f;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .registers 6

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "concurrency level was already set to "

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.d (com.google.common.cache.CacheBuilderSpec$d)
.class abstract Lcom/google/common/cache/CacheBuilderSpec$d;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_3d

    const/16 v4, 0x68

    if-eq v3, v4, :cond_3a

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_37

    const/16 v4, 0x73

    if-ne v3, v4, :cond_25

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_3f

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v3, "key %s invalid unit: was %s, must end with one of [dhms]"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    invoke-static {v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_3f

    :cond_3a
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_3f

    :cond_3d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    :goto_3f
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec$d;->b(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_4f} :catch_50

    return-void

    :catch_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    const-string p2, "key %s value set to %s, must be integer"

    invoke-static {p2, v0}, Lcom/google/common/cache/CacheBuilderSpec;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "value of key "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " omitted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method

###### Class com.google.common.cache.CacheBuilderSpec.e (com.google.common.cache.CacheBuilderSpec$e)
.class Lcom/google/common/cache/CacheBuilderSpec$e;
.super Lcom/google/common/cache/CacheBuilderSpec$f;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$f;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .registers 6

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "initial capacity was already set to "

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.f (com.google.common.cache.CacheBuilderSpec$f)
.class abstract Lcom/google/common/cache/CacheBuilderSpec$f;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    :try_start_6
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/CacheBuilderSpec$f;->b(Lcom/google/common/cache/CacheBuilderSpec;I)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const-string p2, "key %s value set to %s, must be integer"

    invoke-static {p2, v1}, Lcom/google/common/cache/CacheBuilderSpec;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "value of key "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " omitted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b(Lcom/google/common/cache/CacheBuilderSpec;I)V
.end method

###### Class com.google.common.cache.CacheBuilderSpec.g (com.google.common.cache.CacheBuilderSpec$g)
.class Lcom/google/common/cache/CacheBuilderSpec$g;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private final a:Lcom/google/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Strength;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec$g;->a:Lcom/google/common/cache/LocalCache$Strength;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x0

    :goto_7
    const-string v2, "key %s does not take values"

    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->h:Lcom/google/common/cache/LocalCache$Strength;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "%s was already set to %s"

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/common/cache/CacheBuilderSpec$g;->a:Lcom/google/common/cache/LocalCache$Strength;

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->h:Lcom/google/common/cache/LocalCache$Strength;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.h (com.google.common.cache.CacheBuilderSpec$h)
.class abstract Lcom/google/common/cache/CacheBuilderSpec$h;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    :try_start_6
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/CacheBuilderSpec$h;->b(Lcom/google/common/cache/CacheBuilderSpec;J)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const-string p2, "key %s value set to %s, must be integer"

    invoke-static {p2, v1}, Lcom/google/common/cache/CacheBuilderSpec;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "value of key "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " omitted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b(Lcom/google/common/cache/CacheBuilderSpec;J)V
.end method

###### Class com.google.common.cache.CacheBuilderSpec.i (com.google.common.cache.CacheBuilderSpec$i)
.class Lcom/google/common/cache/CacheBuilderSpec$i;
.super Lcom/google/common/cache/CacheBuilderSpec$h;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$h;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;J)V
    .registers 9

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    const-string v4, "maximum size was already set to "

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->f:Ljava/lang/Long;

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const-string v2, "maximum weight was already set to "

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Ljava/lang/Long;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.j (com.google.common.cache.CacheBuilderSpec$j)
.class Lcom/google/common/cache/CacheBuilderSpec$j;
.super Lcom/google/common/cache/CacheBuilderSpec$h;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$h;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;J)V
    .registers 9

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->f:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    const-string v4, "maximum weight was already set to "

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Ljava/lang/Long;

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const-string v2, "maximum size was already set to "

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->f:Ljava/lang/Long;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.k (com.google.common.cache.CacheBuilderSpec$k)
.class Lcom/google/common/cache/CacheBuilderSpec$k;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x0

    :goto_7
    const-string v1, "recordStats does not take values"

    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->j:Ljava/lang/Boolean;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    const-string p3, "recordStats already set"

    invoke-static {p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->j:Ljava/lang/Boolean;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.l (com.google.common.cache.CacheBuilderSpec$l)
.class Lcom/google/common/cache/CacheBuilderSpec$l;
.super Lcom/google/common/cache/CacheBuilderSpec$d;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->p:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "refreshAfterWrite already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->o:J

    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->p:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.m (com.google.common.cache.CacheBuilderSpec$m)
.class interface abstract Lcom/google/common/cache/CacheBuilderSpec$m;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "m"
.end annotation


# virtual methods
.method public abstract a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
.end method

###### Class com.google.common.cache.CacheBuilderSpec.n (com.google.common.cache.CacheBuilderSpec$n)
.class Lcom/google/common/cache/CacheBuilderSpec$n;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# instance fields
.field private final a:Lcom/google/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Strength;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec$n;->a:Lcom/google/common/cache/LocalCache$Strength;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x0

    :goto_7
    const-string v2, "key %s does not take values"

    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->i:Lcom/google/common/cache/LocalCache$Strength;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "%s was already set to %s"

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/common/cache/CacheBuilderSpec$n;->a:Lcom/google/common/cache/LocalCache$Strength;

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->i:Lcom/google/common/cache/LocalCache$Strength;

    return-void
.end method

###### Class com.google.common.cache.CacheBuilderSpec.o (com.google.common.cache.CacheBuilderSpec$o)
.class Lcom/google/common/cache/CacheBuilderSpec$o;
.super Lcom/google/common/cache/CacheBuilderSpec$d;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "expireAfterWrite already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:J

    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->l:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
