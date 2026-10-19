###### Class kotlin.reflect.jvm.internal.impl.protobuf.n (kotlin.reflect.jvm.internal.impl.protobuf.n)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field private final c:I

.field private final d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field private final e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field private final f:I

.field private final g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_7
    if-lez v1, :cond_15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_7

    :cond_15
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b:[I

    const/4 v1, 0x0

    :goto_28
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .registers 5

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->h:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->f:I

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->c:I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->f()I

    move-result p1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->f()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic A(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic B()[I
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b:[I

    return-object v0
.end method

.method static C(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .registers 8

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_97

    :cond_12
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_1b

    :goto_18
    move-object p0, p1

    goto/16 :goto_97

    :cond_1b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2d

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->D(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object p0

    goto :goto_97

    :cond_2d
    if-eqz v0, :cond_4a

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_4a

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->D(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object p0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    goto :goto_18

    :cond_4a
    if-eqz v0, :cond_73

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->f()I

    move-result v3

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->f()I

    move-result v4

    if-le v3, v4, :cond_73

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->f()I

    move-result v3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->f()I

    move-result v4

    if-le v3, v4, :cond_73

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-direct {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    goto :goto_18

    :cond_73
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->f()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->f()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_8e

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    move-object p0, v0

    goto :goto_97

    :cond_8e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    invoke-static {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p0

    :goto_97
    return-object p0
.end method

.method private static D(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/i;
    .registers 6

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->d([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->d([BIII)V

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;-><init>([B)V

    return-object p0
.end method

.method private E(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Z
    .registers 13

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-direct {v3, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_30

    invoke-virtual {v2, p1, v5, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->A(Lkotlin/reflect/jvm/internal/impl/protobuf/i;II)Z

    move-result v10

    goto :goto_34

    :cond_30
    invoke-virtual {p1, v2, v4, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->A(Lkotlin/reflect/jvm/internal/impl/protobuf/i;II)Z

    move-result v10

    :goto_34
    if-nez v10, :cond_37

    return v1

    :cond_37
    add-int/2addr v6, v9

    iget v10, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->c:I

    if-lt v6, v10, :cond_46

    if-ne v6, v10, :cond_40

    const/4 p1, 0x1

    return p1

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_46
    if-ne v9, v7, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    const/4 v4, 0x0

    goto :goto_51

    :cond_50
    add-int/2addr v4, v9

    :goto_51
    if-ne v9, v8, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    const/4 v5, 0x0

    goto :goto_1b

    :cond_5b
    add-int/2addr v5, v9

    goto :goto_1b
.end method

.method static synthetic z(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-object p0
.end method


# virtual methods
.method protected e([BIII)V
    .registers 7

    add-int v0, p2, p4

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->f:I

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->e([BIII)V

    goto :goto_23

    :cond_c
    if-lt p2, v1, :cond_15

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->e([BIII)V

    goto :goto_23

    :cond_15
    sub-int/2addr v1, p2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->e([BIII)V

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->e([BIII)V

    :goto_23
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->c:I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->c:I

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->h:I

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->o()I

    move-result v0

    if-eqz v0, :cond_29

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->h:I

    if-eq v1, v0, :cond_29

    return v2

    :cond_29
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->E(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Z

    move-result p1

    return p1
.end method

.method protected f()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->g:I

    return v0
.end method

.method protected g()Z
    .registers 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->c:I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b:[I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->g:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public h()Z
    .registers 5

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->n(III)I

    move-result v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->n(III)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->h:I

    if-nez v0, :cond_10

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->l(III)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :cond_e
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->h:I

    :cond_10
    return v0
.end method

.method public i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;
    .registers 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected l(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->f:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->l(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->l(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->l(III)I

    move-result p1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->l(III)I

    move-result p1

    return p1
.end method

.method protected n(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->f:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->n(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->n(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->n(III)I

    move-result p1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->n(III)I

    move-result p1

    return p1
.end method

.method protected o()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->h:I

    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->c:I

    return v0
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->r()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method y(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->f:I

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->y(Ljava/io/OutputStream;II)V

    goto :goto_22

    :cond_c
    if-lt p2, v1, :cond_15

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->y(Ljava/io/OutputStream;II)V

    goto :goto_22

    :cond_15
    sub-int/2addr v1, p2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->y(Ljava/io/OutputStream;II)V

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->y(Ljava/io/OutputStream;II)V

    :goto_22
    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.n.a (kotlin.reflect.jvm.internal.impl.protobuf.n$a)
.class synthetic Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class kotlin.reflect.jvm.internal.impl.protobuf.n.b (kotlin.reflect.jvm.internal.impl.protobuf.n$b)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .registers 5

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    :goto_e
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    move-object p1, v0

    goto :goto_e

    :cond_26
    return-object p1
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .registers 5

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->e(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    goto :goto_1e

    :cond_a
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    if-eqz v0, :cond_1f

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->z(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->A(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)I
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->B()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_f

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_f
    return p1
.end method

.method private e(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .registers 7

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->d(I)I

    move-result v0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->B()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_28

    goto/16 :goto_9c

    :cond_28
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->B()[I

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    :goto_36
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5c

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_5c

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {v4, v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    move-object v1, v4

    goto :goto_36

    :cond_5c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {v0, v1, p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    :goto_61
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_96

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->d(I)I

    move-result p1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->B()[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_96

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {v1, p1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    move-object v0, v1

    goto :goto_61

    :cond_96
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$b;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a1
    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.n.c (kotlin.reflect.jvm.internal.impl.protobuf.n$c)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/n;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->a:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/i;
    .registers 3

    :goto_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    if-eqz v0, :cond_10

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->z(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    :cond_10
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    return-object p1
.end method

.method private b()Lkotlin/reflect/jvm/internal/impl/protobuf/i;
    .registers 3

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->A(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    return-object v0

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.n.d (kotlin.reflect.jvm.internal.impl.protobuf.n$d)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

.field c:I

.field final synthetic d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Byte;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    :cond_14
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;->nextByte()B

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.n.e (kotlin.reflect.jvm.internal.impl.protobuf.n$e)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field final synthetic g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e()V

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-eqz v0, :cond_2e

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    if-ne v0, v1, :cond_2e

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    goto :goto_2e

    :cond_29
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    :cond_2e
    :goto_2e
    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    return-void
.end method

.method private f([BII)I
    .registers 8

    move v0, p3

    :goto_1
    if-lez v0, :cond_28

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-nez v1, :cond_e

    if-ne v0, p3, :cond_28

    const/4 p1, -0x1

    return p1

    :cond_e
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->c:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_21

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->d([BIII)V

    add-int/2addr p2, v1

    :cond_21
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_28
    sub-int/2addr p3, v0

    return p3
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public mark(I)V
    .registers 3

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e:I

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d()V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-nez v0, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->d:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->z(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f([BII)I

    move-result p1

    return p1

    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->e()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f:I

    invoke-direct {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    invoke-direct {p0, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$e;->f([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_17
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
