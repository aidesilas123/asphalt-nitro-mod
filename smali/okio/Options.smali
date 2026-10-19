###### Class okio.Options (okio.Options)
.class public final Lokio/Options;
.super Lkotlin/collections/c;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Options$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/c<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final b:Lokio/Options$a;


# instance fields
.field private final c:[Lokio/ByteString;

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/Options$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Options$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/Options;->b:Lokio/Options$a;

    return-void
.end method

.method private constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    invoke-direct {p0}, Lkotlin/collections/c;-><init>()V

    iput-object p1, p0, Lokio/Options;->c:[Lokio/ByteString;

    iput-object p2, p0, Lokio/Options;->d:[I

    return-void
.end method

.method public synthetic constructor <init>([Lokio/ByteString;[ILkotlin/jvm/internal/n;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-void
.end method

.method public static final varargs of([Lokio/ByteString;)Lokio/Options;
    .registers 2

    sget-object v0, Lokio/Options;->b:Lokio/Options$a;

    invoke-virtual {v0, p0}, Lokio/Options$a;->d([Lokio/ByteString;)Lokio/Options;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->f(Lokio/ByteString;)Z

    move-result p1

    return p1
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lokio/Options;->c:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method

.method public bridge f(Lokio/ByteString;)Z
    .registers 2

    invoke-super {p0, p1}, Lkotlin/collections/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Options;->h(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Lokio/ByteString;
    .registers 3

    iget-object v0, p0, Lokio/Options;->c:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final i()[Lokio/ByteString;
    .registers 2

    iget-object v0, p0, Lokio/Options;->c:[Lokio/ByteString;

    return-object v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->n(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public final j()[I
    .registers 2

    iget-object v0, p0, Lokio/Options;->d:[I

    return-object v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->r(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public bridge n(Lokio/ByteString;)I
    .registers 2

    invoke-super {p0, p1}, Lkotlin/collections/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge r(Lokio/ByteString;)I
    .registers 2

    invoke-super {p0, p1}, Lkotlin/collections/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

###### Class okio.Options.a (okio.Options$a)
.class public final Lokio/Options$a;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokio/Options$a;-><init>()V

    return-void
.end method

.method private final a(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v0, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    if-ge v0, v13, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    const-string v4, "Failed requirement."

    if-eqz v3, :cond_1e7

    if-ge v0, v13, :cond_3c

    move v3, v0

    :goto_1a
    add-int/lit8 v5, v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v3

    if-lt v3, v11, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    if-eqz v3, :cond_32

    if-lt v5, v13, :cond_30

    goto :goto_3c

    :cond_30
    move v3, v5

    goto :goto_1a

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v5

    const/4 v15, -0x1

    if-ne v11, v5, :cond_67

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move v6, v0

    move v0, v3

    move-object v3, v5

    goto :goto_69

    :cond_67
    move v6, v0

    const/4 v0, -0x1

    :goto_69
    invoke-virtual {v3, v11}, Lokio/ByteString;->j(I)B

    move-result v5

    invoke-virtual {v4, v11}, Lokio/ByteString;->j(I)B

    move-result v7

    const/4 v8, 0x2

    if-eq v5, v7, :cond_14b

    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x1

    if-ge v1, v13, :cond_9a

    :goto_79
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v11}, Lokio/ByteString;->j(I)B

    move-result v4

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1, v11}, Lokio/ByteString;->j(I)B

    move-result v1

    if-eq v4, v1, :cond_95

    add-int/lit8 v2, v2, 0x1

    :cond_95
    if-lt v3, v13, :cond_98

    goto :goto_9a

    :cond_98
    move v1, v3

    goto :goto_79

    :cond_9a
    :goto_9a
    invoke-direct {v9, v10}, Lokio/Options$a;->c(Lokio/Buffer;)J

    move-result-wide v3

    add-long v3, p1, v3

    int-to-long v7, v8

    add-long/2addr v3, v7

    mul-int/lit8 v1, v2, 0x2

    int-to-long v7, v1

    add-long v16, v3, v7

    invoke-virtual {v10, v2}, Lokio/Buffer;->X(I)Lokio/Buffer;

    invoke-virtual {v10, v0}, Lokio/Buffer;->X(I)Lokio/Buffer;

    if-ge v6, v13, :cond_d6

    move v0, v6

    :goto_b0
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v11}, Lokio/ByteString;->j(I)B

    move-result v2

    if-eq v0, v6, :cond_cc

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0, v11}, Lokio/ByteString;->j(I)B

    move-result v0

    if-eq v2, v0, :cond_d1

    :cond_cc
    and-int/lit16 v0, v2, 0xff

    invoke-virtual {v10, v0}, Lokio/Buffer;->X(I)Lokio/Buffer;

    :cond_d1
    if-lt v1, v13, :cond_d4

    goto :goto_d6

    :cond_d4
    move v0, v1

    goto :goto_b0

    :cond_d6
    :goto_d6
    new-instance v8, Lokio/Buffer;

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    :goto_db
    if-ge v6, v13, :cond_145

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0, v11}, Lokio/ByteString;->j(I)B

    move-result v0

    add-int/lit8 v1, v6, 0x1

    if-ge v1, v13, :cond_101

    move v2, v1

    :goto_ec
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v11}, Lokio/ByteString;->j(I)B

    move-result v4

    if-eq v0, v4, :cond_fc

    move v7, v2

    goto :goto_102

    :cond_fc
    if-lt v3, v13, :cond_ff

    goto :goto_101

    :cond_ff
    move v2, v3

    goto :goto_ec

    :cond_101
    :goto_101
    move v7, v13

    :goto_102
    if-ne v1, v7, :cond_123

    add-int/lit8 v0, v11, 0x1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->F()I

    move-result v1

    if-ne v0, v1, :cond_123

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->X(I)Lokio/Buffer;

    move/from16 v18, v7

    move-object v15, v8

    goto :goto_140

    :cond_123
    invoke-direct {v9, v8}, Lokio/Options$a;->c(Lokio/Buffer;)J

    move-result-wide v0

    add-long v0, v16, v0

    long-to-int v1, v0

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Lokio/Buffer;->X(I)Lokio/Buffer;

    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v8

    move-object/from16 v5, p5

    move/from16 v18, v7

    move-object v15, v8

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lokio/Options$a;->a(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_140
    move-object v8, v15

    move/from16 v6, v18

    const/4 v15, -0x1

    goto :goto_db

    :cond_145
    move-object v15, v8

    invoke-virtual {v10, v15}, Lokio/Buffer;->D(Lokio/y;)J

    goto/16 :goto_1e6

    :cond_14b
    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v5

    invoke-virtual {v4}, Lokio/ByteString;->F()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v11, v5, :cond_16e

    move v7, v11

    const/4 v15, 0x0

    :goto_15b
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v3, v7}, Lokio/ByteString;->j(I)B

    move-result v2

    invoke-virtual {v4, v7}, Lokio/ByteString;->j(I)B

    move-result v7

    if-ne v2, v7, :cond_16f

    add-int/lit8 v15, v15, 0x1

    if-lt v1, v5, :cond_16c

    goto :goto_16f

    :cond_16c
    move v7, v1

    goto :goto_15b

    :cond_16e
    const/4 v15, 0x0

    :cond_16f
    :goto_16f
    invoke-direct {v9, v10}, Lokio/Options$a;->c(Lokio/Buffer;)J

    move-result-wide v1

    add-long v1, p1, v1

    int-to-long v4, v8

    add-long/2addr v1, v4

    int-to-long v4, v15

    add-long/2addr v1, v4

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    neg-int v4, v15

    invoke-virtual {v10, v4}, Lokio/Buffer;->X(I)Lokio/Buffer;

    invoke-virtual {v10, v0}, Lokio/Buffer;->X(I)Lokio/Buffer;

    add-int v4, v11, v15

    if-ge v11, v4, :cond_197

    :goto_187
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v3, v11}, Lokio/ByteString;->j(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v10, v5}, Lokio/Buffer;->X(I)Lokio/Buffer;

    if-lt v0, v4, :cond_195

    goto :goto_197

    :cond_195
    move v11, v0

    goto :goto_187

    :cond_197
    :goto_197
    add-int/lit8 v0, v6, 0x1

    if-ne v0, v13, :cond_1c6

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    if-ne v4, v0, :cond_1a9

    const/4 v1, 0x1

    goto :goto_1aa

    :cond_1a9
    const/4 v1, 0x0

    :goto_1aa
    if-eqz v1, :cond_1ba

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->X(I)Lokio/Buffer;

    goto :goto_1e6

    :cond_1ba
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c6
    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    invoke-direct {v9, v11}, Lokio/Options$a;->c(Lokio/Buffer;)J

    move-result-wide v7

    add-long/2addr v7, v1

    long-to-int v0, v7

    const/4 v3, -0x1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Lokio/Buffer;->X(I)Lokio/Buffer;

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lokio/Options$a;->a(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    invoke-virtual {v10, v11}, Lokio/Buffer;->D(Lokio/y;)J

    :goto_1e6
    return-void

    :cond_1e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lokio/Options$a;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .registers 22

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_9

    :cond_8
    move-wide v3, p1

    :goto_9
    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v6, 0x0

    goto :goto_11

    :cond_10
    move v6, p4

    :goto_11
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_17

    const/4 v8, 0x0

    goto :goto_19

    :cond_17
    move/from16 v8, p6

    :goto_19
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_23

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    move v9, v0

    goto :goto_25

    :cond_23
    move/from16 v9, p7

    :goto_25
    move-object v2, p0

    move-object v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lokio/Options$a;->a(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    return-void
.end method

.method private final c(Lokio/Buffer;)J
    .registers 6

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v0

    const/4 p1, 0x4

    int-to-long v2, p1

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final varargs d([Lokio/ByteString;)Lokio/Options;
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "byteStrings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const/4 v4, 0x0

    if-eqz v1, :cond_20

    new-instance v0, Lokio/Options;

    new-array v1, v3, [Lokio/ByteString;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_134

    invoke-direct {v0, v1, v2, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/n;)V

    return-object v0

    :cond_20
    invoke-static/range {p1 .. p1}, Lkotlin/collections/k;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->sort(Ljava/util/List;)V

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v0

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v6, :cond_3e

    aget-object v8, v0, v7

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_3e
    new-array v6, v3, [Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Integer;

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/p;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    array-length v11, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_57
    if-ge v12, v11, :cond_71

    aget-object v6, v0, v12

    add-int/lit8 v15, v14, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v10}, Lkotlin/collections/p;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    move v14, v15

    goto :goto_57

    :cond_71
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->F()I

    move-result v5

    if-lez v5, :cond_7f

    const/4 v5, 0x1

    goto :goto_80

    :cond_7f
    const/4 v5, 0x0

    :goto_80
    if-eqz v5, :cond_125

    const/4 v5, 0x0

    :goto_83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    add-int/lit8 v7, v5, 0x1

    move v8, v7

    :goto_92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/ByteString;

    invoke-virtual {v9, v6}, Lokio/ByteString;->G(Lokio/ByteString;)Z

    move-result v10

    if-nez v10, :cond_a5

    goto :goto_e4

    :cond_a5
    invoke-virtual {v9}, Lokio/ByteString;->F()I

    move-result v10

    invoke-virtual {v6}, Lokio/ByteString;->F()I

    move-result v11

    if-eq v10, v11, :cond_b1

    const/4 v10, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v10, 0x0

    :goto_b2
    if-eqz v10, :cond_d4

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-le v9, v10, :cond_d1

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_92

    :cond_d1
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    :cond_d4
    const-string v0, "duplicate option: "

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e4
    :goto_e4
    move v5, v7

    goto :goto_83

    :cond_e6
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x35

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object v8, v2

    move-object v10, v1

    invoke-static/range {v5 .. v15}, Lokio/Options$a;->b(Lokio/Options$a;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    move-object/from16 v1, p0

    invoke-direct {v1, v2}, Lokio/Options$a;->c(Lokio/Buffer;)J

    move-result-wide v5

    long-to-int v6, v5

    new-array v5, v6, [I

    :goto_103
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v6

    if-nez v6, :cond_113

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2}, Lokio/Buffer;->readInt()I

    move-result v7

    aput v7, v5, v3

    move v3, v6

    goto :goto_103

    :cond_113
    new-instance v2, Lokio/Options;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lokio/ByteString;

    invoke-direct {v2, v0, v5, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/n;)V

    return-object v2

    :cond_125
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "the empty byte string is not a supported option"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_134
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
