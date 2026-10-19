###### Class com.applovin.exoplayer2.j.f (com.applovin.exoplayer2.j.f)
.class public abstract Lcom/applovin/exoplayer2/j/f;
.super Lcom/applovin/exoplayer2/j/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/j/f$a;
    }
.end annotation


# instance fields
.field private UU:Lcom/applovin/exoplayer2/j/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/j;-><init>()V

    return-void
.end method

.method private static a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/h/ac;[IZ)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_6
    array-length v6, p0

    if-ge v3, v6, :cond_3b

    aget-object v6, p0, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    iget v9, p1, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v7, v9, :cond_24

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/applovin/exoplayer2/as;->b(Lcom/applovin/exoplayer2/v;)I

    move-result v9

    invoke-static {v9}, Lcom/applovin/exoplayer2/z1;->c(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_24
    aget v6, p2, v3

    if-nez v6, :cond_2a

    const/4 v6, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    if-gt v8, v4, :cond_35

    if-ne v8, v4, :cond_38

    if-eqz p3, :cond_38

    if-nez v5, :cond_38

    if-eqz v6, :cond_38

    :cond_35
    move v0, v3

    move v5, v6

    move v4, v8

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_3b
    return v0
.end method

.method private static a(Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/h/ac;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget v0, p1, Lcom/applovin/exoplayer2/h/ac;->fR:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_5
    iget v2, p1, Lcom/applovin/exoplayer2/h/ac;->fR:I

    if-ge v1, v2, :cond_16

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/applovin/exoplayer2/as;->b(Lcom/applovin/exoplayer2/v;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-object v0
.end method

.method private static a([Lcom/applovin/exoplayer2/as;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/applovin/exoplayer2/as;->Z()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    return-object v1
.end method


# virtual methods
.method public final J(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/applovin/exoplayer2/j/f$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/f;->UU:Lcom/applovin/exoplayer2/j/f$a;

    return-void
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/j/f$a;[[[I[ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/j/f$a;",
            "[[[I[I",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Lcom/applovin/exoplayer2/ba;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/applovin/exoplayer2/at;",
            "[",
            "Lcom/applovin/exoplayer2/j/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation
.end method

.method public final a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/j/k;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lcom/applovin/exoplayer2/h/ac;

    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v4, :cond_21

    iget v9, v1, Lcom/applovin/exoplayer2/h/ad;->fR:I

    new-array v10, v9, [Lcom/applovin/exoplayer2/h/ac;

    aput-object v10, v5, v8

    new-array v9, v9, [[I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_21
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/f;->a([Lcom/applovin/exoplayer2/as;)[I

    move-result-object v4

    const/4 v8, 0x0

    :goto_26
    iget v9, v1, Lcom/applovin/exoplayer2/h/ad;->fR:I

    if-ge v8, v9, :cond_62

    invoke-virtual {v1, v8}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v10

    iget-object v10, v10, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v10}, Lcom/applovin/exoplayer2/l/u;->ba(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_3d

    const/4 v10, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v10, 0x0

    :goto_3e
    invoke-static {p1, v9, v2, v10}, Lcom/applovin/exoplayer2/j/f;->a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/h/ac;[IZ)I

    move-result v10

    array-length v11, v0

    if-ne v10, v11, :cond_4a

    iget v11, v9, Lcom/applovin/exoplayer2/h/ac;->fR:I

    new-array v11, v11, [I

    goto :goto_50

    :cond_4a
    aget-object v11, v0, v10

    invoke-static {v11, v9}, Lcom/applovin/exoplayer2/j/f;->a(Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/h/ac;)[I

    move-result-object v11

    :goto_50
    aget v12, v2, v10

    aget-object v13, v5, v10

    aput-object v9, v13, v12

    aget-object v9, v6, v10

    aput-object v11, v9, v12

    aget v9, v2, v10

    add-int/2addr v9, v3

    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_62
    array-length v1, v0

    new-array v10, v1, [Lcom/applovin/exoplayer2/h/ad;

    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    array-length v1, v0

    new-array v9, v1, [I

    :goto_6b
    array-length v1, v0

    if-ge v7, v1, :cond_9c

    aget v1, v2, v7

    new-instance v3, Lcom/applovin/exoplayer2/h/ad;

    aget-object v11, v5, v7

    invoke-static {v11, v1}, Lcom/applovin/exoplayer2/l/ai;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/applovin/exoplayer2/h/ac;

    invoke-direct {v3, v11}, Lcom/applovin/exoplayer2/h/ad;-><init>([Lcom/applovin/exoplayer2/h/ac;)V

    aput-object v3, v10, v7

    aget-object v3, v6, v7

    invoke-static {v3, v1}, Lcom/applovin/exoplayer2/l/ai;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v6, v7

    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/applovin/exoplayer2/as;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/applovin/exoplayer2/as;->M()I

    move-result v1

    aput v1, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    :cond_9c
    array-length v1, v0

    aget v1, v2, v1

    new-instance v13, Lcom/applovin/exoplayer2/h/ad;

    array-length v0, v0

    aget-object v0, v5, v0

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/exoplayer2/h/ac;

    invoke-direct {v13, v0}, Lcom/applovin/exoplayer2/h/ad;-><init>([Lcom/applovin/exoplayer2/h/ac;)V

    new-instance v0, Lcom/applovin/exoplayer2/j/f$a;

    move-object v7, v0

    move-object v11, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/applovin/exoplayer2/j/f$a;-><init>([Ljava/lang/String;[I[Lcom/applovin/exoplayer2/h/ad;[I[[[ILcom/applovin/exoplayer2/h/ad;)V

    move-object v7, p0

    move-object v8, v0

    move-object v9, v6

    move-object v10, v4

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/applovin/exoplayer2/j/f;->a(Lcom/applovin/exoplayer2/j/f$a;[[[I[ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;

    move-result-object v1

    new-instance v2, Lcom/applovin/exoplayer2/j/k;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Lcom/applovin/exoplayer2/at;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/applovin/exoplayer2/j/d;

    invoke-direct {v2, v3, v1, v0}, Lcom/applovin/exoplayer2/j/k;-><init>([Lcom/applovin/exoplayer2/at;[Lcom/applovin/exoplayer2/j/d;Ljava/lang/Object;)V

    return-object v2
.end method

###### Class com.applovin.exoplayer2.j.f.a (com.applovin.exoplayer2.j.f$a)
.class public final Lcom/applovin/exoplayer2/j/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final UV:I

.field private final UW:[Ljava/lang/String;

.field private final UX:[I

.field private final UY:[Lcom/applovin/exoplayer2/h/ad;

.field private final UZ:[I

.field private final Va:[[[I

.field private final Vb:Lcom/applovin/exoplayer2/h/ad;


# direct methods
.method constructor <init>([Ljava/lang/String;[I[Lcom/applovin/exoplayer2/h/ad;[I[[[ILcom/applovin/exoplayer2/h/ad;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/f$a;->UW:[Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/f$a;->UX:[I

    iput-object p3, p0, Lcom/applovin/exoplayer2/j/f$a;->UY:[Lcom/applovin/exoplayer2/h/ad;

    iput-object p5, p0, Lcom/applovin/exoplayer2/j/f$a;->Va:[[[I

    iput-object p4, p0, Lcom/applovin/exoplayer2/j/f$a;->UZ:[I

    iput-object p6, p0, Lcom/applovin/exoplayer2/j/f$a;->Vb:Lcom/applovin/exoplayer2/h/ad;

    array-length p1, p2

    iput p1, p0, Lcom/applovin/exoplayer2/j/f$a;->UV:I

    return-void
.end method


# virtual methods
.method public eS(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/f$a;->UX:[I

    aget p1, v0, p1

    return p1
.end method

.method public eT(I)Lcom/applovin/exoplayer2/h/ad;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/f$a;->UY:[Lcom/applovin/exoplayer2/h/ad;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public np()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/j/f$a;->UV:I

    return v0
.end method
