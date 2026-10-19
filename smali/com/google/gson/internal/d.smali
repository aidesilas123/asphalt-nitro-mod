###### Class com.google.gson.internal.d (com.google.gson.internal.d)
.class public final Lcom/google/gson/internal/d;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/d$c;,
        Lcom/google/gson/internal/d$b;,
        Lcom/google/gson/internal/d$d;,
        Lcom/google/gson/internal/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field d:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field final g:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/gson/internal/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field

.field private i:Lcom/google/gson/internal/d$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/gson/internal/d;

    new-instance v0, Lcom/google/gson/internal/d$a;

    invoke-direct {v0}, Lcom/google/gson/internal/d$a;-><init>()V

    sput-object v0, Lcom/google/gson/internal/d;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/google/gson/internal/d;->a:Ljava/util/Comparator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/d;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/d;->e:I

    iput v0, p0, Lcom/google/gson/internal/d;->f:I

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/google/gson/internal/d;->a:Ljava/util/Comparator;

    :goto_d
    iput-object p1, p0, Lcom/google/gson/internal/d;->b:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/google/gson/internal/d;->c:Z

    new-instance p1, Lcom/google/gson/internal/d$e;

    invoke-direct {p1, p2}, Lcom/google/gson/internal/d$e;-><init>(Z)V

    iput-object p1, p0, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    sget-object v0, Lcom/google/gson/internal/d;->a:Ljava/util/Comparator;

    invoke-direct {p0, v0, p1}, Lcom/google/gson/internal/d;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private e(Lcom/google/gson/internal/d$e;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_79

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v1, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget v3, v0, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v1, :cond_12

    iget v4, v1, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3c

    iget-object v0, v1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v3, v1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    if-eqz v3, :cond_21

    iget v3, v3, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v0, :cond_26

    iget v2, v0, Lcom/google/gson/internal/d$e;->i:I

    :cond_26
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_36

    if-nez v2, :cond_2f

    if-nez p2, :cond_2f

    goto :goto_36

    :cond_2f
    invoke-direct {p0, v1}, Lcom/google/gson/internal/d;->k(Lcom/google/gson/internal/d$e;)V

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->j(Lcom/google/gson/internal/d$e;)V

    goto :goto_39

    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->j(Lcom/google/gson/internal/d$e;)V

    :goto_39
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_3c
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_63

    iget-object v1, v0, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v3, v0, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    if-eqz v3, :cond_49

    iget v3, v3, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-eqz v1, :cond_4e

    iget v2, v1, Lcom/google/gson/internal/d$e;->i:I

    :cond_4e
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_5d

    if-nez v2, :cond_56

    if-nez p2, :cond_56

    goto :goto_5d

    :cond_56
    invoke-direct {p0, v0}, Lcom/google/gson/internal/d;->j(Lcom/google/gson/internal/d$e;)V

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->k(Lcom/google/gson/internal/d$e;)V

    goto :goto_60

    :cond_5d
    :goto_5d
    invoke-direct {p0, p1}, Lcom/google/gson/internal/d;->k(Lcom/google/gson/internal/d$e;)V

    :goto_60
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_63
    if-nez v5, :cond_6c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/google/gson/internal/d$e;->i:I

    if-eqz p2, :cond_76

    goto :goto_79

    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/google/gson/internal/d$e;->i:I

    if-nez p2, :cond_76

    goto :goto_79

    :cond_76
    iget-object p1, p1, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    goto :goto_0

    :cond_79
    :goto_79
    return-void
.end method

.method private i(Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    :cond_9
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    if-ne v1, p1, :cond_12

    iput-object p2, v0, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    goto :goto_17

    :cond_12
    iput-object p2, v0, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    goto :goto_17

    :cond_15
    iput-object p2, p0, Lcom/google/gson/internal/d;->d:Lcom/google/gson/internal/d$e;

    :goto_17
    return-void
.end method

.method private j(Lcom/google/gson/internal/d$e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v1, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    iget-object v2, v1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v3, v1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    iput-object v2, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    if-eqz v2, :cond_e

    iput-object p1, v2, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/d;->i(Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    iput-object p1, v1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iput-object v1, p1, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    iget v0, v0, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v2, :cond_21

    iget v2, v2, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/gson/internal/d$e;->i:I

    if-eqz v3, :cond_2e

    iget v4, v3, Lcom/google/gson/internal/d$e;->i:I

    :cond_2e
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/google/gson/internal/d$e;->i:I

    return-void
.end method

.method private k(Lcom/google/gson/internal/d$e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v1, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    iget-object v2, v0, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v3, v0, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    iput-object v3, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    if-eqz v3, :cond_e

    iput-object p1, v3, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/d;->i(Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    iput-object p1, v0, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    iput-object v0, p1, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    iget v1, v1, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v3, :cond_21

    iget v3, v3, Lcom/google/gson/internal/d$e;->i:I

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/gson/internal/d$e;->i:I

    if-eqz v2, :cond_2e

    iget v4, v2, Lcom/google/gson/internal/d$e;->i:I

    :cond_2e
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/google/gson/internal/d$e;->i:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is unsupported"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method b(Ljava/lang/Object;Z)Lcom/google/gson/internal/d$e;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/gson/internal/d;->d:Lcom/google/gson/internal/d$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    sget-object v3, Lcom/google/gson/internal/d;->a:Ljava/util/Comparator;

    if-ne v0, v3, :cond_f

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_10

    :cond_f
    move-object v3, v2

    :goto_10
    if-eqz v3, :cond_19

    iget-object v4, v1, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1f

    :cond_19
    iget-object v4, v1, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1f
    if-nez v4, :cond_22

    return-object v1

    :cond_22
    if-gez v4, :cond_27

    iget-object v5, v1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    goto :goto_29

    :cond_27
    iget-object v5, v1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    :goto_29
    if-nez v5, :cond_2c

    goto :goto_2f

    :cond_2c
    move-object v1, v5

    goto :goto_10

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    if-nez p2, :cond_32

    return-object v2

    :cond_32
    iget-object v9, p0, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    const/4 p2, 0x1

    if-nez v1, :cond_6e

    sget-object v2, Lcom/google/gson/internal/d;->a:Ljava/util/Comparator;

    if-ne v0, v2, :cond_5f

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_40

    goto :goto_5f

    :cond_40
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5f
    :goto_5f
    new-instance v0, Lcom/google/gson/internal/d$e;

    iget-boolean v6, p0, Lcom/google/gson/internal/d;->c:Z

    iget-object v10, v9, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    move-object v5, v0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/gson/internal/d$e;-><init>(ZLcom/google/gson/internal/d$e;Ljava/lang/Object;Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    iput-object v0, p0, Lcom/google/gson/internal/d;->d:Lcom/google/gson/internal/d$e;

    goto :goto_84

    :cond_6e
    new-instance v0, Lcom/google/gson/internal/d$e;

    iget-boolean v6, p0, Lcom/google/gson/internal/d;->c:Z

    iget-object v10, v9, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    move-object v5, v0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/gson/internal/d$e;-><init>(ZLcom/google/gson/internal/d$e;Ljava/lang/Object;Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    if-gez v4, :cond_7f

    iput-object v0, v1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    goto :goto_81

    :cond_7f
    iput-object v0, v1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    :goto_81
    invoke-direct {p0, v1, p2}, Lcom/google/gson/internal/d;->e(Lcom/google/gson/internal/d$e;Z)V

    :goto_84
    iget p1, p0, Lcom/google/gson/internal/d;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/gson/internal/d;->e:I

    iget p1, p0, Lcom/google/gson/internal/d;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/gson/internal/d;->f:I

    return-object v0
.end method

.method c(Ljava/util/Map$Entry;)Lcom/google/gson/internal/d$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/d;->d(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/google/gson/internal/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/d;->d:Lcom/google/gson/internal/d$e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/d;->e:I

    iget v0, p0, Lcom/google/gson/internal/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/d;->f:I

    iget-object v0, p0, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    iput-object v0, v0, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    iput-object v0, v0, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/d;->d(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method d(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/d;->b(Ljava/lang/Object;Z)Lcom/google/gson/internal/d$e;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    nop

    :catch_9
    :cond_9
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d;->h:Lcom/google/gson/internal/d$b;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/google/gson/internal/d$b;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/d$b;-><init>(Lcom/google/gson/internal/d;)V

    iput-object v0, p0, Lcom/google/gson/internal/d;->h:Lcom/google/gson/internal/d$b;

    :goto_c
    return-object v0
.end method

.method f(Lcom/google/gson/internal/d$e;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object v0, p2, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object p2, v0, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    :cond_c
    iget-object p2, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    iget-object v1, p1, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_50

    if-eqz v0, :cond_50

    iget v1, p2, Lcom/google/gson/internal/d$e;->i:I

    iget v4, v0, Lcom/google/gson/internal/d$e;->i:I

    if-le v1, v4, :cond_23

    invoke-virtual {p2}, Lcom/google/gson/internal/d$e;->b()Lcom/google/gson/internal/d$e;

    move-result-object p2

    goto :goto_27

    :cond_23
    invoke-virtual {v0}, Lcom/google/gson/internal/d$e;->a()Lcom/google/gson/internal/d$e;

    move-result-object p2

    :goto_27
    invoke-virtual {p0, p2, v2}, Lcom/google/gson/internal/d;->f(Lcom/google/gson/internal/d$e;Z)V

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    if-eqz v0, :cond_37

    iget v1, v0, Lcom/google/gson/internal/d$e;->i:I

    iput-object v0, p2, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    iput-object p2, v0, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    iput-object v3, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    iget-object v0, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    if-eqz v0, :cond_44

    iget v2, v0, Lcom/google/gson/internal/d$e;->i:I

    iput-object v0, p2, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    iput-object p2, v0, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    iput-object v3, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    :cond_44
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/google/gson/internal/d$e;->i:I

    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/d;->i(Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    return-void

    :cond_50
    if-eqz p2, :cond_58

    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/d;->i(Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    iput-object v3, p1, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    goto :goto_63

    :cond_58
    if-eqz v0, :cond_60

    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/d;->i(Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    iput-object v3, p1, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    goto :goto_63

    :cond_60
    invoke-direct {p0, p1, v3}, Lcom/google/gson/internal/d;->i(Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V

    :goto_63
    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/d;->e(Lcom/google/gson/internal/d$e;Z)V

    iget p1, p0, Lcom/google/gson/internal/d;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/gson/internal/d;->e:I

    iget p1, p0, Lcom/google/gson/internal/d;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/gson/internal/d;->f:I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/d;->d(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method h(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/d;->d(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/d;->f(Lcom/google/gson/internal/d$e;Z)V

    :cond_a
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d;->i:Lcom/google/gson/internal/d$c;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/google/gson/internal/d$c;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/d$c;-><init>(Lcom/google/gson/internal/d;)V

    iput-object v0, p0, Lcom/google/gson/internal/d;->i:Lcom/google/gson/internal/d$c;

    :goto_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_14

    iget-boolean v0, p0, Lcom/google/gson/internal/d;->c:Z

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/d;->b(Ljava/lang/Object;Z)Lcom/google/gson/internal/d$e;

    move-result-object p1

    iget-object v0, p1, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    iput-object p2, p1, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/d;->h(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/gson/internal/d;->e:I

    return v0
.end method

###### Class com.google.gson.internal.d.a (com.google.gson.internal.d$a)
.class Lcom/google/gson/internal/d$a;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Comparable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/d$a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class com.google.gson.internal.d.b (com.google.gson.internal.d$b)
.class Lcom/google/gson/internal/d$b;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/d;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    invoke-virtual {v0}, Lcom/google/gson/internal/d;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/d;->c(Ljava/util/Map$Entry;)Lcom/google/gson/internal/d$e;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/internal/d$b$a;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/d$b$a;-><init>(Lcom/google/gson/internal/d$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/d;->c(Ljava/util/Map$Entry;)Lcom/google/gson/internal/d$e;

    move-result-object p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/internal/d;->f(Lcom/google/gson/internal/d$e;Z)V

    return v1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    iget v0, v0, Lcom/google/gson/internal/d;->e:I

    return v0
.end method

###### Class com.google.gson.internal.d.b.a (com.google.gson.internal.d$b$a)
.class Lcom/google/gson/internal/d$b$a;
.super Lcom/google/gson/internal/d$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/d$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/d<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/gson/internal/d$b;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d$b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/gson/internal/d$b$a;->e:Lcom/google/gson/internal/d$b;

    iget-object p1, p1, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d$d;-><init>(Lcom/google/gson/internal/d;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/internal/d$d;->b()Lcom/google/gson/internal/d$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/gson/internal/d$b$a;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.d.c (com.google.gson.internal.d$c)
.class final Lcom/google/gson/internal/d$c;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/d;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/gson/internal/d$c;->a:Lcom/google/gson/internal/d;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/gson/internal/d$c;->a:Lcom/google/gson/internal/d;

    invoke-virtual {v0}, Lcom/google/gson/internal/d;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/gson/internal/d$c;->a:Lcom/google/gson/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/d;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/internal/d$c$a;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/d$c$a;-><init>(Lcom/google/gson/internal/d$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/gson/internal/d$c;->a:Lcom/google/gson/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/d;->h(Ljava/lang/Object;)Lcom/google/gson/internal/d$e;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/gson/internal/d$c;->a:Lcom/google/gson/internal/d;

    iget v0, v0, Lcom/google/gson/internal/d;->e:I

    return v0
.end method

###### Class com.google.gson.internal.d.c.a (com.google.gson.internal.d$c$a)
.class Lcom/google/gson/internal/d$c$a;
.super Lcom/google/gson/internal/d$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/d$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/d<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/gson/internal/d$c;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d$c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/gson/internal/d$c$a;->e:Lcom/google/gson/internal/d$c;

    iget-object p1, p1, Lcom/google/gson/internal/d$c;->a:Lcom/google/gson/internal/d;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d$d;-><init>(Lcom/google/gson/internal/d;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/internal/d$d;->b()Lcom/google/gson/internal/d$e;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    return-object v0
.end method

###### Class com.google.gson.internal.d.AbstractC0275d (com.google.gson.internal.d$d)
.class abstract Lcom/google/gson/internal/d$d;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/google/gson/internal/d;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    iget-object v0, v0, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    iget p1, p1, Lcom/google/gson/internal/d;->f:I

    iput p1, p0, Lcom/google/gson/internal/d$d;->c:I

    return-void
.end method


# virtual methods
.method final b()Lcom/google/gson/internal/d$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    iget-object v1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    iget-object v2, v1, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    if-eq v0, v2, :cond_1b

    iget v1, v1, Lcom/google/gson/internal/d;->f:I

    iget v2, p0, Lcom/google/gson/internal/d$d;->c:I

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object v1, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    iget-object v1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    iget-object v1, v1, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/d;->f(Lcom/google/gson/internal/d$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    iget v0, v0, Lcom/google/gson/internal/d;->f:I

    iput v0, p0, Lcom/google/gson/internal/d$d;->c:I

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

###### Class com.google.gson.internal.d.e (com.google.gson.internal.d$e)
.class final Lcom/google/gson/internal/d$e;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final g:Z

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/gson/internal/d$e;->g:Z

    iput-object p0, p0, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    iput-object p0, p0, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    return-void
.end method

.method constructor <init>(ZLcom/google/gson/internal/d$e;Ljava/lang/Object;Lcom/google/gson/internal/d$e;Lcom/google/gson/internal/d$e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;TK;",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/gson/internal/d$e;->a:Lcom/google/gson/internal/d$e;

    iput-object p3, p0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/gson/internal/d$e;->g:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/gson/internal/d$e;->i:I

    iput-object p4, p0, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object p5, p0, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    iput-object p0, p5, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object p0, p4, Lcom/google/gson/internal/d$e;->e:Lcom/google/gson/internal/d$e;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/internal/d$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    move-object v1, p0

    :goto_3
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/google/gson/internal/d$e;->b:Lcom/google/gson/internal/d$e;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_b
    return-object v1
.end method

.method public b()Lcom/google/gson/internal/d$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    move-object v1, p0

    :goto_3
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/google/gson/internal/d$e;->c:Lcom/google/gson/internal/d$e;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_b
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    if-nez v0, :cond_12

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_1c

    :cond_12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :goto_1c
    iget-object v0, p0, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    if-nez v0, :cond_27

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_32

    goto :goto_31

    :cond_27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    :goto_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_f

    iget-boolean v0, p0, Lcom/google/gson/internal/d$e;->g:Z

    if-eqz v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/internal/d$e;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
