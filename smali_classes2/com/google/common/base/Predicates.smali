###### Class com.google.common.base.Predicates (com.google.common.base.Predicates)
.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Predicates$d;,
        Lcom/google/common/base/Predicates$e;,
        Lcom/google/common/base/Predicates$c;,
        Lcom/google/common/base/Predicates$f;,
        Lcom/google/common/base/Predicates$k;,
        Lcom/google/common/base/Predicates$g;,
        Lcom/google/common/base/Predicates$h;,
        Lcom/google/common/base/Predicates$j;,
        Lcom/google/common/base/Predicates$b;,
        Lcom/google/common/base/Predicates$i;,
        Lcom/google/common/base/Predicates$ObjectPredicate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->e(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static alwaysFalse()Lcom/google/common/base/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->b:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->f()Lcom/google/common/base/k;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysTrue()Lcom/google/common/base/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->a:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->f()Lcom/google/common/base/k;

    move-result-object v0

    return-object v0
.end method

.method public static and(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/k<",
            "-TT;>;",
            "Lcom/google/common/base/k<",
            "-TT;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$b;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/k;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/k;

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->b(Lcom/google/common/base/k;Lcom/google/common/base/k;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Predicates$b;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/base/k<",
            "-TT;>;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$b;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$b;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static varargs and([Lcom/google/common/base/k;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/k<",
            "-TT;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$b;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$b;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method private static b(Lcom/google/common/base/k;Lcom/google/common/base/k;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/k<",
            "-TT;>;",
            "Lcom/google/common/base/k<",
            "-TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/common/base/k<",
            "-TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/k;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method public static compose(Lcom/google/common/base/k;Lcom/google/common/base/f;)Lcom/google/common/base/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/k<",
            "TB;>;",
            "Lcom/google/common/base/f<",
            "TA;+TB;>;)",
            "Lcom/google/common/base/k<",
            "TA;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Predicates$c;-><init>(Lcom/google/common/base/k;Lcom/google/common/base/f;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static contains(Ljava/util/regex/Pattern;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lcom/google/common/base/k<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$e;

    new-instance v1, Lcom/google/common/base/g;

    invoke-direct {v1, p0}, Lcom/google/common/base/g;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Predicates$e;-><init>(Lcom/google/common/base/CommonPattern;)V

    return-object v0
.end method

.method public static containsPattern(Ljava/lang/String;)Lcom/google/common/base/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/k<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$d;

    invoke-direct {v0, p0}, Lcom/google/common/base/Predicates$d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static varargs d([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Predicates;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_25

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    goto :goto_14

    :cond_2a
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static equalTo(Ljava/lang/Object;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Lcom/google/common/base/Predicates;->isNull()Lcom/google/common/base/k;

    move-result-object p0

    goto :goto_11

    :cond_7
    new-instance v0, Lcom/google/common/base/Predicates$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$h;-><init>(Ljava/lang/Object;Lcom/google/common/base/Predicates$a;)V

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$h;->c()Lcom/google/common/base/k;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public static in(Ljava/util/Collection;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$f;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$g;-><init>(Ljava/lang/Class;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static isNull()Lcom/google/common/base/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->c:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->f()Lcom/google/common/base/k;

    move-result-object v0

    return-object v0
.end method

.method public static not(Lcom/google/common/base/k;)Lcom/google/common/base/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/k<",
            "TT;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$i;

    invoke-direct {v0, p0}, Lcom/google/common/base/Predicates$i;-><init>(Lcom/google/common/base/k;)V

    return-object v0
.end method

.method public static notNull()Lcom/google/common/base/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->d:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->f()Lcom/google/common/base/k;

    move-result-object v0

    return-object v0
.end method

.method public static or(Lcom/google/common/base/k;Lcom/google/common/base/k;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/k<",
            "-TT;>;",
            "Lcom/google/common/base/k<",
            "-TT;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$j;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/k;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/k;

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->b(Lcom/google/common/base/k;Lcom/google/common/base/k;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Predicates$j;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/base/k<",
            "-TT;>;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$j;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$j;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static varargs or([Lcom/google/common/base/k;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/k<",
            "-TT;>;)",
            "Lcom/google/common/base/k<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$j;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$j;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method

.method public static subtypeOf(Ljava/lang/Class;)Lcom/google/common/base/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/base/k<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Predicates$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$k;-><init>(Ljava/lang/Class;Lcom/google/common/base/Predicates$a;)V

    return-object v0
.end method
