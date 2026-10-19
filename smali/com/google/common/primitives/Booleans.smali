###### Class com.google.common.primitives.Booleans (com.google.common.primitives.Booleans)
.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$a;,
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;,
        Lcom/google/common/primitives/Booleans$BooleanComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([ZZII)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->c([ZZII)I

    move-result p0

    return p0
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Booleans$a;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$a;-><init>([Z)V

    return-object v0
.end method

.method static synthetic b([ZZII)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->d([ZZII)I

    move-result p0

    return p0
.end method

.method private static c([ZZII)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_a

    aget-boolean v0, p0, p2

    if-ne v0, p1, :cond_7

    return p2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method public static compare(ZZ)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    goto :goto_9

    :cond_4
    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, -0x1

    :goto_9
    return p0
.end method

.method public static varargs concat([[Z)[Z
    .registers 8

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v0, :cond_d

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    new-array v0, v3, [Z

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v5, p0, v3

    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1f
    return-object v0
.end method

.method public static contains([ZZ)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget-boolean v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method public static varargs countTrue([Z)I
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_e

    aget-boolean v3, p0, v1

    if-eqz v3, :cond_b

    add-int/lit8 v2, v2, 0x1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return v2
.end method

.method private static d([ZZII)I
    .registers 5

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-lt p3, p2, :cond_c

    aget-boolean v0, p0, p3

    if-ne v0, p1, :cond_9

    return p3

    :cond_9
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static ensureCapacity([ZII)[Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Invalid minLength: %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    if-ltz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Invalid padding: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    array-length v0, p0

    if-ge v0, p1, :cond_1d

    add-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p0

    :cond_1d
    return-object p0
.end method

.method public static falseFirst()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->b:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method

.method public static hashCode(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 p0, 0x4d5

    :goto_7
    return p0
.end method

.method public static indexOf([ZZ)I
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans;->c([ZZII)I

    move-result p0

    return p0
.end method

.method public static indexOf([Z[Z)I
    .registers 7

    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2a

    const/4 v2, 0x0

    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_29

    add-int v3, v0, v2

    aget-boolean v3, p0, v3

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_26

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    return v0

    :cond_2a
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lastIndexOf([ZZ)I
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans;->d([ZZII)I

    move-result p0

    return p0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[Z>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->a:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static reverse([Z)V
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/Booleans;->reverse([ZII)V

    return-void
.end method

.method public static reverse([ZII)V
    .registers 5

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    add-int/lit8 p2, p2, -0x1

    :goto_9
    if-ge p1, p2, :cond_18

    aget-boolean v0, p0, p1

    aget-boolean v1, p0, p2

    aput-boolean v1, p0, p1

    aput-boolean v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_18
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/primitives/Booleans$a;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/common/primitives/Booleans$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->e()[Z

    move-result-object p0

    return-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_26

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    return-object v1
.end method

.method public static trueFirst()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->a:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method

###### Class com.google.common.primitives.Booleans.BooleanComparator (com.google.common.primitives.Booleans$BooleanComparator)
.class final enum Lcom/google/common/primitives/Booleans$BooleanComparator;
.super Ljava/lang/Enum;
.source "Booleans.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BooleanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/Booleans$BooleanComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/Booleans$BooleanComparator;

.field public static final enum b:Lcom/google/common/primitives/Booleans$BooleanComparator;

.field private static final synthetic c:[Lcom/google/common/primitives/Booleans$BooleanComparator;


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanComparator;

    const-string v1, "TRUE_FIRST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Booleans.trueFirst()"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Booleans$BooleanComparator;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->a:Lcom/google/common/primitives/Booleans$BooleanComparator;

    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanComparator;

    const-string v1, "FALSE_FIRST"

    const/4 v2, -0x1

    const-string v4, "Booleans.falseFirst()"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/common/primitives/Booleans$BooleanComparator;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->b:Lcom/google/common/primitives/Booleans$BooleanComparator;

    invoke-static {}, Lcom/google/common/primitives/Booleans$BooleanComparator;->e()[Lcom/google/common/primitives/Booleans$BooleanComparator;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->c:[Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/common/primitives/Booleans$BooleanComparator;->d:I

    iput-object p4, p0, Lcom/google/common/primitives/Booleans$BooleanComparator;->e:Ljava/lang/String;

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/primitives/Booleans$BooleanComparator;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/primitives/Booleans$BooleanComparator;

    sget-object v1, Lcom/google/common/primitives/Booleans$BooleanComparator;->a:Lcom/google/common/primitives/Booleans$BooleanComparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/primitives/Booleans$BooleanComparator;->b:Lcom/google/common/primitives/Booleans$BooleanComparator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Booleans$BooleanComparator;
    .registers 2

    const-class v0, Lcom/google/common/primitives/Booleans$BooleanComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object p0
.end method

.method public static values()[Lcom/google/common/primitives/Booleans$BooleanComparator;
    .registers 1

    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->c:[Lcom/google/common/primitives/Booleans$BooleanComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Booleans$BooleanComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$BooleanComparator;->f(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/google/common/primitives/Booleans$BooleanComparator;->d:I

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_13

    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanComparator;->d:I

    :cond_13
    sub-int/2addr v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanComparator;->e:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.common.primitives.Booleans.LexicographicalComparator (com.google.common.primitives.Booleans$LexicographicalComparator)
.class final enum Lcom/google/common/primitives/Booleans$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Booleans.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/Booleans$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[Z>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

.field private static final synthetic b:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Booleans$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->a:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    invoke-static {}, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->e()[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->b:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->a:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    .registers 2

    const-class v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object p0
.end method

.method public static values()[Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    .registers 1

    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->b:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->f([Z[Z)I

    move-result p1

    return p1
.end method

.method public f([Z[Z)I
    .registers 7

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    aget-boolean v2, p1, v1

    aget-boolean v3, p2, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v2

    if-eqz v2, :cond_14

    return v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Booleans.lexicographicalComparator()"

    return-object v0
.end method

###### Class com.google.common.primitives.Booleans.a (com.google.common.primitives.Booleans$a)
.class Lcom/google/common/primitives/Booleans$a;
.super Ljava/util/AbstractList;
.source "Booleans.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[Z

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([Z)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans$a;-><init>([ZII)V

    return-void
.end method

.method constructor <init>([ZII)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iput p2, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    iput p3, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    return-void
.end method


# virtual methods
.method public c(I)Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr v1, p1

    aget-boolean p1, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public d(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 6

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int v2, v1, p1

    aget-boolean v2, v0, v2

    add-int/2addr v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, v0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method e()[Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/common/primitives/Booleans$a;

    if-eqz v1, :cond_2e

    check-cast p1, Lcom/google/common/primitives/Booleans$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_16

    return v3

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2d

    iget-object v4, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v5, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr v5, v2

    aget-boolean v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v6, p1, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr v6, v2

    aget-boolean v5, v5, v6

    if-eq v4, v5, :cond_2a

    return v3

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    return v0

    :cond_2e
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$a;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    const/4 v1, 0x1

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Booleans;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

    move-result p1

    if-ltz p1, :cond_1a

    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->b([ZZII)I

    move-result p1

    if-ltz p1, :cond_1a

    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$a;->d(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance v0, Lcom/google/common/primitives/Booleans$a;

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/Booleans$a;-><init>([ZII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_16

    const-string v1, "[true"

    goto :goto_18

    :cond_16
    const-string v1, "[false"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    if-ge v1, v2, :cond_32

    iget-object v2, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2c

    const-string v2, ", true"

    goto :goto_2e

    :cond_2c
    const-string v2, ", false"

    :goto_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_32
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
