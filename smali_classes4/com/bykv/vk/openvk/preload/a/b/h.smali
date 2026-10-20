###### Class com.bykv.vk.openvk.preload.a.b.h (com.bykv.vk.openvk.preload.a.b.h)
.class public final Lcom/bykv/vk/openvk/preload/a/b/h;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/a/b/h$b;,
        Lcom/bykv/vk/openvk/preload/a/b/h$a;,
        Lcom/bykv/vk/openvk/preload/a/b/h$c;,
        Lcom/bykv/vk/openvk/preload/a/b/h$d;
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
.field static final synthetic f:Z

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field b:Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field final e:Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private h:Lcom/bykv/vk/openvk/preload/a/b/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field

.field private i:Lcom/bykv/vk/openvk/preload/a/b/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bykv/vk/openvk/preload/a/b/h;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bykv/vk/openvk/preload/a/b/h;->f:Z

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/h$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/b/h$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/b/h;->g:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/b/h;->g:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->c:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/b/h$d;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    sget-object p1, Lcom/bykv/vk/openvk/preload/a/b/h;->g:Ljava/util/Comparator;

    :goto_14
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->a:Ljava/util/Comparator;

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    sget-object v3, Lcom/bykv/vk/openvk/preload/a/b/h;->g:Ljava/util/Comparator;

    if-ne v0, v3, :cond_f

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_10

    :cond_f
    move-object v3, v2

    :goto_10
    if-eqz v3, :cond_19

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->f:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1f

    :cond_19
    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->f:Ljava/lang/Object;

    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1f
    if-nez v4, :cond_22

    return-object v1

    :cond_22
    if-gez v4, :cond_27

    iget-object v5, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto :goto_29

    :cond_27
    iget-object v5, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :goto_29
    if-eqz v5, :cond_2e

    move-object v1, v5

    goto :goto_10

    :cond_2d
    const/4 v4, 0x0

    :cond_2e
    if-nez p2, :cond_31

    return-object v2

    :cond_31
    iget-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v2, 0x1

    if-nez v1, :cond_68

    sget-object v3, Lcom/bykv/vk/openvk/preload/a/b/h;->g:Ljava/util/Comparator;

    if-ne v0, v3, :cond_5e

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_3f

    goto :goto_5e

    :cond_3f
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

    :cond_5e
    :goto_5e
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v3, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/bykv/vk/openvk/preload/a/b/h$d;-><init>(Lcom/bykv/vk/openvk/preload/a/b/h$d;Ljava/lang/Object;Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto :goto_79

    :cond_68
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v3, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/bykv/vk/openvk/preload/a/b/h$d;-><init>(Lcom/bykv/vk/openvk/preload/a/b/h$d;Ljava/lang/Object;Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    if-gez v4, :cond_74

    iput-object v0, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto :goto_76

    :cond_74
    iput-object v0, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :goto_76
    invoke-direct {p0, v1, v2}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Lcom/bykv/vk/openvk/preload/a/b/h$d;Z)V

    :goto_79
    iget p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->c:I

    iget p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    return-object v0
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v2, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz v2, :cond_e

    iput-object p1, v2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    iput-object p1, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    iget v0, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v2, :cond_21

    iget v2, v2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    if-eqz v3, :cond_2e

    iget v4, v3, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    :cond_2e
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    return-void
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :cond_9
    if-eqz v0, :cond_24

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-ne v1, p1, :cond_12

    iput-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    return-void

    :cond_12
    sget-boolean v1, Lcom/bykv/vk/openvk/preload/a/b/h;->f:Z

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-ne v1, p1, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_21
    :goto_21
    iput-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    return-void

    :cond_24
    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Ljava/lang/Object;Z)Lcom/bykv/vk/openvk/preload/a/b/h$d;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    :cond_9
    return-object v0
.end method

.method private b(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v3, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz v3, :cond_e

    iput-object p1, v3, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    iget v1, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v3, :cond_21

    iget v3, v3, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    if-eqz v2, :cond_2e

    iget v4, v2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    :cond_2e
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    return-void
.end method

.method private b(Lcom/bykv/vk/openvk/preload/a/b/h$d;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_a2

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget v3, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v1, :cond_12

    iget v4, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    sub-int v5, v3, v4

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v6, :cond_4a

    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz v3, :cond_23

    iget v3, v3, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    if-eqz v0, :cond_28

    iget v2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    :cond_28
    sub-int/2addr v2, v3

    if-eq v2, v7, :cond_44

    if-nez v2, :cond_30

    if-nez p2, :cond_30

    goto :goto_44

    :cond_30
    sget-boolean v0, Lcom/bykv/vk/openvk/preload/a/b/h;->f:Z

    if-nez v0, :cond_3d

    if-ne v2, v8, :cond_37

    goto :goto_3d

    :cond_37
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3d
    :goto_3d
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    goto :goto_47

    :cond_44
    :goto_44
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    :goto_47
    if-nez p2, :cond_a2

    goto :goto_9e

    :cond_4a
    const/4 v1, 0x2

    if-ne v5, v1, :cond_7d

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz v3, :cond_56

    iget v3, v3, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    goto :goto_57

    :cond_56
    const/4 v3, 0x0

    :goto_57
    if-eqz v1, :cond_5b

    iget v2, v1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    :cond_5b
    sub-int/2addr v2, v3

    if-eq v2, v8, :cond_77

    if-nez v2, :cond_63

    if-nez p2, :cond_63

    goto :goto_77

    :cond_63
    sget-boolean v1, Lcom/bykv/vk/openvk/preload/a/b/h;->f:Z

    if-nez v1, :cond_70

    if-ne v2, v7, :cond_6a

    goto :goto_70

    :cond_6a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_70
    :goto_70
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    goto :goto_7a

    :cond_77
    :goto_77
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    :goto_7a
    if-nez p2, :cond_a2

    goto :goto_9e

    :cond_7d
    if-nez v5, :cond_86

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    if-eqz p2, :cond_9e

    return-void

    :cond_86
    sget-boolean v0, Lcom/bykv/vk/openvk/preload/a/b/h;->f:Z

    if-nez v0, :cond_95

    if-eq v5, v7, :cond_95

    if-ne v5, v8, :cond_8f

    goto :goto_95

    :cond_8f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_95
    :goto_95
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    if-eqz p2, :cond_a2

    :cond_9e
    :goto_9e
    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto/16 :goto_0

    :cond_a2
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Z)V

    :cond_a
    return-object p1
.end method

.method final a(Ljava/util/Map$Entry;)Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/b/h$d;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v3, p1, :cond_1f

    if-eqz v3, :cond_1d

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_27

    return-object v0

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->d:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->d:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->d:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :cond_c
    iget-object p2, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_57

    if-eqz v0, :cond_57

    iget v1, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    iget v4, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    if-le v1, v4, :cond_28

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :goto_20
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_2c

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto :goto_20

    :cond_28
    :goto_28
    iget-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-nez p2, :cond_55

    :cond_2c
    invoke-virtual {p0, v0, v2}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Z)V

    iget-object p2, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz p2, :cond_3c

    iget v1, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    iput-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v3, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    iget-object p2, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz p2, :cond_49

    iget v2, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    iput-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, p2, Lcom/bykv/vk/openvk/preload/a/b/h$d;->a:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v3, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    :cond_49
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->h:I

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    return-void

    :cond_55
    move-object v0, p2

    goto :goto_28

    :cond_57
    if-eqz p2, :cond_5f

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    iput-object v3, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto :goto_6a

    :cond_5f
    if-eqz v0, :cond_67

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    iput-object v3, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    goto :goto_6a

    :cond_67
    invoke-direct {p0, p1, v3}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Lcom/bykv/vk/openvk/preload/a/b/h$d;)V

    :goto_6a
    invoke-direct {p0, v1, v2}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Lcom/bykv/vk/openvk/preload/a/b/h$d;Z)V

    iget p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->c:I

    iget p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    return-void
.end method

.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->c:I

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->d:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->h:Lcom/bykv/vk/openvk/preload/a/b/h$a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/h$a;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/a/b/h$a;-><init>(Lcom/bykv/vk/openvk/preload/a/b/h;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->h:Lcom/bykv/vk/openvk/preload/a/b/h$a;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->b(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->g:Ljava/lang/Object;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->i:Lcom/bykv/vk/openvk/preload/a/b/h$b;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/h$b;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/a/b/h$b;-><init>(Lcom/bykv/vk/openvk/preload/a/b/h;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->i:Lcom/bykv/vk/openvk/preload/a/b/h$b;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Ljava/lang/Object;Z)Lcom/bykv/vk/openvk/preload/a/b/h$d;

    move-result-object p1

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->g:Ljava/lang/Object;

    iput-object p2, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/b/h$d;->g:Ljava/lang/Object;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h;->c:I

    return v0
.end method
